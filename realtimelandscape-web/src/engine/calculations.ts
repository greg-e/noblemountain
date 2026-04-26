// ============================================================
// RealTime Landscape – Calculation Engine
//
// Translates InfoPath XSF calculatedField expressions to TS.
// All formulas are directly traceable to manifest.xsf rules.
//
// xdMath:Nz(x)  → nz(x)  : null/undefined/NaN → 0
// div           → /       : XPath integer division (used as float here)
// sum(...)      → sumOf() : sum over a repeating node set
// ============================================================

import type {
  PricingTableActivity,
  Project,
  ContractLineItem,
  TechnicalLineItem,
  ContractTotals,
  EstimateGroup,
  VisitCalculations,
  MonthlyValues,
  WorkorderLineItem,
  WorkorderForm,
  TakeOffEntry,
  AreaTakeOffRow,
  LinearTakeOffRow,
  VolumeTakeOffRow,
  CountTakeOffRow,
} from '../types';

// ── Utility helpers ──────────────────────────────────────────

/** xdMath:Nz – coerce null/undefined/NaN to 0 */
export const nz = (v: number | null | undefined): number =>
  v == null || isNaN(v) ? 0 : v;

/** Safe division – returns 0 when divisor is 0 */
export const safeDiv = (a: number, b: number): number =>
  nz(b) === 0 ? 0 : nz(a) / nz(b);

const MONTHS = ['jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec'] as const;
type Month = typeof MONTHS[number];

const emptyMonthly = (): MonthlyValues =>
  ({ jan:0, feb:0, mar:0, apr:0, may:0, jun:0, jul:0, aug:0, sep:0, oct:0, nov:0, dec:0 });

const sumMonthly = (m: MonthlyValues): number =>
  MONTHS.reduce((acc, k) => acc + nz(m[k]), 0);

const mapMonthly = (
  a: MonthlyValues,
  fn: (v: number, k: Month) => number
): MonthlyValues =>
  MONTHS.reduce((acc, k) => ({ ...acc, [k]: fn(nz(a[k]), k) }), emptyMonthly());

const sumMonthlyFields = <T>(rows: T[], field: (r: T) => MonthlyValues): MonthlyValues =>
  rows.reduce((acc, r) => {
    const m = field(r);
    return MONTHS.reduce((a, k) => ({ ...a, [k]: nz(a[k]) + nz(m[k]) }), acc);
  }, emptyMonthly());

const avg = (nums: number[]): number => {
  const valid = nums.filter(n => !isNaN(n) && n != null);
  return valid.length === 0 ? 0 : valid.reduce((a, b) => a + b, 0) / valid.length;
};

// ── Take-Off Calculations ────────────────────────────────────

/**
 * AreaTotal = AreaLength × AreaWidth
 */
export const calcAreaRow = (row: Pick<AreaTakeOffRow, 'areaLength' | 'areaWidth'>): number =>
  nz(row.areaLength) * nz(row.areaWidth);

/**
 * LinearTotal = LinearLength × LinearQuantity
 */
export const calcLinearRow = (row: Pick<LinearTakeOffRow, 'linearLength' | 'linearQuantity'>): number =>
  nz(row.linearLength) * nz(row.linearQuantity);

/**
 * VolumeTotalCF = VolumeLength × VolumeWidth × (DepthInches / 12)
 */
export const calcVolumeRow = (row: Pick<VolumeTakeOffRow, 'volumeLength' | 'volumeWidth' | 'depthInches'>): number =>
  nz(row.volumeLength) * nz(row.volumeWidth) * safeDiv(nz(row.depthInches), 12);

/**
 * ActivityTotal = sum(rowTotals) / activityMultiplier
 */
export const calcTakeOffActivityTotal = (rowTotals: number[], multiplier: number): number =>
  safeDiv(rowTotals.reduce((a, b) => a + nz(b), 0), multiplier);

