import { Schema, model, Types, Document } from 'mongoose';

// ── Contract Document ─────────────────────────────────────────
// Maps to the InfoPath "Contract Form Foundation" + the
// Contract Library SharePoint document library.
//
// The entire contract is stored as a single document — matching
// the original InfoPath XML structure. Line items are embedded
// sub-documents (not separate collections) because they are
// never queried independently of their parent contract.

// ── Sub-schemas ───────────────────────────────────────────────

const MonthlyValuesSchema = new Schema(
  {
    jan: { type: Number, default: 0 },
    feb: { type: Number, default: 0 },
    mar: { type: Number, default: 0 },
    apr: { type: Number, default: 0 },
    may: { type: Number, default: 0 },
    jun: { type: Number, default: 0 },
    jul: { type: Number, default: 0 },
    aug: { type: Number, default: 0 },
    sep: { type: Number, default: 0 },
    oct: { type: Number, default: 0 },
    nov: { type: Number, default: 0 },
    dec: { type: Number, default: 0 },
  },
  { _id: false }
);

const ContractLineItemSchema = new Schema(
  {
    // User-entered
    activity:       { type: Types.ObjectId, ref: 'Activity', required: true },
    quantity:       { type: Number, required: true, default: 0 },
    monthlyFrequency: { type: MonthlyValuesSchema, default: () => ({}) },
    materialMarkup: { type: Number, default: 0.35 },

    // Calculated (stored for reporting — recalculated on load/save)
    activityDisplayName:  { type: String, default: '' },
    unit:                 { type: String, default: '' },
    unitCategory:         { type: String, default: '' },
    unitMultiplier:       { type: Number, default: 1 },
    mh:                   { type: Number, default: 0 },
    totalFreq:            { type: Number, default: 0 },
    totalMH:              { type: Number, default: 0 },
    monthlyMH:            { type: MonthlyValuesSchema, default: () => ({}) },
    laborPrice:           { type: Number, default: 0 },
    materialCost:         { type: Number, default: 0 },
    materialUnitPrice:    { type: Number, default: 0 },
    materialAnnualCost:   { type: Number, default: 0 },
    laborUnitPrice:       { type: Number, default: 0 },
    unitPrice:            { type: Number, default: 0 },
    laborAnnualCost:      { type: Number, default: 0 },
    annualPrice:          { type: Number, default: 0 },
  },
  { _id: true }
);

const TechnicalLineItemSchema = new Schema(
  {
    ...ContractLineItemSchema.obj,
    techCrewSize:      { type: Number, default: 1 },
    techTravelPerVisit: { type: String, default: '' },
  },
  { _id: true }
);

const VisitCalculationsSchema = new Schema(
  {
    workDayHours:          { type: Number, default: 8 },
    siteVisits:            { type: MonthlyValuesSchema, default: () => ({}) },
    averageCrew:           { type: MonthlyValuesSchema, default: () => ({}) },
    // Calculated
    mhSums:                { type: MonthlyValuesSchema, default: () => ({}) },
    generalContractHours:  { type: Number, default: 0 },
    totalGeneralVisits:    { type: Number, default: 0 },
    crewVisit:             { type: MonthlyValuesSchema, default: () => ({}) },
    percentOfDailyTravel:  { type: MonthlyValuesSchema, default: () => ({}) },
    travel:                { type: MonthlyValuesSchema, default: () => ({}) },
    monthlyTravel:         { type: MonthlyValuesSchema, default: () => ({}) },
    totalMonthlyTravel:    { type: Number, default: 0 },
    mhOnSitePerVisit:      { type: MonthlyValuesSchema, default: () => ({}) },
    percentMHPerMonth:     { type: MonthlyValuesSchema, default: () => ({}) },
    totalAnnualPercent:    { type: Number, default: 0 },
    travelCost:            { type: Number, default: 0 },
    travelPrice:           { type: Number, default: 0 },
  },
  { _id: false }
);

const ContractTotalsSchema = new Schema(
  {
    generalAnnualPrice:          { type: Number, default: 0 },
    generalAnnualLaborCost:      { type: Number, default: 0 },
    generalAnnualMaterialCost:   { type: Number, default: 0 },
    generalCostTotal:            { type: Number, default: 0 },
    technicalAnnualPrice:        { type: Number, default: 0 },
    technicalAnnualLaborCost:    { type: Number, default: 0 },
    technicalAnnualMaterialCost: { type: Number, default: 0 },
    technicalCostTotal:          { type: Number, default: 0 },
    contractPrice:               { type: Number, default: 0 },
    contractCost:                { type: Number, default: 0 },
    grossProfit:                 { type: Number, default: 0 },
    grossProfitPercent:          { type: Number, default: 0 },
  },
  { _id: false }
);

