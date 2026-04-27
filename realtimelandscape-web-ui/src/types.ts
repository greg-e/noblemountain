// ── Shared types (mirrors src/types in backend) ────────────
// These are the domain models used across the app.

export type Month = 'jan' | 'feb' | 'mar' | 'apr' | 'may' | 'jun'
                  | 'jul' | 'aug' | 'sep' | 'oct' | 'nov' | 'dec';

export interface MonthlyValues {
  jan: number; feb: number; mar: number; apr: number; may: number; jun: number;
  jul: number; aug: number; sep: number; oct: number; nov: number; dec: number;
}

// ── Reference Data ────────────────────────────────────────────

export interface Activity {
  _id: string;
  title: string;
  activityCategory: string;
  unit: string;
  unitCategory: 'Area' | 'Linear' | 'Count' | 'Volume' | 'Other';
  unitMultiplier: number;
  productionRate: number;
  materialRate: number;
  description?: string;
  isActive: boolean;
  createdAt: string;
  updatedAt: string;
}

export interface Project {
  _id: string;
  title: string;
  projectCode: string;
  clientName?: string;
  address?: string;
  roundTrip: number;
  isActive: boolean;
  contractStatus: 'Pending' | 'Active' | 'Completed' | 'Cancelled';
  notes?: string;
  createdAt: string;
  updatedAt: string;
}

export interface Plant {
  _id: string;
  title: string;
  botanicalName?: string;
  category?: string;
  containerSize?: string;
  unitCost: number;
  isActive: boolean;
  createdAt: string;
  updatedAt: string;
}

// ── Contract ──────────────────────────────────────────────────

export type ContractStatus =
  | 'Draft'
  | 'PendingActivation'
  | 'Active'
  | 'PendingCompletion'
  | 'Completed'
  | 'Cancelled';

export interface ContractLineItem {
  _id?: string;
  activity: string;  // ObjectId
  quantity: number;
  monthlyFrequency: MonthlyValues;
  materialMarkup: number;
  // Calculated
  mh: number;
  totalFreq: number;
  totalMH: number;
  monthlyMH: MonthlyValues;
  laborPrice: number;
  materialCost: number;
  annualPrice: number;
  [key: string]: any;
}

export interface TechnicalLineItem extends ContractLineItem {
  techCrewSize: number;
  techTravelPerVisit?: string;
}

export interface ContractTotals {
  generalAnnualPrice: number;
  technicalAnnualPrice: number;
  contractPrice: number;
  contractCost: number;
  grossProfit: number;
  grossProfitPercent: number;
}

export interface VisitCalculations {
  workDayHours: number;
  siteVisits: MonthlyValues;
  averageCrew: MonthlyValues;
  mhSums?: MonthlyValues;
  generalContractHours?: number;
  totalGeneralVisits?: number;
  crewVisit?: MonthlyValues;
  percentOfDailyTravel?: MonthlyValues;
  travel?: MonthlyValues;
  monthlyTravel?: MonthlyValues;
  totalMonthlyTravel?: number;
  mhOnSitePerVisit?: MonthlyValues;
  percentMHPerMonth?: MonthlyValues;
  totalAnnualPercent?: number;
  travelCost?: number;
  travelPrice?: number;
}

export interface Contract {
  _id: string;
  contractNumber: string;
  project: string | Project;
  projectDisplayName: string;
  roundTrip: number;
  status: ContractStatus;
  generalLaborCost: number;
  generalOverheadAndProfit: number;
  generalLineItems: ContractLineItem[];
  technicalLineItems: TechnicalLineItem[];
  visitCalculations: VisitCalculations;
  contractTotals: ContractTotals;
  createdBy: string;
  updatedBy: string;
  activatedAt?: string;
  completedAt?: string;
  createdAt: string;
  updatedAt: string;
}

// ── Workorder ─────────────────────────────────────────────────

export type WorkorderStatus =
  | 'Draft'
  | 'PendingActivation'
  | 'Scheduled'
  | 'InProgress'
  | 'PendingCompletion'
  | 'Completed'
  | 'Cancelled';

export interface WorkorderLineItem {
  _id?: string;
  activity: string;  // ObjectId
  quantity: number;
  laborCostPerManHour: number;
  overheadAndProfitPerManHour: number;
  materialMarkupPercent: number;
  // Calculated
  totalLaborHours: number;
  totalMaterialCost: number;
  totalLaborCost: number;
  totalLaborPrice: number;
  totalMaterialPrice: number;
  totalPrice: number;
  [key: string]: any;
}

export interface Workorder {
  _id: string;
  workorderNumber: string;
  project: string;  // ObjectId
  contract?: string;  // ObjectId | null
  projectDisplayName: string;
  roundTrip: number;
  status: WorkorderStatus;
  workorderNotes: string;
  workDayHours: number;
  crewSize: number;
  lineItems: WorkorderLineItem[];
  totalManHours: number;
  totalVisits: number;
  totalTravelHours: number;
  travelPrice: number;
  totalWorkorderPrice: number;
  totalWorkorderCost: number;
  totalWorkorderProfit: number;
  percentProfit: number;
  createdBy: string;
  updatedBy: string;
  scheduledDate?: string;
  completedDate?: string;
  createdAt: string;
  updatedAt: string;
}

// ── API responses ─────────────────────────────────────────────

export interface ContractFinancials {
  activeCount:     number;
  activeValue:     number;
  activeProfit:    number;
  activeAvgMargin: number;
  pipelineCount:   number;
  pipelineValue:   number;
  pipelineProfit:  number;
}

export interface WorkorderFinancials {
  openCount:       number;
  openValue:       number;
  openProfit:      number;
  openManHours:    number;
  completedCount:  number;
  completedValue:  number;
  completedProfit: number;
}

export interface ApiError {
  error: string;
}

export interface ValidationError {
  errors: Array<{
    type: string;
    value: any;
    msg: string;
    param: string;
    location: string;
  }>;
}
