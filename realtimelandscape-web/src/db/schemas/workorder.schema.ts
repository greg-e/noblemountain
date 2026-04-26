import { Schema, model, Types, Document } from 'mongoose';

// ── Workorder Document ────────────────────────────────────────
// Maps to the InfoPath "Workorder Form Foundation" +
// the Workorder library in SharePoint.
//
// Like contracts, workorders are stored as full documents.
// Line items are embedded — they are always read/written
// as part of the workorder, never queried independently.

export type WorkorderWorkflowStatus =
  | 'Draft'
  | 'PendingActivation'
  | 'Scheduled'
  | 'InProgress'
  | 'PendingCompletion'
  | 'Completed'
  | 'Cancelled';

// ── Line Item Sub-schema ──────────────────────────────────────

const WorkorderLineItemSchema = new Schema(
  {
    // User-entered
    activity:                   { type: Types.ObjectId, ref: 'Activity', required: true },
    quantity:                   { type: Number, default: 0 },
    plantSelection:             { type: String, default: '' },
    activityNotes:              { type: String, default: '' },
    manualMaterialCostPerUnit:  { type: Number, default: 0 },
    laborCostPerManHour:        { type: Number, default: 12.50 },   // from sampledata.xml default
    overheadAndProfitPerManHour:{ type: Number, default: 12.50 },   // from sampledata.xml default
    materialMarkupPercent:      { type: Number, default: 0.35 },    // from sampledata.xml default
    liveMaterialWarrantyPercent:{ type: Number, default: 0 },
    includedWork:               { type: Boolean, default: false },
    workorderDescription:       { type: String, default: '' },

    // Looked up / calculated (stored for reporting and display)
    activityDisplayName:   { type: String, default: '' },
    description:           { type: String, default: '' },
    unit:                  { type: String, default: '' },
    manHoursPerUnit:       { type: Number, default: 0 },
    materialCostPerUnit:   { type: Number, default: 0 },
    laborPricePerManHour:  { type: Number, default: 0 },
    totalLaborHours:       { type: Number, default: 0 },
    totalMaterialCost:     { type: Number, default: 0 },
    totalLaborCost:        { type: Number, default: 0 },
    totalLaborPrice:       { type: Number, default: 0 },
    materialMarkup:        { type: Number, default: 0 },
    warrantyMarkup:        { type: Number, default: 0 },
    totalMaterialPrice:    { type: Number, default: 0 },
    pricePerUnit:          { type: Number, default: 0 },
    totalPrice:            { type: Number, default: 0 },
  },
  { _id: true }
);

// ── Root Workorder Document ───────────────────────────────────

export interface IWorkorder extends Document {
  workorderNumber: string;         // Auto-generated (e.g. "WO-2026-0017")
  contract:    Types.ObjectId | null;  // Optional — workorders can exist without a contract
  project:     Types.ObjectId;
  projectDisplayName: string;
  roundTrip:   number;

  workorderNotes: string;
  workDayHours:   number;
  crewSize:       number;

  // Workflow
  status:        WorkorderWorkflowStatus;
  scheduledDate: Date | null;
  completedDate: Date | null;
  activatedBy:   string;

  // Calculated summary (stored for list views / reporting)
  totalManHours:        number;
  averageHourlyRate:    number;
  priceSubtotal:        number;
  totalVisits:          number;
  totalVisitsRoundedUp: number;
  onsiteCrewHours:      number;
  totalTravelHours:     number;
  travelPrice:          number;
  totalWorkorderPrice:  number;
  totalWorkorderCost:   number;
  totalWorkorderProfit: number;
  percentProfit:        number;

  lineItems: any[];

  createdBy: string;
  updatedBy: string;
  createdAt: Date;
  updatedAt: Date;
}

const WorkorderSchema = new Schema<IWorkorder>(
  {
    workorderNumber:    { type: String, required: true, unique: true, index: true },
    contract:           { type: Schema.Types.ObjectId, ref: 'Contract', default: null, index: true },
    project:            { type: Schema.Types.ObjectId, ref: 'Project', required: true, index: true },
    projectDisplayName: { type: String, default: '' },
    roundTrip:          { type: Number, default: 0 },

    workorderNotes: { type: String, default: '' },
    workDayHours:   { type: Number, default: 8 },
    crewSize:       { type: Number, default: 1, min: 1 },

    status:        { type: String, enum: ['Draft','PendingActivation','Scheduled','InProgress','PendingCompletion','Completed','Cancelled'], default: 'Draft', index: true },
    scheduledDate: { type: Date, default: null },
    completedDate: { type: Date, default: null },
    activatedBy:   { type: String, default: '' },

    // Calculated summaries stored at the root for fast list queries
    totalManHours:        { type: Number, default: 0 },
    averageHourlyRate:    { type: Number, default: 0 },
    priceSubtotal:        { type: Number, default: 0 },
    totalVisits:          { type: Number, default: 0 },
    totalVisitsRoundedUp: { type: Number, default: 0 },
    onsiteCrewHours:      { type: Number, default: 0 },
    totalTravelHours:     { type: Number, default: 0 },
    travelPrice:          { type: Number, default: 0 },
    totalWorkorderPrice:  { type: Number, default: 0 },
    totalWorkorderCost:   { type: Number, default: 0 },
    totalWorkorderProfit: { type: Number, default: 0 },
    percentProfit:        { type: Number, default: 0 },

    lineItems: ({ type: [WorkorderLineItemSchema], default: [] } as any),

    createdBy: { type: String, default: '' },
    updatedBy: { type: String, default: '' },
  },
  { timestamps: true }
);

WorkorderSchema.index({ project: 1, status: 1 });
// contract field has index: true in schema definition; no duplicate needed here
WorkorderSchema.index({ status: 1, scheduledDate: 1 });
WorkorderSchema.index({ totalWorkorderPrice: 1 });   // for revenue reporting

export const Workorder = model<IWorkorder>('Workorder', WorkorderSchema);
