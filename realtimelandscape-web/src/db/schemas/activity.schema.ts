import { Schema, model, Document } from 'mongoose';

// ── Pricing Table Activity (master reference data) ───────────
// Maps to the SharePoint "Pricing Table" list.
// This is the lookup source for all contract and workorder line items.

export interface IActivity extends Document {
  title: string;
  activityCategory: string;
  unit: string;
  unitCategory: string;
  unitMultiplier: number;
  productionRate: number;    // ManHoursPerUnit
  materialRate: number;      // MaterialCostPerUnit ($ per unit)
  description: string;
  isActive: boolean;
  createdAt: Date;
  updatedAt: Date;
}

const ActivitySchema = new Schema<IActivity>(
  {
    title:            { type: String, required: true, trim: true },
    activityCategory: { type: String, required: true, trim: true, index: true },
    unit:             { type: String, required: true, trim: true },
    unitCategory:     { type: String, required: true, enum: ['Area', 'Linear', 'Count', 'Volume', 'Other'] },
    unitMultiplier:   { type: Number, required: true, default: 1 },
    productionRate:   { type: Number, required: true, min: 0 },
    materialRate:     { type: Number, required: true, min: 0, default: 0 },
    description:      { type: String, default: '' },
    isActive:         { type: Boolean, default: true, index: true },
  },
  { timestamps: true }
);

ActivitySchema.index({ title: 1 });
ActivitySchema.index({ activityCategory: 1, isActive: 1 });

export const Activity = model<IActivity>('Activity', ActivitySchema);
