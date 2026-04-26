import { Schema, model, Document } from 'mongoose';

// ── Project (master reference data) ─────────────────────────
// Maps to the SharePoint "Projects" list.
// Referenced by both contracts and workorders.

export type ContractStatus = 'Pending' | 'Active' | 'Completed' | 'Cancelled';

export interface IProject extends Document {
  title: string;              // ProjectDisplayName
  projectCode: string;        // Short reference code
  clientName: string;
  address: string;
  roundTrip: number;          // Round-trip travel hours from office
  isActive: boolean;
  contractStatus: ContractStatus;
  notes: string;
  createdAt: Date;
  updatedAt: Date;
}

const ProjectSchema = new Schema<IProject>(
  {
    title:          { type: String, required: true, trim: true },
    projectCode:    { type: String, required: true, trim: true, unique: true, uppercase: true },
    clientName:     { type: String, default: '', trim: true },
    address:        { type: String, default: '', trim: true },
    roundTrip:      { type: Number, required: true, min: 0, default: 0 },
    isActive:       { type: Boolean, default: true, index: true },
    contractStatus: { type: String, enum: ['Pending', 'Active', 'Completed', 'Cancelled'], default: 'Pending' },
    notes:          { type: String, default: '' },
  },
  { timestamps: true }
);

ProjectSchema.index({ title: 1 });
ProjectSchema.index({ clientName: 1 });
ProjectSchema.index({ contractStatus: 1, isActive: 1 });

export const Project = model<IProject>('Project', ProjectSchema);
