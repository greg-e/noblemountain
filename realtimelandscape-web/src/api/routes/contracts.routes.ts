import { Router } from 'express';
import { body, param } from 'express-validator';
import { Types } from 'mongoose';
import { asyncHandler } from '../middleware/async-handler';
import { validate } from '../middleware/validate';
import { httpError } from '../middleware/error-handler';
import {
  findContracts,
  findContractById,
  createContract,
  saveContract,
  transitionContractStatus,
  countContractsByStatus,
  getContractFinancials,
} from '../../db/repositories';
import { findProjectById, findActivitiesByIds } from '../../db/repositories';
import { recalcEstimateGroup } from '../../engine/calculations';
import type { ContractWorkflowStatus } from '../../db/schemas';
import type { EstimateGroup, PricingTableActivity, Project } from '../../types';

export const contractsRouter = Router();

// ─────────────────────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────────────────────

/** Extract unique activity IDs referenced by all line items in an EstimateGroup */
function collectActivityIds(group: Partial<EstimateGroup>): string[] {
  const ids = new Set<string>();
  for (const item of [...(group.generalLineItems ?? []), ...(group.technicalLineItems ?? [])]) {
    if (item.activity) ids.add(String(item.activity));
  }
  return [...ids];
}

/** Map Mongoose Activity documents to the PricingTableActivity shape the engine expects */
function toEngineActivity(doc: any): PricingTableActivity {
  return {
    id:               String(doc._id),
    title:            doc.title,
    activityCategory: doc.activityCategory,
    unit:             doc.unit,
    unitCategory:     doc.unitCategory,
    unitMultiplier:   doc.unitMultiplier,
    productionRate:   doc.productionRate,
    materialRate:     doc.materialRate,
    description:      doc.description ?? '',
  };
}

/** Map Mongoose Project document to the Project shape the engine expects */
function toEngineProject(doc: any): Project {
  return {
    id:        String(doc._id),
    title:     doc.title,
    roundTrip: doc.roundTrip,
  };
}

/** Handle both ObjectId refs and populated project objects from lean() results */
function extractProjectId(project: any): string {
  if (!project) return '';
  if (typeof project === 'string') return project;
  if (project instanceof Types.ObjectId) return String(project);
  if (project._id) return String(project._id);
  return String(project);
}

// ─────────────────────────────────────────────────────────────
// Routes
// ─────────────────────────────────────────────────────────────

// GET /api/contracts?project=&status=
contractsRouter.get(
  '/',
  asyncHandler(async (req, res) => {
    const { project, status } = req.query as Record<string, string>;
    const contracts = await findContracts({
      project: project as any || undefined,
      status:  status as ContractWorkflowStatus || undefined,
    });
    res.json(contracts);
  })
);

// GET /api/contracts/stats
contractsRouter.get(
  '/stats',
  asyncHandler(async (_req, res) => {
    const counts = await countContractsByStatus();
    res.json(counts);
  })
);

// GET /api/contracts/financials
contractsRouter.get(
  '/financials',
  asyncHandler(async (_req, res) => {
    const data = await getContractFinancials();
    res.json(data);
  })
);

// GET /api/contracts/:id
contractsRouter.get(
  '/:id',
  param('id').isMongoId(),
  validate,
  asyncHandler(async (req, res) => {
    const contract = await findContractById(req.params.id as string);
    if (!contract) throw httpError(404, 'Contract not found');
    res.json(contract);
  })
);

