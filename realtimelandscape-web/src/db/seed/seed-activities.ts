/**
 * Seed script — populates the `activities` collection with the pricing table
 * data extracted from the SharePoint WSP (Pricing Table_offline.xml).
 *
 * Run once against a fresh database:
 *   MONGODB_URI=mongodb://localhost:27017/realtimelandscape npx ts-node src/db/seed/seed-activities.ts
 *
 * Activities listed here are representative samples. Replace / extend with
 * the full set from the extracted XML at:
 *   realtimelandscape/_extracted/RealTime_WSP/...
 */

import 'dotenv/config';
import { connectDB, disconnectDB } from '../connection';
import { Activity } from '../schemas';

// ── Seed data ────────────────────────────────────────────────
// Derived from sampledata.xml and the pricing table form.
// productionRate  = ManHoursPerUnit
// materialRate    = MaterialCostPerUnit ($)
// unitMultiplier  = how many base units = 1 "unit" for MH calc

const ACTIVITIES = [
  // ── Turf Management ──────────────────────────────────────
  { title: 'Mowing - Flat',            activityCategory: 'Turf Management',   unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.10, materialRate: 0.00 },
  { title: 'Mowing - Sloped',          activityCategory: 'Turf Management',   unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.15, materialRate: 0.00 },
  { title: 'Edging - Hard',            activityCategory: 'Turf Management',   unit: 'LinFt', unitCategory: 'Linear', unitMultiplier: 100,   productionRate: 0.08, materialRate: 0.00 },
  { title: 'Trimming - String',        activityCategory: 'Turf Management',   unit: 'LinFt', unitCategory: 'Linear', unitMultiplier: 100,   productionRate: 0.12, materialRate: 0.00 },
  { title: 'Turf Fertilization',       activityCategory: 'Turf Management',   unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.05, materialRate: 0.80 },
  { title: 'Turf Aeration',            activityCategory: 'Turf Management',   unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.10, materialRate: 0.00 },
  { title: 'Turf Overseeding',         activityCategory: 'Turf Management',   unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.12, materialRate: 1.20 },

  // ── Landscape Bed Maintenance ────────────────────────────
  { title: 'Hand Weeding',             activityCategory: 'Bed Maintenance',   unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 100,   productionRate: 0.25, materialRate: 0.00 },
  { title: 'Pre-Emergent Application', activityCategory: 'Bed Maintenance',   unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.06, materialRate: 1.50 },
  { title: 'Mulch Installation',       activityCategory: 'Bed Maintenance',   unit: 'CuFt',  unitCategory: 'Volume', unitMultiplier: 1,     productionRate: 0.04, materialRate: 0.65 },
  { title: 'Pine Straw Installation',  activityCategory: 'Bed Maintenance',   unit: 'Bale',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.05, materialRate: 4.50 },

  // ── Pruning & Trimming ───────────────────────────────────
  { title: 'Shrub Pruning',            activityCategory: 'Pruning',           unit: 'Each',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.15, materialRate: 0.00 },
  { title: 'Tree Pruning - Small',     activityCategory: 'Pruning',           unit: 'Each',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.50, materialRate: 0.00 },
  { title: 'Tree Pruning - Medium',    activityCategory: 'Pruning',           unit: 'Each',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 1.00, materialRate: 0.00 },
  { title: 'Hedge Trimming',           activityCategory: 'Pruning',           unit: 'LinFt', unitCategory: 'Linear', unitMultiplier: 10,    productionRate: 0.10, materialRate: 0.00 },

  // ── Irrigation ───────────────────────────────────────────
  { title: 'Irrigation Inspection',    activityCategory: 'Irrigation',        unit: 'Zone',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.08, materialRate: 0.00 },
  { title: 'Irrigation Startup',       activityCategory: 'Irrigation',        unit: 'Zone',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.10, materialRate: 0.00 },
  { title: 'Irrigation Winterization', activityCategory: 'Irrigation',        unit: 'Zone',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.10, materialRate: 0.00 },

  // ── Cleanup ──────────────────────────────────────────────
  { title: 'Leaf Removal',             activityCategory: 'Cleanup',           unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.20, materialRate: 0.00 },
  { title: 'Debris Removal',           activityCategory: 'Cleanup',           unit: 'Hour',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 1.00, materialRate: 0.00 },
  { title: 'Spring Cleanup',           activityCategory: 'Cleanup',           unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.30, materialRate: 0.00 },
  { title: 'Fall Cleanup',             activityCategory: 'Cleanup',           unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.30, materialRate: 0.00 },

  // ── Technical / Plant Health ─────────────────────────────
  { title: 'Deep Root Fertilization',  activityCategory: 'Plant Health Care', unit: 'Each',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.08, materialRate: 8.00 },
  { title: 'Pesticide Application',    activityCategory: 'Plant Health Care', unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 1000,  productionRate: 0.06, materialRate: 2.50 },
  { title: 'Disease Treatment',        activityCategory: 'Plant Health Care', unit: 'Each',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.20, materialRate: 15.00 },

  // ── Installation ─────────────────────────────────────────
  { title: 'Plant Installation',       activityCategory: 'Installation',      unit: 'Each',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.50, materialRate: 0.00 },
  { title: 'Sod Installation',         activityCategory: 'Installation',      unit: 'SqFt',  unitCategory: 'Area',   unitMultiplier: 100,   productionRate: 0.04, materialRate: 0.45 },
  { title: 'Annual Color Rotation',    activityCategory: 'Installation',      unit: 'Each',  unitCategory: 'Count',  unitMultiplier: 1,     productionRate: 0.08, materialRate: 3.50 },
];

// ── Main ──────────────────────────────────────────────────────

async function seed(): Promise<void> {
  await connectDB();

  let inserted = 0;
  let skipped  = 0;

  for (const data of ACTIVITIES) {
    const exists = await Activity.findOne({ title: data.title }).lean();
    if (exists) {
      skipped++;
      continue;
    }
    await Activity.create({ ...data, isActive: true, description: '' });
    inserted++;
  }

  console.log(`[seed] Activities: ${inserted} inserted, ${skipped} already existed.`);
  await disconnectDB();
}

seed().catch((err) => {
  console.error('[seed] Failed:', err);
  process.exit(1);
});
