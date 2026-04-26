// ============================================================
// RealTime Landscape – Calculation Engine Unit Tests
//
// Test values are derived from:
//  - sampledata.xml defaults (e.g., LaborCostPerManHour = 12.50)
//  - XSF formula expressions in manifest.xsf
//  - Manual verification of formula chains
// ============================================================

import {
  nz,
  safeDiv,
  calcAreaRow,
  calcLinearRow,
  calcVolumeRow,
  calcTakeOffActivityTotal,
  recalcTakeOffEntry,
  recalcContractLineItem,
  recalcContractTotals,
  recalcVisitCalculations,
  recalcWorkorderLineItem,
  recalcWorkorder,
} from '../calculations';

import type {
  PricingTableActivity,
  Project,
  ContractLineItem,
  WorkorderLineItem,
  WorkorderForm,
  VisitCalculations,
  TakeOffEntry,
} from '../../types';

// ── Test Fixtures ────────────────────────────────────────────

const mockActivity: PricingTableActivity = {
  id: '101',
  title: 'Mowing – Turf',
  activityCategory: 'General',
  unit: 'MSF',
  unitCategory: 'Area',
  unitMultiplier: 1000,
  productionRate: 0.1,   // 0.1 MH per MSF
  materialRate: 2.0,     // $2.00 per MSF material cost
  description: 'Mow turf areas',
};

const mockProject: Project = {
  id: '1',
  title: 'Acme Corporate Campus',
  roundTrip: 1.5,  // 1.5 hours round trip travel
};

const emptyMonthly = () =>
  ({ jan:0, feb:0, mar:0, apr:0, may:0, jun:0, jul:0, aug:0, sep:0, oct:0, nov:0, dec:0 });

// ── Utility Tests ────────────────────────────────────────────

describe('nz()', () => {
  it('returns 0 for null', () => expect(nz(null)).toBe(0));
  it('returns 0 for undefined', () => expect(nz(undefined)).toBe(0));
  it('returns 0 for NaN', () => expect(nz(NaN)).toBe(0));
  it('returns the value for valid numbers', () => expect(nz(42)).toBe(42));
  it('returns 0 for 0', () => expect(nz(0)).toBe(0));
  it('returns negative values unchanged', () => expect(nz(-5)).toBe(-5));
});

describe('safeDiv()', () => {
  it('divides normally', () => expect(safeDiv(10, 4)).toBe(2.5));
  it('returns 0 when divisor is 0', () => expect(safeDiv(10, 0)).toBe(0));
  it('returns 0 when both are 0', () => expect(safeDiv(0, 0)).toBe(0));
  it('handles null inputs via nz', () => expect(safeDiv(null as any, 2)).toBe(0));
});

// ── Take-Off Calculations ────────────────────────────────────

describe('calcAreaRow()', () => {
  it('multiplies length × width', () =>
    expect(calcAreaRow({ areaLength: 50, areaWidth: 20 })).toBe(1000));
  it('returns 0 when either dimension is 0', () =>
    expect(calcAreaRow({ areaLength: 0, areaWidth: 20 })).toBe(0));
  it('handles null dimensions', () =>
    expect(calcAreaRow({ areaLength: null as any, areaWidth: 20 })).toBe(0));
});

describe('calcLinearRow()', () => {
  it('multiplies length × quantity', () =>
    expect(calcLinearRow({ linearLength: 100, linearQuantity: 3 })).toBe(300));
});

describe('calcVolumeRow()', () => {
  // VolumeLength × VolumeWidth × (DepthInches / 12)
  it('calculates cubic feet correctly', () =>
    expect(calcVolumeRow({ volumeLength: 10, volumeWidth: 10, depthInches: 6 }))
      .toBeCloseTo(50)); // 10 × 10 × 0.5
  it('returns 0 when depth is 0', () =>
    expect(calcVolumeRow({ volumeLength: 10, volumeWidth: 10, depthInches: 0 })).toBe(0));
});