/** Recalculate all derived fields on a TakeOffEntry */
export const recalcTakeOffEntry = (entry: TakeOffEntry): TakeOffEntry => {
  const result = { ...entry };
  switch (entry.takeOffType) {
    case 'Area': {
      const rows = (entry.areaDetail ?? []).map(r => ({ ...r, areaTotal: calcAreaRow(r) }));
      result.areaDetail = rows;
      result.takeOffActivityTotal = calcTakeOffActivityTotal(rows.map(r => r.areaTotal), entry.takeOffActivityMultiplier);
      break;
    }
    case 'Linear': {
      const rows = (entry.linearDetail ?? []).map(r => ({ ...r, linearTotal: calcLinearRow(r) }));
      result.linearDetail = rows;
      result.takeOffActivityTotal = calcTakeOffActivityTotal(rows.map(r => r.linearTotal), entry.takeOffActivityMultiplier);
      break;
    }
    case 'Count': {
      const rows = entry.countDetail ?? [];
      result.countDetail = rows;
      result.takeOffActivityTotal = rows.reduce((a, r) => a + nz(r.countQuantityTotal), 0);
      break;
    }
    case 'Volume': {
      const rows = (entry.volumeDetail ?? []).map(r => ({ ...r, volumeTotalCF: calcVolumeRow(r) }));
      result.volumeDetail = rows;
      result.takeOffActivityTotal = calcTakeOffActivityTotal(rows.map(r => r.volumeTotalCF), entry.takeOffActivityMultiplier);
      break;
    }
  }
  return result;
};

// ── Contract Line Item Calculations ─────────────────────────

/**
 * Recalculate all derived fields on a General ContractLineItem.
 * Requires the parent EstimateGroup's laborCost and overheadAndProfit.
 *
 * XSF sources:
 *   mh               = quantity × productionRate
 *   totalFreq        = sum(jan..dec)
 *   totalMH          = totalFreq × mh
 *   monthlyMH[m]     = mh × monthlyFreq[m]
 *   laborPrice       = generalLaborCost + generalOverheadAndProfit
 *   materialCost     = quantity × materialRate
 *   materialMarkup   = (user-entered decimal, e.g. 0.35)
 *   materialUnitPrice = materialRate × materialMarkup + materialRate
 *   materialAnnualCost = materialCost × totalFreq
 *   laborUnitPrice   = laborPrice × productionRate
 *   unitPrice        = materialUnitPrice + laborUnitPrice
 *   laborAnnualCost  = laborUnitPrice × totalFreq  (derived)
 *   annualPrice      = unitPrice × totalFreq        (derived)
 */
export const recalcContractLineItem = (
  row: ContractLineItem,
  activity: PricingTableActivity,
  generalLaborCost: number,
  generalOverheadAndProfit: number,
): ContractLineItem => {
  const productionRate = nz(activity.productionRate);
  const materialRate   = nz(activity.materialRate);

  const mh             = nz(row.quantity) * productionRate;
  const totalFreq      = sumMonthly(row.monthlyFrequency);
  const totalMH        = totalFreq * mh;
  const monthlyMH      = mapMonthly(row.monthlyFrequency, (freq) => mh * freq);
  const laborPrice     = nz(generalLaborCost) + nz(generalOverheadAndProfit);
  const materialCost   = nz(row.quantity) * materialRate;
  const materialUnitPrice = materialRate * nz(row.materialMarkup) + materialRate;
  const materialAnnualCost = materialCost * totalFreq;
  const qty            = nz(row.quantity);
  const laborUnitPrice = laborPrice * productionRate;
  const unitPrice      = materialUnitPrice + laborUnitPrice;
  const laborAnnualCost = laborUnitPrice * qty * totalFreq;
  const annualPrice    = unitPrice * qty * totalFreq;

  return {
    ...row,
    activityDisplayName: activity.title,
    unit:                activity.unit,
    unitCategory:        activity.unitCategory,
    unitMultiplier:      activity.unitMultiplier,
    mh,
    totalFreq,
    totalMH,
    monthlyMH,
    laborPrice,
    materialCost,
    materialUnitPrice,
    materialAnnualCost,
    laborUnitPrice,
    unitPrice,
    laborAnnualCost,
    annualPrice,
  };
};

// ── Visit Calculations ───────────────────────────────────────

