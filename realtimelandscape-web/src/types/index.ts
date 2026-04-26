// ============================================================
// RealTime Landscape – Core Types
// Derived from InfoPath XSD schemas (XSN form templates)
// ============================================================

// ── Master Data (from SharePoint lists) ─────────────────────

export interface PricingTableActivity {
  id: string;
  title: string;               // Activity display name
  activityCategory: string;
  unit: string;
  unitCategory: string;
  unitMultiplier: number;
  productionRate: number;      // ManHoursPerUnit
  materialRate: number;        // MaterialCostPerUnit
  description: string;
}

export interface Project {
  id: string;
  title: string;               // ProjectDisplayName
  roundTrip: number;           // Round trip travel hours
}

export interface PlantItem {
  id: string;
  title: string;
  description: string;
}

// ── Take-Off Measurement Types ───────────────────────────────

export interface AreaTakeOffRow {
  areaLength: number;
  areaWidth: number;
  areaTotal: number;           // calculated: length × width
  areaActivityTotal: number;   // calculated: sum(areaTotal) / activityMultiplier
  generalAreaActivity: string;
}

export interface LinearTakeOffRow {
  linearLength: number;
  linearQuantity: number;
  linearTotal: number;         // calculated: length × quantity
  linearActivityTotal: number; // calculated: sum(linearTotal) / activityMultiplier
  generalLinearActivity: string;
}

export interface CountTakeOffRow {
  countQuantityTotal: number;
  countActivityTotal: number;  // calculated: sum(countQuantityTotal)
  generalCountActivity: string;
}

export interface VolumeTakeOffRow {
  volumeLength: number;
  volumeWidth: number;
  depthInches: number;
  volumeTotalCF: number;       // calculated: length × width × (depthInches / 12)
  volumeActivityTotal: number; // calculated: sum(volumeTotalCF) / activityMultiplier
  generalVolumeActivity: string;
}

export type TakeOffType = 'Area' | 'Linear' | 'Count' | 'Volume';

export interface TakeOffEntry {
  takeOffType: TakeOffType;
  takeOffActivity: string;
  takeOffActivityUnit: string;
  takeOffActivityMultiplier: number;
  takeOffActivityTotal: number; // calculated
  relatedActivity: string;
  // detail sub-sections (one is populated based on takeOffType)
  areaDetail?: AreaTakeOffRow[];
  linearDetail?: LinearTakeOffRow[];
  countDetail?: CountTakeOffRow[];
  volumeDetail?: VolumeTakeOffRow[];
}

// ── Contract Form ────────────────────────────────────────────

export interface MonthlyValues {
  jan: number;
  feb: number;
  mar: number;
  apr: number;
  may: number;
  jun: number;
  jul: number;
  aug: number;
  sep: number;
  oct: number;
  nov: number;
  dec: number;
}

/** A single line item in the General or Technical pricing table */
export interface ContractLineItem {
  // User-entered
  activity: string;            // FK → PricingTableActivity.id
  quantity: number;
  monthlyFrequency: MonthlyValues;
  materialMarkup: number;

  // Looked up from PricingTableActivity
  activityDisplayName: string; // calculated
  unit: string;                // calculated
  unitCategory: string;        // calculated
  unitMultiplier: number;      // calculated

  // Calculated per-row
  mh: number;                  // quantity × productionRate
  totalFreq: number;           // sum of monthlyFrequency
  totalMH: number;             // totalFreq × mh
  monthlyMH: MonthlyValues;    // mh × each monthlyFreq

  laborPrice: number;          // laborCost + overheadAndProfit  (from parent EstimateGroup)
  materialCost: number;        // quantity × materialRate
  materialUnitPrice: number;   // materialRate × (1 + materialMarkup)
  materialAnnualCost: number;  // materialCost × totalFreq
  laborUnitPrice: number;      // laborPrice × productionRate
  unitPrice: number;           // materialUnitPrice + laborUnitPrice
  laborAnnualCost: number;     // laborUnitPrice × totalFreq   (derived)
  annualPrice: number;         // unitPrice × totalFreq         (derived)
}

/** Technical line item adds crew-size */
export interface TechnicalLineItem extends ContractLineItem {
  techCrewSize: number;
  techTravelPerVisit: string;
}

/** Monthly visit/crew/travel calculations derived from all line items */
export interface VisitCalculations {
  workDayHours: number;
  mhSums: MonthlyValues;         // sum of all line-item monthly MH
  generalContractHours: number;  // sum of all TotalMH
  siteVisits: MonthlyValues;     // user-entered visits per month
  totalGeneralVisits: number;    // sum of siteVisits
  averageCrew: MonthlyValues;    // user-entered avg crew per month
  crewVisit: MonthlyValues;      // mhSum / visits / crew
  percentOfDailyTravel: MonthlyValues; // 1 - (workDayHours - crewVisit) / workDayHours
  travel: MonthlyValues;         // percentTravel × roundTrip × crew
  monthlyTravel: MonthlyValues;  // travel × visits
  totalMonthlyTravel: number;    // sum of monthlyTravel
  mhOnSitePerVisit: MonthlyValues; // mhSum / visits
  percentMHPerMonth: MonthlyValues;
  totalAnnualPercent: number;
  travelCost: number;
  travelPrice: number;
}