describe('calcTakeOffActivityTotal()', () => {
  it('sums and divides by multiplier', () =>
    expect(calcTakeOffActivityTotal([1000, 2000, 500], 1000)).toBeCloseTo(3.5));
  it('returns 0 when multiplier is 0', () =>
    expect(calcTakeOffActivityTotal([100, 200], 0)).toBe(0));
});

describe('recalcTakeOffEntry() – Area', () => {
  const entry: TakeOffEntry = {
    takeOffType: 'Area',
    takeOffActivity: 'Mowing',
    takeOffActivityUnit: 'MSF',
    takeOffActivityMultiplier: 1000,
    takeOffActivityTotal: 0,
    relatedActivity: 'Mowing – Turf',
    areaDetail: [
      { areaLength: 100, areaWidth: 50, areaTotal: 0, areaActivityTotal: 0, generalAreaActivity: 'Mowing' },
      { areaLength: 80,  areaWidth: 25, areaTotal: 0, areaActivityTotal: 0, generalAreaActivity: 'Mowing' },
    ],
  };
  const result = recalcTakeOffEntry(entry);
  // 100×50 = 5000, 80×25 = 2000 → total = 7000 / 1000 = 7 MSF
  it('calculates area totals per row', () => {
    expect(result.areaDetail![0].areaTotal).toBe(5000);
    expect(result.areaDetail![1].areaTotal).toBe(2000);
  });
  it('calculates activity total', () =>
    expect(result.takeOffActivityTotal).toBeCloseTo(7));
});

// ── Contract Line Item Calculations ─────────────────────────

describe('recalcContractLineItem()', () => {
  const baseRow: ContractLineItem = {
    activity: '101',
    quantity: 50,       // 50 MSF
    monthlyFrequency: { jan:1, feb:1, mar:1, apr:1, may:2, jun:2, jul:2, aug:2, sep:1, oct:1, nov:1, dec:1 },
    materialMarkup: 0.35,
    // calculated fields – initial values irrelevant
    activityDisplayName: '', unit: '', unitCategory: '', unitMultiplier: 1,
    mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: emptyMonthly(),
    laborPrice: 0, materialCost: 0, materialUnitPrice: 0, materialAnnualCost: 0,
    laborUnitPrice: 0, unitPrice: 0, laborAnnualCost: 0, annualPrice: 0,
  };

  const result = recalcContractLineItem(baseRow, mockActivity, 25, 12.50);
  // mh               = quantity × productionRate       = 50 × 0.1   = 5
  // totalFreq        = sum(monthlyFrequency)            = 1+1+1+1+2+2+2+2+1+1+1+1 = 16
  // totalMH          = totalFreq × mh                  = 16 × 5     = 80
  // laborPrice       = generalLaborCost + overhead      = 25 + 12.50 = 37.50
  // materialCost     = quantity × materialRate          = 50 × 2.00  = 100
  // materialUnitPrice = materialRate × markup + rate   = 2.00 × 0.35 + 2.00 = 2.70
  // laborUnitPrice   = laborPrice × productionRate     = 37.50 × 0.1 = 3.75
  // unitPrice        = materialUnitPrice + laborUnitPrice = 2.70 + 3.75 = 6.45
  // materialAnnualCost = materialCost × totalFreq      = 100 × 16   = 1600
  // laborAnnualCost  = laborUnitPrice × quantity × totalFreq = 3.75 × 50 × 16 = 3000
  // annualPrice      = unitPrice × quantity × totalFreq     = 6.45 × 50 × 16 = 5160

  it('calculates mh = quantity × productionRate', () => expect(result.mh).toBe(5));
  it('calculates totalFreq', () => expect(result.totalFreq).toBe(16));
  it('calculates totalMH = totalFreq × mh', () => expect(result.totalMH).toBe(80));
  it('calculates laborPrice = laborCost + overhead', () => expect(result.laborPrice).toBe(37.5));
  it('calculates materialCost = quantity × materialRate', () => expect(result.materialCost).toBe(100));
  it('calculates materialUnitPrice = rate × markup + rate', () => expect(result.materialUnitPrice).toBeCloseTo(2.70));
  it('calculates laborUnitPrice = laborPrice × productionRate', () => expect(result.laborUnitPrice).toBeCloseTo(3.75));
  it('calculates unitPrice = materialUnitPrice + laborUnitPrice', () => expect(result.unitPrice).toBeCloseTo(6.45));
  it('calculates materialAnnualCost = materialCost × totalFreq', () => expect(result.materialAnnualCost).toBe(1600));
  it('calculates laborAnnualCost = laborUnitPrice × quantity × totalFreq', () => expect(result.laborAnnualCost).toBeCloseTo(3000));
  it('calculates annualPrice = unitPrice × quantity × totalFreq', () => expect(result.annualPrice).toBeCloseTo(5160));

  it('calculates monthlyMH[jan] = mh × janFreq', () => expect(result.monthlyMH.jan).toBe(5));
  it('calculates monthlyMH[may] = mh × mayFreq (2)', () => expect(result.monthlyMH.may).toBe(10));
});