// Take-off sub-schemas
const AreaTakeOffRowSchema    = new Schema({ areaLength: Number, areaWidth: Number, areaTotal: Number, generalAreaActivity: String }, { _id: false });
const LinearTakeOffRowSchema  = new Schema({ linearLength: Number, linearQuantity: Number, linearTotal: Number, generalLinearActivity: String }, { _id: false });
const CountTakeOffRowSchema   = new Schema({ countQuantityTotal: Number, generalCountActivity: String }, { _id: false });
const VolumeTakeOffRowSchema  = new Schema({ volumeLength: Number, volumeWidth: Number, depthInches: Number, volumeTotalCF: Number, generalVolumeActivity: String }, { _id: false });

const TakeOffEntrySchema = new Schema(
  {
    takeOffType:              { type: String, enum: ['Area', 'Linear', 'Count', 'Volume'], required: true },
    takeOffActivity:          { type: String, default: '' },
    takeOffActivityUnit:      { type: String, default: '' },
    takeOffActivityMultiplier:{ type: Number, default: 1 },
    takeOffActivityTotal:     { type: Number, default: 0 },
    relatedActivity:          { type: String, default: '' },
    areaDetail:               { type: [AreaTakeOffRowSchema],   default: undefined },
    linearDetail:             { type: [LinearTakeOffRowSchema], default: undefined },
    countDetail:              { type: [CountTakeOffRowSchema],  default: undefined },
    volumeDetail:             { type: [VolumeTakeOffRowSchema], default: undefined },
  },
  { _id: true }
);

// ── Workflow status ────────────────────────────────────────────
export type ContractWorkflowStatus =
  | 'Draft'
  | 'PendingActivation'
  | 'Active'
  | 'PendingCompletion'
  | 'Completed'
  | 'Cancelled';

// ── Root Contract Document ─────────────────────────────────────
export interface IContract extends Document {
  // Header
  contractNumber: string;          // Auto-generated (e.g. "C-2026-0042")
  project:        Types.ObjectId;
  projectDisplayName: string;
  roundTrip:      number;
  createdDate:    Date;
  effectiveDate:  Date | null;

  // Workflow
  status: ContractWorkflowStatus;
  activatedAt:  Date | null;
  completedAt:  Date | null;
  activatedBy:  string;

  // Form body (the full document — mirrors InfoPath EstimateGroup)
  generalLaborCost:        number;
  generalOverheadAndProfit: number;
  generalLineItems:        any[];
  technicalLineItems:      any[];
  visitCalculations:       any;
  contractTotals:          any;
  takeOff:                 any[];
  showActivities:          string;

  // Metadata
  createdBy:  string;
  updatedBy:  string;
  createdAt:  Date;
  updatedAt:  Date;
}

const ContractSchema = new Schema<IContract>(
  {
    contractNumber:   { type: String, required: true, unique: true, index: true },
    project:          { type: Schema.Types.ObjectId, ref: 'Project', required: true, index: true },
    projectDisplayName: { type: String, default: '' },
    roundTrip:        { type: Number, default: 0 },
    createdDate:      { type: Date, default: Date.now },
    effectiveDate:    { type: Date, default: null },

    status:       { type: String, enum: ['Draft','PendingActivation','Active','PendingCompletion','Completed','Cancelled'], default: 'Draft', index: true },
    activatedAt:  { type: Date, default: null },
    completedAt:  { type: Date, default: null },
    activatedBy:  { type: String, default: '' },

    generalLaborCost:         { type: Number, default: 0 },
    generalOverheadAndProfit: { type: Number, default: 0 },
    generalLineItems:         { type: [ContractLineItemSchema],   default: [] },
    technicalLineItems:       { type: [TechnicalLineItemSchema],  default: [] },
    visitCalculations:        { type: VisitCalculationsSchema,    default: () => ({}) },
    contractTotals:           { type: ContractTotalsSchema,       default: () => ({}) },
    takeOff:                  { type: [TakeOffEntrySchema],       default: [] },
    showActivities:           { type: String, default: '' },

    createdBy: { type: String, default: '' },
    updatedBy: { type: String, default: '' },
  },
  { timestamps: true }
);

// Compound indexes for common query patterns
ContractSchema.index({ project: 1, status: 1 });
ContractSchema.index({ status: 1, createdAt: -1 });
ContractSchema.index({ 'contractTotals.contractPrice': 1 });  // for reporting aggregations

export const Contract = model<IContract>('Contract', ContractSchema);