export interface ContractTotals {
  generalAnnualPrice: number;
  generalAnnualLaborCost: number;
  generalAnnualMaterialCost: number;
  generalCostTotal: number;
  technicalAnnualPrice: number;
  technicalAnnualLaborCost: number;
  technicalAnnualMaterialCost: number;
  technicalCostTotal: number;
  contractPrice: number;        // general + technical annual price + travel
  contractCost: number;
  grossProfit: number;          // contractPrice - contractCost
  grossProfitPercent: number;   // grossProfit / contractPrice
}

export interface EstimateGroup {
  generalLaborCost: number;
  generalOverheadAndProfit: number;
  generalLineItems: ContractLineItem[];
  technicalLineItems: TechnicalLineItem[];
  visitCalculations: VisitCalculations;
  contractTotals: ContractTotals;    // calculated
}

export interface ContractForm {
  projectName: string;           // FK → Project.id
  projectDisplayName: string;    // calculated lookup
  projectID: string;             // calculated lookup
  roundTrip: number;             // calculated lookup
  strFilename: string;
  numID: number;
  contractID: number;
  createdDate: string;           // ISO date
  estimateGroup: EstimateGroup;
  takeOff: TakeOffEntry[];
  showActivities: string;
}

// ── Work Order Form ──────────────────────────────────────────

export interface WorkorderLineItem {
  // User-entered
  activity: string;              // FK → PricingTableActivity.id
  quantity: number;
  plantSelection: string;
  activityNotes: string;
  manualMaterialCostPerUnit: number;
  laborCostPerManHour: number;
  overheadAndProfitPerManHour: number;
  materialMarkupPercent: number;
  liveMaterialWarrantyPercent: number;
  includedWork: boolean;
  workorderDescription: string;

  // Looked up
  activityDisplayName: string;   // calculated
  description: string;           // calculated
  unit: string;                  // calculated
  manHoursPerUnit: number;       // calculated
  materialCostPerUnit: number;   // calculated

  // Calculated
  laborPricePerManHour: number;  // laborCostPerManHour + overheadAndProfitPerManHour
  totalLaborHours: number;       // quantity × manHoursPerUnit
  totalMaterialCost: number;     // (materialCostPerUnit + manualMaterialCostPerUnit) × quantity
  totalLaborCost: number;        // totalLaborHours × laborCostPerManHour
  totalLaborPrice: number;       // laborPricePerManHour × totalLaborHours
  materialMarkup: number;        // (materialCostPerUnit + manualMaterialCostPerUnit) × materialMarkupPercent
  warrantyMarkup: number;        // (materialCostPerUnit + manualMaterialCostPerUnit) × liveMaterialWarrantyPercent
  totalMaterialPrice: number;    // (materialMarkup + warrantyMarkup + costs) × quantity
  pricePerUnit: number;          // (totalMaterialPrice + totalLaborPrice) / quantity
  totalPrice: number;            // totalMaterialPrice + totalLaborPrice

  numID: number;
  strFilename: string;
  workorderID: number;
}

export interface WorkorderForm {
  project: string;               // FK → Project.id
  projectDisplayName: string;    // calculated
  projectID: string;             // calculated
  roundTrip: number;             // calculated lookup
  workorderNotes: string;
  workDayHours: number;          // default 8
  crewSize: number;

  // Calculated summary fields
  totalManHours: number;         // sum(totalLaborHours)
  averageHourlyRate: number;     // avg(laborPricePerManHour)
  priceSubtotal: number;         // sum(totalPrice)
  totalVisits: number;           // (totalManHours / workDayHours) / crewSize
  totalVisitsRoundedUp: number;  // ceiling(totalVisits)
  onsiteCrewHours: number;       // totalManHours / crewSize
  totalTravelHours: number;      // roundTrip × totalVisits × crewSize
  travelPrice: number;           // totalTravelHours × averageHourlyRate
  totalWorkorderPrice: number;   // round(priceSubtotal + travelPrice)
  totalWorkorderCost: number;    // sum(laborCost) + sum(materialCost) + travelCost
  totalWorkorderProfit: number;  // totalWorkorderPrice - totalWorkorderCost
  percentProfit: number;         // totalWorkorderProfit / totalWorkorderPrice

  lineItems: WorkorderLineItem[];
}