// ── Contract Totals ──────────────────────────────────────────

describe('recalcContractTotals()', () => {
  // Minimal single-line scenario
  const generalItem = {
    annualPrice: 1000,
    laborAnnualCost: 400,
    materialAnnualCost: 200,
  } as ContractLineItem;

  const techItem = {
    annualPrice: 500,
    laborAnnualCost: 200,
    materialAnnualCost: 100,
  } as ContractLineItem;

  const totals = recalcContractTotals([generalItem], [techItem], 150);

  it('sums generalAnnualPrice', () => expect(totals.generalAnnualPrice).toBe(1000));
  it('sums technicalAnnualPrice', () => expect(totals.technicalAnnualPrice).toBe(500));
  it('contractPrice = gen + tech + travel', () => expect(totals.contractPrice).toBe(1650));
  it('contractCost = all labor + material costs', () => expect(totals.contractCost).toBe(900));
  it('grossProfit = price - cost', () => expect(totals.grossProfit).toBe(750));
  it('grossProfitPercent = profit / price', () =>
    expect(totals.grossProfitPercent).toBeCloseTo(750 / 1650));
});

// ── Visit Calculations ───────────────────────────────────────

describe('recalcVisitCalculations()', () => {
  // One line item: 10 MH in January, nothing else.
  // After recalcContractLineItem the item would have totalMH=10, monthlyMH.jan=10.
  const janItem = {
    totalMH: 10,
    monthlyMH: { jan: 10, feb: 0, mar: 0, apr: 0, may: 0, jun: 0,
                  jul:  0, aug: 0, sep: 0, oct: 0, nov: 0, dec: 0 },
  } as ContractLineItem;

  const allTwoCrew = () =>
    ({ jan:2, feb:2, mar:2, apr:2, may:2, jun:2, jul:2, aug:2, sep:2, oct:2, nov:2, dec:2 });

  const current: VisitCalculations = {
    workDayHours:          8,
    siteVisits:            { jan:2, feb:0, mar:0, apr:0, may:0, jun:0,
                             jul:0, aug:0, sep:0, oct:0, nov:0, dec:0 },
    averageCrew:           allTwoCrew(),
    // calculated – will be overwritten
    mhSums:                emptyMonthly(),
    generalContractHours:  0,
    totalGeneralVisits:    0,
    crewVisit:             emptyMonthly(),
    percentOfDailyTravel:  emptyMonthly(),
    travel:                emptyMonthly(),
    monthlyTravel:         emptyMonthly(),
    totalMonthlyTravel:    0,
    mhOnSitePerVisit:      emptyMonthly(),
    percentMHPerMonth:     emptyMonthly(),
    totalAnnualPercent:    0,
    travelCost:            0,
    travelPrice:           0,
  };

  const result = recalcVisitCalculations([janItem], current, 1.0);
  // mhSums.jan         = round(10) = 10
  // generalContractHours = 10
  // totalGeneralVisits = 2
  // crewVisit.jan      = (10 / 2) / 2 = 2.5 hrs/person
  // mhOnSitePerVisit.jan = 10 / 2 = 5
  // percentMHPerMonth.jan = 10 / 10 = 1.0
  // totalAnnualPercent = 1.0

  it('sums mhSums from line item monthlyMH', () =>
    expect(result.mhSums.jan).toBe(10));
  it('zero months stay zero in mhSums', () =>
    expect(result.mhSums.feb).toBe(0));
  it('calculates generalContractHours = sum of totalMH', () =>
    expect(result.generalContractHours).toBe(10));
  it('calculates totalGeneralVisits = sum of siteVisits', () =>
    expect(result.totalGeneralVisits).toBe(2));
  it('calculates crewVisit = mhSum / visits / crew', () =>
    expect(result.crewVisit.jan).toBeCloseTo(2.5));
  it('calculates mhOnSitePerVisit = mhSum / visits', () =>
    expect(result.mhOnSitePerVisit.jan).toBeCloseTo(5));
  it('calculates percentMHPerMonth', () =>
    expect(result.percentMHPerMonth.jan).toBeCloseTo(1.0));
  it('totalAnnualPercent = 1.0 for single active month', () =>
    expect(result.totalAnnualPercent).toBeCloseTo(1.0));
  it('preserves user-entered workDayHours', () =>
    expect(result.workDayHours).toBe(8));
  it('preserves travelCost (set by external caller)', () =>
    expect(result.travelCost).toBe(0));
});

