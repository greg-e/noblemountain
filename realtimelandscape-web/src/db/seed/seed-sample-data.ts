/**
 * Seed script — inserts sample projects, contracts, and workorders.
 *
 * Run once against a database that already has activities seeded:
 *   npx ts-node src/db/seed/seed-sample-data.ts
 *
 * Safe to re-run: existing records (matched by projectCode / workorderNumber)
 * are skipped — only missing records are inserted.
 */

import 'dotenv/config';
import { connectDB, disconnectDB } from '../connection';
import { Activity, Project, Contract, Workorder } from '../schemas';
import type { Types } from 'mongoose';

// ── Helpers ───────────────────────────────────────────────────

function zeroMonths() {
  return { jan: 0, feb: 0, mar: 0, apr: 0, may: 0, jun: 0,
           jul: 0, aug: 0, sep: 0, oct: 0, nov: 0, dec: 0 };
}

function uniformMonths(value: number) {
  return { jan: value, feb: value, mar: value, apr: value,
           may: value, jun: value, jul: value, aug: value,
           sep: value, oct: value, nov: value, dec: value };
}

async function findActivity(title: string): Promise<Types.ObjectId> {
  const doc = await Activity.findOne({ title }).lean();
  if (!doc) throw new Error(`Activity not found: "${title}" — run npm run seed first`);
  return doc._id as Types.ObjectId;
}

// ── Main ──────────────────────────────────────────────────────