/**
 * Derive all visit/travel/crew calculations from line items.
 *
 * XSF sources (GeneralVisitCalculations):
 *   mhSums[m]             = round(sum(lineItems[*].monthlyMH[m]))
 *   generalContractHours  = sum(lineItems[*].totalMH)
 *   totalGeneralVisits    = sum(siteVisits[m])
 *   crewVisit[m]          = mhSum[m] / visits[m] / crew[m]
 *   percentTravel[m]      = 1 - (workDayHours - crewVisit[m]) / workDayHours
 *   travel[m]             = percentTravel[m] × roundTrip × crew[m]
 *   monthlyTravel[m]      = travel[m] × visits[m]
 *   totalMonthlyTravel    = sum(monthlyTravel)
 *   mhOnSitePerVisit[m]   = mhSum[m] / visits[m]
 *   percentMHPerMonth[m]  = mhSum[m] / generalContractHours
 *   totalAnnualPercent    = sum(percentMHPerMonth)
 *   travelCost (external caller sets this)
 */
export const recalcVisitCalculations = (
  lineItems: ContractLineItem[],
  current: VisitCalculations,
  roundTrip: number,
): VisitCalculations => {
  const mhSumsRaw = sumMonthlyFields(lineItems, r => r.monthlyMH);
  const mhSums    = mapMonthly(mhSumsRaw, v => Math.round(v));
  const generalContractHours = lineItems.reduce((a, r) => a + nz(r.totalMH), 0);
  const totalGeneralVisits   = sumMonthly(current.siteVisits);

  const crewVisit = mapMonthly(current.averageCrew, (crew, m) =>
    safeDiv(safeDiv(nz(mhSums[m]), nz(current.siteVisits[m])), crew)
  );

  const percentOfDailyTravel = mapMonthly(crewVisit, (cv) =>
    1 - safeDiv(nz(current.workDayHours) - cv, nz(current.workDayHours))
  );

  const travel = mapMonthly(current.averageCrew, (crew, m) =>
    nz(percentOfDailyTravel[m]) * nz(roundTrip) * crew
  );

  const monthlyTravel = mapMonthly(current.siteVisits, (visits, m) =>
    nz(travel[m]) * visits
  );

  const totalMonthlyTravel = sumMonthly(monthlyTravel);

  const mhOnSitePerVisit = mapMonthly(current.siteVisits, (visits, m) =>
    safeDiv(nz(mhSums[m]), visits)
  );

  const percentMHPerMonth = mapMonthly(mhSums, mhSum =>
    safeDiv(mhSum, generalContractHours)
  );

  const totalAnnualPercent = sumMonthly(percentMHPerMonth);

  return {
    ...current,
    mhSums,
    generalContractHours,
    totalGeneralVisits,
    crewVisit,
    percentOfDailyTravel,
    travel,
    monthlyTravel,
    totalMonthlyTravel,
    mhOnSitePerVisit,
    percentMHPerMonth,
    totalAnnualPercent,
  };
};

// ── Contract Totals ──────────────────────────────────────────

/**
 * Aggregate line-item totals into ContractTotals.
 * The contract price includes both general and technical sections plus travel.
 */
export const recalcContractTotals = (
  generalItems: ContractLineItem[],
  technicalItems: ContractLineItem[],
  travelPrice: number,
): ContractTotals => {
  const generalAnnualPrice     = generalItems.reduce((a, r) => a + nz(r.annualPrice), 0);
  const generalAnnualLaborCost = generalItems.reduce((a, r) => a + nz(r.laborAnnualCost), 0);
  const generalAnnualMaterialCost = generalItems.reduce((a, r) => a + nz(r.materialAnnualCost), 0);
  const generalCostTotal       = generalAnnualLaborCost + generalAnnualMaterialCost;

  const technicalAnnualPrice      = technicalItems.reduce((a, r) => a + nz(r.annualPrice), 0);
  const technicalAnnualLaborCost  = technicalItems.reduce((a, r) => a + nz(r.laborAnnualCost), 0);
  const technicalAnnualMaterialCost = technicalItems.reduce((a, r) => a + nz(r.materialAnnualCost), 0);
  const technicalCostTotal        = technicalAnnualLaborCost + technicalAnnualMaterialCost;

  const contractPrice   = generalAnnualPrice + technicalAnnualPrice + nz(travelPrice);
  const contractCost    = generalCostTotal + technicalCostTotal;
  const grossProfit     = contractPrice - contractCost;
  const grossProfitPercent = safeDiv(grossProfit, contractPrice);

  return {
    generalAnnualPrice,
    generalAnnualLaborCost,
    generalAnnualMaterialCost,
    generalCostTotal,
    technicalAnnualPrice,
    technicalAnnualLaborCost,
    technicalAnnualMaterialCost,
    technicalCostTotal,
    contractPrice,
    contractCost,
    grossProfit,
    grossProfitPercent,
  };
};

