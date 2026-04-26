import { Schema, model, Document } from 'mongoose';

// ── Plant (master reference data) ────────────────────────────
// Maps to the SharePoint "Plant List".
// Used for plant selection on workorder line items.

export interface IPlant extends Document {
  title: string;
  botanicalName: string;
  category: string;
  containerSize: string;
  unitCost: number;
  isActive: boolean;
  createdAt: Date;
  updatedAt: Date;
}

const PlantSchema = new Schema<IPlant>(
  {
    title:         { type: String, required: true, trim: true },
    botanicalName: { type: String, default: '', trim: true },
    category:      { type: String, default: '', trim: true, index: true },
    containerSize: { type: String, default: '', trim: true },
    unitCost:      { type: Number, default: 0, min: 0 },
    isActive:      { type: Boolean, default: true, index: true },
  },
  { timestamps: true }
);

PlantSchema.index({ title: 1 });
PlantSchema.index({ category: 1, isActive: 1 });

export const Plant = model<IPlant>('Plant', PlantSchema);