async function main(): Promise<void> {
  await connectDB();

  // ── Projects ────────────────────────────────────────────
  console.log('\n[seed] Inserting projects…');

  const projectDefs = [
    {
      title: 'Riverside Office Park',
      projectCode: 'ROP-001',
      clientName: 'Riverside Properties LLC',
      address: '1400 Riverside Drive, Atlanta, GA 30339',
      roundTrip: 0.75,
      isActive: true,
      contractStatus: 'Active' as const,
      notes: 'Multi-building complex. Main entrance beds and two athletic fields.',
    },
    {
      title: 'Magnolia Estates HOA',
      projectCode: 'MEH-002',
      clientName: 'Magnolia Estates HOA',
      address: '200 Magnolia Blvd, Marietta, GA 30068',
      roundTrip: 0.50,
      isActive: true,
      contractStatus: 'Active' as const,
      notes: 'Residential HOA — common areas, entry monuments, and pond perimeter.',
    },
    {
      title: 'Peach Tree Medical Center',
      projectCode: 'PTM-003',
      clientName: 'Peach Tree Health Systems',
      address: '500 Peachtree St NE, Atlanta, GA 30308',
      roundTrip: 1.00,
      isActive: true,
      contractStatus: 'Pending' as const,
      notes: 'New account. Contract in review.',
    },
    {
      title: 'Lakewood Corporate Campus',
      projectCode: 'LCC-004',
      clientName: 'Lakewood Holdings Inc.',
      address: '900 Lakewood Ave SE, Atlanta, GA 30315',
      roundTrip: 0.60,
      isActive: false,
      contractStatus: 'Completed' as const,
      notes: 'Contract term ended Dec 2025. Retained for history.',
    },
  ];

  const createdProjects: Record<string, InstanceType<typeof Project>> = {};
  for (const def of projectDefs) {
    const existing = await Project.findOne({ projectCode: def.projectCode });
    if (existing) {
      console.log(`  [skip] Project ${def.projectCode} already exists`);
      createdProjects[def.projectCode] = existing as InstanceType<typeof Project>;
    } else {
      const p = await Project.create(def);
      console.log(`  [+] Project ${def.projectCode}: ${def.title}`);
      createdProjects[def.projectCode] = p as InstanceType<typeof Project>;
    }
  }

  // ── Contracts ────────────────────────────────────────────
  console.log('\n[seed] Inserting contracts…');

  const mowingId   = await findActivity('Mowing - Flat');
  const edgingId   = await findActivity('Edging - Hard');
  const weedingId  = await findActivity('Hand Weeding');
  const mulchId    = await findActivity('Mulch Installation');
  const shrubId    = await findActivity('Shrub Pruning');
  const fertId     = await findActivity('Turf Fertilization');
  const irrigId    = await findActivity('Irrigation Inspection');

  const ropProject = createdProjects['ROP-001'];
  const mehProject = createdProjects['MEH-002'];

  const contractDefs = [
    {
      contractNumber: 'CTR-2026-0001',
      project: ropProject._id,
      projectDisplayName: ropProject.title,
      clientName: ropProject.clientName,
      contractYear: 2026,
      laborRate: 55,
      overheadAndProfit: 0.30,
      materialMarkup: 0.35,
      roundTrip: ropProject.roundTrip,
      status: 'Active' as const,
      generalLineItems: [
        {
          activity: mowingId,
          quantity: 45000,
          monthlyFrequency: { ...uniformMonths(1), nov: 0, dec: 0, jan: 0, feb: 0 },
          materialMarkup: 0.35,
          activityDisplayName: 'Mowing - Flat',
          unit: 'SqFt',
          unitCategory: 'Area',
          unitMultiplier: 1000,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
        {
          activity: edgingId,
          quantity: 800,
          monthlyFrequency: { ...uniformMonths(1), nov: 0, dec: 0, jan: 0, feb: 0 },
          materialMarkup: 0.35,
          activityDisplayName: 'Edging - Hard',
          unit: 'LinFt',
          unitCategory: 'Linear',
          unitMultiplier: 100,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
        {
          activity: weedingId,
          quantity: 3000,
          monthlyFrequency: uniformMonths(1),
          materialMarkup: 0.35,
          activityDisplayName: 'Hand Weeding',
          unit: 'SqFt',
          unitCategory: 'Area',
          unitMultiplier: 100,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
        {
          activity: mulchId,
          quantity: 120,
          monthlyFrequency: { ...zeroMonths(), apr: 1, oct: 1 },
          materialMarkup: 0.35,
          activityDisplayName: 'Mulch Installation',
          unit: 'CuFt',
          unitCategory: 'Volume',
          unitMultiplier: 1,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
      ],
      technicalLineItems: [
        {
          activity: fertId,
          quantity: 45000,
          monthlyFrequency: { ...zeroMonths(), mar: 1, jun: 1, sep: 1 },
          materialMarkup: 0.35,
          techCrewSize: 2,
          techTravelPerVisit: '',
          activityDisplayName: 'Turf Fertilization',
          unit: 'SqFt',
          unitCategory: 'Area',
          unitMultiplier: 1000,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
        {
          activity: irrigId,
          quantity: 12,
          monthlyFrequency: uniformMonths(1),
          materialMarkup: 0.35,
          techCrewSize: 1,
          techTravelPerVisit: '',
          activityDisplayName: 'Irrigation Inspection',
          unit: 'Zone',
          unitCategory: 'Count',
          unitMultiplier: 1,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
      ],
      takeOff: [],
      visitCalculations: {
        workDayHours: 8,
        siteVisits: uniformMonths(2),
        averageCrew: uniformMonths(3),
        mhSums: zeroMonths(),
        generalContractHours: 0,
        totalGeneralVisits: 0,
        crewVisit: zeroMonths(),
        percentOfDailyTravel: zeroMonths(),
        totalLaborMH: 0,
        totalTechnicalMH: 0,
        totalContractMH: 0,
        totalLaborRevenue: 0,
        totalMaterialRevenue: 0,
        totalMonthlyRevenue: 0,
        totalAnnualRevenue: 0,
      },
      summary: {
        totalGeneralAnnual: 0,
        totalTechnicalAnnual: 0,
        totalTakeOffAnnual: 0,
        totalAnnual: 0,
        totalMonthly: 0,
        grandTotal: 0,
      },
    },
    {
      contractNumber: 'CTR-2026-0002',
      project: mehProject._id,
      projectDisplayName: mehProject.title,
      clientName: mehProject.clientName,
      contractYear: 2026,
      laborRate: 52,
      overheadAndProfit: 0.28,
      materialMarkup: 0.35,
      roundTrip: mehProject.roundTrip,
      status: 'Active' as const,
      generalLineItems: [
        {
          activity: mowingId,
          quantity: 28000,
          monthlyFrequency: { ...uniformMonths(1), nov: 0, dec: 0, jan: 0, feb: 0 },
          materialMarkup: 0.35,
          activityDisplayName: 'Mowing - Flat',
          unit: 'SqFt',
          unitCategory: 'Area',
          unitMultiplier: 1000,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
        {
          activity: shrubId,
          quantity: 60,
          monthlyFrequency: { ...zeroMonths(), mar: 1, jun: 1, sep: 1, dec: 1 },
          materialMarkup: 0.35,
          activityDisplayName: 'Shrub Pruning',
          unit: 'Each',
          unitCategory: 'Count',
          unitMultiplier: 1,
          mh: 0, totalFreq: 0, totalMH: 0, monthlyMH: zeroMonths(),
          laborPrice: 0, materialCost: 0, materialUnitPrice: 0,
          materialAnnualCost: 0, laborUnitPrice: 0, unitPrice: 0,
          laborAnnualCost: 0, annualPrice: 0,
        },
      ],
      technicalLineItems: [],
      takeOff: [],
      visitCalculations: {
        workDayHours: 8,
        siteVisits: uniformMonths(1),
        averageCrew: uniformMonths(2),
        mhSums: zeroMonths(),
        generalContractHours: 0,
        totalGeneralVisits: 0,
        crewVisit: zeroMonths(),
        percentOfDailyTravel: zeroMonths(),
        totalLaborMH: 0,
        totalTechnicalMH: 0,
        totalContractMH: 0,
        totalLaborRevenue: 0,
        totalMaterialRevenue: 0,
        totalMonthlyRevenue: 0,
        totalAnnualRevenue: 0,
      },
      summary: {
        totalGeneralAnnual: 0,
        totalTechnicalAnnual: 0,
        totalTakeOffAnnual: 0,
        totalAnnual: 0,
        totalMonthly: 0,
        grandTotal: 0,
      },
    },
  ];

  const createdContracts: Record<string, InstanceType<typeof Contract>> = {};
  for (const def of contractDefs) {
    const existing = await Contract.findOne({ contractNumber: def.contractNumber });
    if (existing) {
      console.log(`  [skip] Contract ${def.contractNumber} already exists`);
      createdContracts[def.contractNumber] = existing as InstanceType<typeof Contract>;
    } else {
      const c = await Contract.create(def);
      console.log(`  [+] Contract ${def.contractNumber}: ${def.projectDisplayName}`);
      createdContracts[def.contractNumber] = c as InstanceType<typeof Contract>;
    }
  }

  // ── Workorders ───────────────────────────────────────────
  console.log('\n[seed] Inserting workorders…');

  const plantInstallId = await findActivity('Plant Installation');
  const mulchInstId    = await findActivity('Mulch Installation');
  const cleanupId      = await findActivity('Debris Removal');

  const ropContract = createdContracts['CTR-2026-0001'];

  const workorderDefs = [
    {
      workorderNumber: 'WO-2026-0001',
      project: ropProject._id,
      projectDisplayName: ropProject.title,
      projectID: ropProject.projectCode,
      workorderDate: new Date('2026-04-01'),
      workorderDescription: 'Spring mulch refresh — all bed areas',
      scheduledDate: new Date('2026-04-15'),
      completedDate: null,
      contract: ropContract._id,
      roundTrip: ropProject.roundTrip,
      laborCostPerManHour: 25,
      overheadAndProfitPerManHour: 12.50,
      status: 'Completed' as const,
      workorderNotes: 'Completed on schedule. 3-person crew.',
      lineItems: [
        {
          activity: mulchInstId,
          quantity: 80,
          activityNotes: 'Double-shredded hardwood',
          laborCostPerManHour: 25,
          overheadAndProfitPerManHour: 12.50,
          materialMarkupPercent: 0.35,
          liveMaterialWarrantyPercent: 0,
          includedWork: false,
          activityDisplayName: 'Mulch Installation',
          unit: 'CuFt',
          manHoursPerUnit: 0.04,
          materialCostPerUnit: 0.65,
          totalLaborHours: 0, totalMaterialCost: 0, totalLaborCost: 0,
          totalLaborPrice: 0, materialMarkup: 0, warrantyMarkup: 0,
          totalMaterialPrice: 0, pricePerUnit: 0, totalPrice: 0,
        },
      ],
      totals: {
        totalLaborHours: 0,
        totalLaborCost: 0,
        totalLaborPrice: 0,
        totalMaterialCost: 0,
        totalMaterialPrice: 0,
        totalPrice: 0,
        roundTripCost: 0,
      },
    },
    {
      workorderNumber: 'WO-2026-0002',
      project: ropProject._id,
      projectDisplayName: ropProject.title,
      projectID: ropProject.projectCode,
      workorderDate: new Date('2026-04-10'),
      workorderDescription: 'Entry monument replanting — seasonal color rotation',
      scheduledDate: new Date('2026-04-22'),
      completedDate: null,
      contract: ropContract._id,
      roundTrip: ropProject.roundTrip,
      laborCostPerManHour: 25,
      overheadAndProfitPerManHour: 12.50,
      status: 'Scheduled' as const,
      workorderNotes: '',
      lineItems: [
        {
          activity: plantInstallId,
          quantity: 36,
          activityNotes: 'Knockout roses — entry beds',
          laborCostPerManHour: 25,
          overheadAndProfitPerManHour: 12.50,
          materialMarkupPercent: 0.35,
          liveMaterialWarrantyPercent: 0.10,
          includedWork: false,
          activityDisplayName: 'Plant Installation',
          unit: 'Each',
          manHoursPerUnit: 0.20,
          materialCostPerUnit: 4.50,
          totalLaborHours: 0, totalMaterialCost: 0, totalLaborCost: 0,
          totalLaborPrice: 0, materialMarkup: 0, warrantyMarkup: 0,
          totalMaterialPrice: 0, pricePerUnit: 0, totalPrice: 0,
        },
        {
          activity: cleanupId,
          quantity: 1,
          activityNotes: 'Post-plant cleanup and debris removal',
          laborCostPerManHour: 25,
          overheadAndProfitPerManHour: 12.50,
          materialMarkupPercent: 0.35,
          liveMaterialWarrantyPercent: 0,
          includedWork: false,
          activityDisplayName: 'Debris Removal',
          unit: 'Hour',
          manHoursPerUnit: 1.0,
          materialCostPerUnit: 0,
          totalLaborHours: 0, totalMaterialCost: 0, totalLaborCost: 0,
          totalLaborPrice: 0, materialMarkup: 0, warrantyMarkup: 0,
          totalMaterialPrice: 0, pricePerUnit: 0, totalPrice: 0,
        },
      ],
      totals: {
        totalLaborHours: 0,
        totalLaborCost: 0,
        totalLaborPrice: 0,
        totalMaterialCost: 0,
        totalMaterialPrice: 0,
        totalPrice: 0,
        roundTripCost: 0,
      },
    },
    {
      workorderNumber: 'WO-2026-0003',
      project: mehProject._id,
      projectDisplayName: mehProject.title,
      projectID: mehProject.projectCode,
      workorderDate: new Date('2026-04-20'),
      workorderDescription: 'HOA common area spring cleanup',
      scheduledDate: new Date('2026-04-28'),
      completedDate: null,
      contract: null,
      roundTrip: mehProject.roundTrip,
      laborCostPerManHour: 25,
      overheadAndProfitPerManHour: 12.50,
      status: 'Draft' as const,
      workorderNotes: 'Pending HOA board approval.',
      lineItems: [
        {
          activity: cleanupId,
          quantity: 4,
          activityNotes: 'Full property sweep',
          laborCostPerManHour: 25,
          overheadAndProfitPerManHour: 12.50,
          materialMarkupPercent: 0.35,
          liveMaterialWarrantyPercent: 0,
          includedWork: false,
          activityDisplayName: 'Debris Removal',
          unit: 'Hour',
          manHoursPerUnit: 1.0,
          materialCostPerUnit: 0,
          totalLaborHours: 0, totalMaterialCost: 0, totalLaborCost: 0,
          totalLaborPrice: 0, materialMarkup: 0, warrantyMarkup: 0,
          totalMaterialPrice: 0, pricePerUnit: 0, totalPrice: 0,
        },
      ],
      totals: {
        totalLaborHours: 0,
        totalLaborCost: 0,
        totalLaborPrice: 0,
        totalMaterialCost: 0,
        totalMaterialPrice: 0,
        totalPrice: 0,
        roundTripCost: 0,
      },
    },
  ];

  for (const def of workorderDefs) {
    const existing = await Workorder.findOne({ workorderNumber: def.workorderNumber });
    if (existing) {
      console.log(`  [skip] Workorder ${def.workorderNumber} already exists`);
    } else {
      await Workorder.create(def);
      console.log(`  [+] Workorder ${def.workorderNumber}: ${def.workorderDescription}`);
    }
  }

  console.log('\n[seed] Sample data seed complete.\n');
  await disconnectDB();
}

main().catch((err) => {
  console.error('[seed] Fatal error:', err);
  process.exit(1);
});