// ── Full EstimateGroup Recalculation ─────────────────────────

/**
 * Recalculate all derived fields in an EstimateGroup.
 * Call this whenever any user-editable field changes.
 *
 * @param group       - current EstimateGroup state
 * @param activities  - master Pricing Table data
 * @param project     - selected project (for roundTrip)
 */
export const recalcEstimateGroup = (
  group: EstimateGroup,
  activities: Map<string, PricingTableActivity>,
  project: Project | null,
): EstimateGroup => {
  const roundTrip = nz(project?.roundTrip);

  // Recalc general line items
  const generalItems = group.generalLineItems.map(row => {
    const activity = activities.get(row.activity);
    if (!activity) return row;
    return recalcContractLineItem(row, activity, group.generalLaborCost, group.generalOverheadAndProfit);
  });

  // Recalc technical line items (same formula set, different parent cost fields are in TechnicalLineItem)
  const technicalItems = group.technicalLineItems.map(row => {
    const activity = activities.get(row.activity);
    if (!activity) return row;
    // Technical items store their own crew-specific overrides;
    // we reuse recalcContractLineItem for the shared formulas
    return recalcContractLineItem(row, activity, group.generalLaborCost, group.generalOverheadAndProfit) as TechnicalLineItem;
  });

  // Recalc visit calculations from updated general items
  const visitCalcs = recalcVisitCalculations(generalItems, group.visitCalculations, roundTrip);

  // Contract totals
  const contractTotals = recalcContractTotals(
    generalItems,
    technicalItems,
    nz(visitCalcs.travelPrice),
  );

  return {
    ...group,
    generalLineItems: generalItems,
    technicalLineItems: technicalItems,
    visitCalculations: visitCalcs,
    contractTotals,
  };
};

// ── Work Order Line Item Calculations ────────────────────────

/**
 * Recalculate all derived fields on a WorkorderLineItem.
 *
 * XSF sources (Workorder Form manifest.xsf):
 *   laborPricePerManHour = laborCostPerManHour + overheadAndProfitPerManHour
 *   totalLaborHours      = quantity × manHoursPerUnit
 *   totalMaterialCost    = (materialCostPerUnit + manualMaterialCostPerUnit) × quantity
 *   totalLaborCost       = totalLaborHours × laborCostPerManHour
 *   totalLaborPrice      = laborPricePerManHour × totalLaborHours
 *   materialMarkup       = (materialCostPerUnit + manualMaterialCostPerUnit) × materialMarkupPercent
 *   warrantyMarkup       = (materialCostPerUnit + manualMaterialCostPerUnit) × liveMaterialWarrantyPercent
 *   totalMaterialPrice   = (materialMarkup + warrantyMarkup + costs) × quantity
 *   pricePerUnit         = (totalMaterialPrice + totalLaborPrice) / quantity
 *   totalPrice           = totalMaterialPrice + totalLaborPrice
 */