// ── Workorder Line Item ──────────────────────────────────────

describe('recalcWorkorderLineItem()', () => {
  // Default values from sampledata.xml: LaborCostPerManHour = 12.50, Overhead = 12.50, Markup = 0.35
  const row: WorkorderLineItem = {
    activity: '101',
    quantity: 20,
    plantSelection: '',
    activityNotes: '',
    manualMaterialCostPerUnit: 0,
    laborCostPerManHour: 12.50,
    overheadAndProfitPerManHour: 12.50,
    materialMarkupPercent: 0.35,
    liveMaterialWarrantyPercent: 0.05,
    includedWork: false,
    workorderDescription: '',
    // calculated – initial values irrelevant
    activityDisplayName: '', description: '', unit: '', manHoursPerUnit: 0,
    materialCostPerUnit: 0, laborPricePerManHour: 0, totalLaborHours: 0,
    totalMaterialCost: 0, totalLaborCost: 0, totalLaborPrice: 0,
    materialMarkup: 0, warrantyMarkup: 0, totalMaterialPrice: 0,
    pricePerUnit: 0, totalPrice: 0, numID: 0, strFilename: '', workorderID: 0,
  };

  const result = recalcWorkorderLineItem(row, mockActivity);
  // laborPricePerManHour = 12.50 + 12.50 = 25.00
  // totalLaborHours = 20 × 0.1 = 2
  // totalMaterialCost = 2.00 × 20 = 40
  // totalLaborCost = 2 × 12.50 = 25
  // totalLaborPrice = 25 × 2 = 50
  // materialMarkup = 2.00 × 0.35 = 0.70 per unit → × 20... wait, formula: matCostBase × qty × markupPct
  // matCostBase = 2.00 + 0 = 2.00
  // materialMarkup = 2.00 × 0.35 = 0.70  (per-unit amount)
  // warrantyMarkup = 2.00 × 0.05 = 0.10
  // totalMaterialPrice = (0.70 + 0.10 + 2.00) × 20 = 2.80 × 20 = 56
  // pricePerUnit = (56 + 50) / 20 = 5.30
  // totalPrice = 56 + 50 = 106

  it('laborPricePerManHour = laborCost + overhead', () =>
    expect(result.laborPricePerManHour).toBe(25));
  it('totalLaborHours = quantity × productionRate', () =>
    expect(result.totalLaborHours).toBeCloseTo(2));
  it('totalLaborCost = totalLaborHours × laborCostPerManHour', () =>
    expect(result.totalLaborCost).toBe(25));
  it('totalLaborPrice = laborPricePerManHour × totalLaborHours', () =>
    expect(result.totalLaborPrice).toBe(50));
  it('materialMarkup = matCostBase × markupPercent', () =>
    expect(result.materialMarkup).toBeCloseTo(0.70));
  it('totalMaterialPrice', () => expect(result.totalMaterialPrice).toBeCloseTo(56));
  it('totalPrice = totalMaterialPrice + totalLaborPrice', () =>
    expect(result.totalPrice).toBeCloseTo(106));
  it('pricePerUnit', () => expect(result.pricePerUnit).toBeCloseTo(5.30));
});

