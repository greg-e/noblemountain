import type {
  Activity, Project, Plant, Contract, Workorder,
  MonthlyValues, ContractStatus, WorkorderStatus,
} from '../types';

export const zeroMonths = (): MonthlyValues => ({
  jan: 0, feb: 0, mar: 0, apr: 0, may: 0, jun: 0,
  jul: 0, aug: 0, sep: 0, oct: 0, nov: 0, dec: 0,
});

export const mockActivity: Activity = {
  _id: 'act-1',
  title: 'Lawn Mowing',
  activityCategory: 'Mowing',
  unit: 'sq ft',
  unitCategory: 'Area',
  unitMultiplier: 1,
  productionRate: 0.1,
  materialRate: 0.05,
  description: 'Standard mowing service',
  isActive: true,
  createdAt: '2024-01-01T00:00:00Z',
  updatedAt: '2024-01-01T00:00:00Z',
};

export const mockActivity2: Activity = {
  _id: 'act-2',
  title: 'Hedge Trimming',
  activityCategory: 'Trimming',
  unit: 'linear ft',
  unitCategory: 'Linear',
  unitMultiplier: 1,
  productionRate: 0.05,
  materialRate: 0.02,
  isActive: true,
  createdAt: '2024-01-01T00:00:00Z',
  updatedAt: '2024-01-01T00:00:00Z',
};

export const mockProject: Project = {
  _id: 'proj-1',
  title: 'Downtown Office',
  projectCode: 'DOW-001',
  clientName: 'Acme Corp',
  address: '123 Main St',
  roundTrip: 1.5,
  isActive: true,
  contractStatus: 'Active',
  createdAt: '2024-01-01T00:00:00Z',
  updatedAt: '2024-01-01T00:00:00Z',
};

export const mockProject2: Project = {
  _id: 'proj-2',
  title: 'North Campus',
  projectCode: 'NOR-002',
  roundTrip: 2.0,
  isActive: true,
  contractStatus: 'Pending',
  createdAt: '2024-01-01T00:00:00Z',
  updatedAt: '2024-01-01T00:00:00Z',
};

export const mockPlant: Plant = {
  _id: 'plant-1',
  title: 'Japanese Maple',
  botanicalName: 'Acer palmatum',
  category: 'Tree',
  containerSize: '15 gal',
  unitCost: 89.99,
  isActive: true,
  createdAt: '2024-01-01T00:00:00Z',
  updatedAt: '2024-01-01T00:00:00Z',
};

export const mockContract = (overrides?: Partial<Contract>): Contract => ({
  _id: 'con-1',
  contractNumber: 'CON-2024-001',
  project: 'proj-1',
  projectDisplayName: 'Downtown Office',
  roundTrip: 1.5,
  status: 'Draft' as ContractStatus,
  generalLaborCost: 45,
  generalOverheadAndProfit: 0.35,
  generalLineItems: [],
  technicalLineItems: [],
  visitCalculations: {
    workDayHours: 8,
    siteVisits: zeroMonths(),
    averageCrew: zeroMonths(),
  },
  contractTotals: {
    generalAnnualPrice: 12000,
    technicalAnnualPrice: 3000,
    contractPrice: 15000,
    contractCost: 10000,
    grossProfit: 5000,
    grossProfitPercent: 0.333,
  },
  createdBy: 'test',
  updatedBy: 'test',
  createdAt: '2024-01-01T00:00:00Z',
  updatedAt: '2024-01-15T00:00:00Z',
  ...overrides,
});

export const mockWorkorder = (overrides?: Partial<Workorder>): Workorder => ({
  _id: 'wo-1',
  workorderNumber: 'WO-2024-001',
  project: 'proj-1',
  projectDisplayName: 'Downtown Office',
  roundTrip: 1.5,
  status: 'Draft' as WorkorderStatus,
  workorderNotes: 'Test notes',
  workDayHours: 8,
  crewSize: 2,
  lineItems: [],
  totalManHours: 16,
  totalVisits: 1,
  totalTravelHours: 3,
  travelPrice: 180,
  totalWorkorderPrice: 1680,
  totalWorkorderCost: 1100,
  totalWorkorderProfit: 580,
  percentProfit: 0.345,
  createdBy: 'test',
  updatedBy: 'test',
  createdAt: '2024-01-01T00:00:00Z',
  updatedAt: '2024-01-15T00:00:00Z',
  ...overrides,
});

export const mockContractStats: Record<ContractStatus, number> = {
  Draft: 3,
  PendingActivation: 1,
  Active: 5,
  PendingCompletion: 2,
  Completed: 12,
  Cancelled: 1,
};

export const mockWorkorderStats: Record<WorkorderStatus, number> = {
  Draft: 2,
  PendingActivation: 0,
  Scheduled: 4,
  InProgress: 3,
  PendingCompletion: 1,
  Completed: 20,
  Cancelled: 2,
};