// POST /api/contracts
// Creates a Draft contract. The project must already exist.
// The body should contain: project (ObjectId), generalLaborCost,
// generalOverheadAndProfit, and optionally generalLineItems / technicalLineItems.
// The engine runs immediately so stored calculated fields are always fresh.
contractsRouter.post(
  '/',
  [
    body('project').isMongoId(),
    body('generalLaborCost').isFloat({ min: 0 }),
    body('generalOverheadAndProfit').isFloat({ min: 0 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const projectDoc = await findProjectById(req.body.project);
    if (!projectDoc) throw httpError(404, 'Project not found');

    // Build a partial EstimateGroup from the request body to run through the engine
    const estimateGroup: EstimateGroup = {
      generalLaborCost:         req.body.generalLaborCost ?? 0,
      generalOverheadAndProfit: req.body.generalOverheadAndProfit ?? 0,
      generalLineItems:         req.body.generalLineItems ?? [],
      technicalLineItems:       req.body.technicalLineItems ?? [],
      visitCalculations:        req.body.visitCalculations ?? buildEmptyVisitCalcs(),
      contractTotals:           req.body.contractTotals ?? buildEmptyContractTotals(),
    };

    const activityIds = collectActivityIds(estimateGroup);
    const activityDocs = activityIds.length ? await findActivitiesByIds(activityIds) : [];
    const activityMap = new Map<string, PricingTableActivity>(
      activityDocs.map(a => [String((a as any)._id), toEngineActivity(a)])
    );

    const recalculated = recalcEstimateGroup(estimateGroup, activityMap, toEngineProject(projectDoc));

    const contractNumber = await generateContractNumber();
    let contract;
    try {
      contract = await createContract({
        contractNumber,
        project:          new Types.ObjectId(req.body.project),
        projectDisplayName: projectDoc.title,
        roundTrip:        projectDoc.roundTrip,
        status:           'Draft',
        ...recalculated,
        createdBy: req.body.createdBy ?? '',
      });
    } catch (err: any) {
      if (err.code === 11000) throw httpError(409, 'Contract number conflict — please retry');
      throw err;
    }

    res.status(201).json(contract);
  })
);

// PUT /api/contracts/:id
// Full update — re-runs the calculation engine before persisting.
contractsRouter.put(
  '/:id',
  [
    param('id').isMongoId(),
    body('generalLaborCost').optional().isFloat({ min: 0 }),
    body('generalOverheadAndProfit').optional().isFloat({ min: 0 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const existing = await findContractById(req.params.id as string);
    if (!existing) throw httpError(404, 'Contract not found');
    if (existing.status !== 'Draft') {
      throw httpError(409, `Cannot edit contract in ${existing.status}; only Draft can be edited`);
    }

    const projectDoc = await findProjectById(extractProjectId(existing.project));
    if (!projectDoc) throw httpError(404, 'Project not found');

    const estimateGroup: EstimateGroup = {
      generalLaborCost:         req.body.generalLaborCost ?? existing.generalLaborCost,
      generalOverheadAndProfit: req.body.generalOverheadAndProfit ?? existing.generalOverheadAndProfit,
      generalLineItems:         req.body.generalLineItems  ?? existing.generalLineItems,
      technicalLineItems:       req.body.technicalLineItems ?? existing.technicalLineItems,
      visitCalculations:        req.body.visitCalculations  ?? existing.visitCalculations,
      contractTotals:           existing.contractTotals,
    };

    const activityIds = collectActivityIds(estimateGroup);
    const activityDocs = activityIds.length ? await findActivitiesByIds(activityIds) : [];
    const activityMap = new Map<string, PricingTableActivity>(
      activityDocs.map(a => [String((a as any)._id), toEngineActivity(a)])
    );

    const recalculated = recalcEstimateGroup(estimateGroup, activityMap, toEngineProject(projectDoc));

    const updated = await saveContract(req.params.id as string, {
      ...recalculated,
      updatedBy: req.body.updatedBy ?? '',
    });
    if (!updated) throw httpError(404, 'Contract not found');

    res.json(updated);
  })
);

// POST /api/contracts/:id/preview
// Non-persisting preview — re-runs the calculation engine and returns
// recalculated values without saving to the database.
contractsRouter.post(
  '/:id/preview',
  [
    param('id').isMongoId(),
    body('generalLaborCost').optional().isFloat({ min: 0 }),
    body('generalOverheadAndProfit').optional().isFloat({ min: 0 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const existing = await findContractById(req.params.id as string);
    if (!existing) throw httpError(404, 'Contract not found');
    if (existing.status !== 'Draft') {
      throw httpError(409, `Cannot preview contract in ${existing.status}; only Draft can be edited`);
    }

    const projectDoc = await findProjectById(extractProjectId(existing.project));
    if (!projectDoc) throw httpError(404, 'Project not found');

    const estimateGroup: EstimateGroup = {
      generalLaborCost:         req.body.generalLaborCost ?? existing.generalLaborCost,
      generalOverheadAndProfit: req.body.generalOverheadAndProfit ?? existing.generalOverheadAndProfit,
      generalLineItems:         req.body.generalLineItems  ?? existing.generalLineItems,
      technicalLineItems:       req.body.technicalLineItems ?? existing.technicalLineItems,
      visitCalculations:        req.body.visitCalculations  ?? existing.visitCalculations,
      contractTotals:           existing.contractTotals,
    };

    const activityIds = collectActivityIds(estimateGroup);
    const activityDocs = activityIds.length ? await findActivitiesByIds(activityIds) : [];
    const activityMap = new Map<string, PricingTableActivity>(
      activityDocs.map(a => [String((a as any)._id), toEngineActivity(a)])
    );

    const recalculated = recalcEstimateGroup(estimateGroup, activityMap, toEngineProject(projectDoc));

    res.json({
      ...existing,
      ...recalculated,
    });
  })
);

// POST /api/contracts/:id/transition
// Moves a contract through workflow states.
// Valid transitions:
//   Draft → PendingActivation → Active → PendingCompletion → Completed
//   Any  → Cancelled
const VALID_TRANSITIONS: Record<ContractWorkflowStatus, ContractWorkflowStatus[]> = {
  Draft:             ['PendingActivation', 'Cancelled'],
  PendingActivation: ['Active', 'Draft', 'Cancelled'],
  Active:            ['PendingCompletion', 'Cancelled'],
  PendingCompletion: ['Completed', 'Active'],
  Completed:         [],
  Cancelled:         [],
};

contractsRouter.post(
  '/:id/transition',
  [
    param('id').isMongoId(),
    body('to').isIn(['Draft','PendingActivation','Active','PendingCompletion','Completed','Cancelled']),
    body('updatedBy').optional().isString(),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const contract = await findContractById(req.params.id as string);
    if (!contract) throw httpError(404, 'Contract not found');

    const to = req.body.to as ContractWorkflowStatus;
    const allowedNext = VALID_TRANSITIONS[contract.status];
    if (!allowedNext.includes(to)) {
      throw httpError(409, `Cannot transition from ${contract.status} to ${to}`);
    }

    const updated = await transitionContractStatus(
      req.params.id as string,
      contract.status,
      to,
      req.body.updatedBy ?? ''
    );
    if (!updated) throw httpError(409, 'Contract status changed concurrently — please reload');

    res.json(updated);
  })
);

// ─────────────────────────────────────────────────────────────
// Local helpers
// ─────────────────────────────────────────────────────────────

async function generateContractNumber(): Promise<string> {
  // Import here to avoid circular deps — Contract model is in schemas
  const { Contract } = await import('../../db/schemas');
  const year = new Date().getFullYear();
  const count = await Contract.countDocuments();
  return `C-${year}-${String(count + 1).padStart(4, '0')}`;
}

function buildEmptyVisitCalcs() {
  const m = { jan:0,feb:0,mar:0,apr:0,may:0,jun:0,jul:0,aug:0,sep:0,oct:0,nov:0,dec:0 };
  return {
    workDayHours: 8,
    siteVisits:   { ...m }, averageCrew:         { ...m },
    mhSums:       { ...m }, generalContractHours: 0,
    totalGeneralVisits: 0,  crewVisit:            { ...m },
    percentOfDailyTravel: { ...m }, travel:       { ...m },
    monthlyTravel: { ...m }, totalMonthlyTravel:   0,
    mhOnSitePerVisit: { ...m }, percentMHPerMonth: { ...m },
    totalAnnualPercent: 0, travelCost: 0, travelPrice: 0,
  };
}

function buildEmptyContractTotals() {
  return {
    generalAnnualPrice: 0, generalAnnualLaborCost: 0, generalAnnualMaterialCost: 0, generalCostTotal: 0,
    technicalAnnualPrice: 0, technicalAnnualLaborCost: 0, technicalAnnualMaterialCost: 0, technicalCostTotal: 0,
    contractPrice: 0, contractCost: 0, grossProfit: 0, grossProfitPercent: 0,
  };
}