export const recalcWorkorderLineItem = (
  row: WorkorderLineItem,
  activity: PricingTableActivity,
): WorkorderLineItem => {
  const matCostBase = nz(activity.materialRate) + nz(row.manualMaterialCostPerUnit);

  const laborPricePerManHour = nz(row.laborCostPerManHour) + nz(row.overheadAndProfitPerManHour);
  const totalLaborHours      = nz(row.quantity) * nz(activity.productionRate);
  const totalMaterialCost    = matCostBase * nz(row.quantity);
  const totalLaborCost       = totalLaborHours * nz(row.laborCostPerManHour);
  const totalLaborPrice      = laborPricePerManHour * totalLaborHours;
  const materialMarkup       = matCostBase * nz(row.materialMarkupPercent);
  const warrantyMarkup       = matCostBase * nz(row.liveMaterialWarrantyPercent);
  const totalMaterialPrice   = (materialMarkup + warrantyMarkup + matCostBase) * nz(row.quantity);
  const pricePerUnit         = safeDiv(totalMaterialPrice + totalLaborPrice, nz(row.quantity));
  const totalPrice           = totalMaterialPrice + totalLaborPrice;

  return {
    ...row,
    activityDisplayName:  activity.title,
    description:          activity.description,
    unit:                 activity.unit,
    manHoursPerUnit:      activity.productionRate,
    materialCostPerUnit:  activity.materialRate,
    laborPricePerManHour,
    totalLaborHours,
    totalMaterialCost,
    totalLaborCost,
    totalLaborPrice,
    materialMarkup,
    warrantyMarkup,
    totalMaterialPrice,
    pricePerUnit,
    totalPrice,
  };
};

// ── Full Work Order Recalculation ────────────────────────────

/**
 * Recalculate all derived summary fields on a WorkorderForm.
 *
 * XSF sources:
 *   totalManHours      = sum(totalLaborHours)
 *   averageHourlyRate  = avg(laborPricePerManHour)
 *   priceSubtotal      = sum(totalPrice)
 *   totalVisits        = (totalManHours / workDayHours) / crewSize
 *   totalVisitsRoundedUp = ceiling(totalVisits)
 *   onsiteCrewHours    = totalManHours / crewSize
 *   totalTravelHours   = roundTrip × totalVisits × crewSize
 *   travelPrice        = totalTravelHours × averageHourlyRate
 *   totalWorkorderPrice = round(priceSubtotal + travelPrice)
 *   totalWorkorderCost  = sum(laborCost) + sum(materialCost) + (travelHours × avg(laborCostPerManHour))
 *   totalWorkorderProfit = price - cost
 *   percentProfit       = profit / price
 */
export const recalcWorkorder = (
  form: WorkorderForm,
  activities: Map<string, PricingTableActivity>,
  project: Project | null,
): WorkorderForm => {
  const roundTrip = nz(project?.roundTrip);

  // Recalc each line item
  const lineItems = form.lineItems.map(row => {
    const activity = activities.get(row.activity);
    if (!activity) return row;
    return recalcWorkorderLineItem(row, activity);
  });

  const totalManHours      = lineItems.reduce((a, r) => a + nz(r.totalLaborHours), 0);
  const averageHourlyRate  = avg(lineItems.map(r => r.laborPricePerManHour));
  const priceSubtotal      = lineItems.reduce((a, r) => a + nz(r.totalPrice), 0);
  const totalVisits        = safeDiv(safeDiv(totalManHours, nz(form.workDayHours)), nz(form.crewSize));
  const totalVisitsRoundedUp = Math.ceil(totalVisits);
  const onsiteCrewHours    = safeDiv(totalManHours, nz(form.crewSize));
  const totalTravelHours   = roundTrip * totalVisits * nz(form.crewSize);
  const travelPrice        = totalTravelHours * averageHourlyRate;
  const totalWorkorderPrice = Math.round(priceSubtotal + travelPrice);

  const laborCostSum    = lineItems.reduce((a, r) => a + nz(r.totalLaborCost), 0);
  const materialCostSum = lineItems.reduce((a, r) => a + nz(r.totalMaterialCost), 0);
  const avgLaborCost    = avg(lineItems.map(r => r.laborCostPerManHour));
  const travelCost      = totalTravelHours * avgLaborCost;
  const totalWorkorderCost   = laborCostSum + materialCostSum + travelCost;
  const totalWorkorderProfit = totalWorkorderPrice - totalWorkorderCost;
  const percentProfit        = safeDiv(totalWorkorderProfit, totalWorkorderPrice);

  return {
    ...form,
    projectDisplayName: project?.title ?? form.projectDisplayName,
    roundTrip,
    lineItems,
    totalManHours,
    averageHourlyRate,
    priceSubtotal,
    totalVisits,
    totalVisitsRoundedUp,
    onsiteCrewHours,
    totalTravelHours,
    travelPrice,
    totalWorkorderPrice,
    totalWorkorderCost,
    totalWorkorderProfit,
    percentProfit,
  };
};