// ── Full Work Order ──────────────────────────────────────────

describe('recalcWorkorder()', () => {
  const baseLineItem: WorkorderLineItem = {
    activity: '101',
    quantity: 20,
    plantSelection: '',
    activityNotes: '',
    manualMaterialCostPerUnit: 0,
    laborCostPerManHour: 12.50,
    overheadAndProfitPerManHour: 12.50,
    materialMarkupPercent: 0.35,
    liveMaterialWarrantyPercent: 0.05,
    includedWork: false,
    workorderDescription: '',
    activityDisplayName: '', description: '', unit: '', manHoursPerUnit: 0,
    materialCostPerUnit: 0, laborPricePerManHour: 0, totalLaborHours: 0,
    totalMaterialCost: 0, totalLaborCost: 0, totalLaborPrice: 0,
    materialMarkup: 0, warrantyMarkup: 0, totalMaterialPrice: 0,
    pricePerUnit: 0, totalPrice: 0, numID: 0, strFilename: '', workorderID: 0,
  };

  const form: WorkorderForm = {
    project: '1',
    projectDisplayName: '',
    projectID: '',
    roundTrip: 0,
    workorderNotes: '',
    workDayHours: 8,
    crewSize: 2,
    lineItems: [baseLineItem],
    totalManHours: 0, averageHourlyRate: 0, priceSubtotal: 0,
    totalVisits: 0, totalVisitsRoundedUp: 0, onsiteCrewHours: 0,
    totalTravelHours: 0, travelPrice: 0, totalWorkorderPrice: 0,
    totalWorkorderCost: 0, totalWorkorderProfit: 0, percentProfit: 0,
  };

  const activities = new Map([['101', mockActivity]]);
  const result = recalcWorkorder(form, activities, mockProject);
  // totalManHours = 2 (from single line item)
  // totalVisits = (2 / 8) / 2 = 0.125
  // totalVisitsRoundedUp = 1
  // totalTravelHours = 1.5 × 0.125 × 2 = 0.375
  // travelPrice = 0.375 × 25 = 9.375
  // totalWorkorderPrice = round(106 + 9.375) = 115

  it('calculates totalManHours from line items', () =>
    expect(result.totalManHours).toBeCloseTo(2));
  it('calculates totalVisits', () =>
    expect(result.totalVisits).toBeCloseTo(0.125));
  it('calculates totalVisitsRoundedUp', () =>
    expect(result.totalVisitsRoundedUp).toBe(1));
  it('calculates totalTravelHours = roundTrip × visits × crew', () =>
    expect(result.totalTravelHours).toBeCloseTo(0.375));
  it('calculates totalWorkorderPrice rounded to whole dollar', () =>
    expect(result.totalWorkorderPrice).toBe(115));
  it('calculates totalWorkorderProfit', () =>
    expect(result.totalWorkorderProfit).toBeGreaterThan(0));
  it('sets projectDisplayName from project', () =>
    expect(result.projectDisplayName).toBe('Acme Corporate Campus'));
  it('sets roundTrip from project', () =>
    expect(result.roundTrip).toBe(1.5));
});
