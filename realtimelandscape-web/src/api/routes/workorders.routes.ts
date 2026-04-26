import { Router } from 'express';
import { body, param } from 'express-validator';
import { Types } from 'mongoose';
import { asyncHandler } from '../middleware/async-handler';
import { validate } from '../middleware/validate';
import { httpError } from '../middleware/error-handler';
import {
  findWorkorders,
  findWorkorderById,
  createWorkorder,
  saveWorkorder,
  transitionWorkorderStatus,
  countWorkordersByStatus,
} from '../../db/repositories';
import { findProjectById, findActivitiesByIds } from '../../db/repositories';
import { recalcWorkorder } from '../../engine/calculations';
import type { WorkorderWorkflowStatus } from '../../db/schemas';
import type { WorkorderForm, PricingTableActivity, Project } from '../../types';

export const workordersRouter = Router();

// ─────────────────────────────────────────────────────────────
// Helpers
// ─────────────────────────────────────────────────────────────

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

function toEngineProject(doc: any): Project {
  return { id: String(doc._id), title: doc.title, roundTrip: doc.roundTrip };
}

/** Handle both ObjectId refs and populated project objects from lean() results */
function extractProjectId(project: any): string {
  if (!project) return '';
  if (typeof project === 'string') return project;
  if (project instanceof Types.ObjectId) return String(project);
  if (project._id) return String(project._id);
  return String(project);
}

function collectActivityIds(lineItems: any[]): string[] {
  return [...new Set(lineItems.filter(i => i.activity).map(i => String(i.activity)))];
}

// ─────────────────────────────────────────────────────────────
// Routes
// ─────────────────────────────────────────────────────────────

// GET /api/workorders?project=&contract=&status=&scheduledDateFrom=&scheduledDateTo=
workordersRouter.get(
  '/',
  asyncHandler(async (req, res) => {
    const { project, contract, status, scheduledDateFrom, scheduledDateTo } = req.query as Record<string, string>;

    const dateFrom = scheduledDateFrom ? new Date(scheduledDateFrom) : undefined;
    const dateTo   = scheduledDateTo   ? new Date(scheduledDateTo)   : undefined;
    if (dateFrom && isNaN(dateFrom.getTime())) throw httpError(400, 'scheduledDateFrom must be a valid date');
    if (dateTo   && isNaN(dateTo.getTime()))   throw httpError(400, 'scheduledDateTo must be a valid date');

    const workorders = await findWorkorders({
      project:           project  || undefined,
      contract:          contract || undefined,
      status:            status as WorkorderWorkflowStatus || undefined,
      scheduledDateFrom: dateFrom,
      scheduledDateTo:   dateTo,
    });
    res.json(workorders);
  })
);

// GET /api/workorders/stats
workordersRouter.get(
  '/stats',
  asyncHandler(async (_req, res) => {
    const counts = await countWorkordersByStatus();
    res.json(counts);
  })
);

// GET /api/workorders/:id
workordersRouter.get(
  '/:id',
  param('id').isMongoId(),
  validate,
  asyncHandler(async (req, res) => {
    const workorder = await findWorkorderById(req.params.id as string);
    if (!workorder) throw httpError(404, 'Workorder not found');
    res.json(workorder);
  })
);

// POST /api/workorders
workordersRouter.post(
  '/',
  [
    body('project').isMongoId(),
    body('contract').optional().isMongoId(),
    body('workDayHours').optional().isFloat({ min: 1 }),
    body('crewSize').optional().isFloat({ min: 1 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const projectDoc = await findProjectById(req.body.project);
    if (!projectDoc) throw httpError(404, 'Project not found');

    const lineItems: any[] = req.body.lineItems ?? [];
    const activityIds  = collectActivityIds(lineItems);
    const activityDocs = activityIds.length ? await findActivitiesByIds(activityIds) : [];
    const activityMap  = new Map<string, PricingTableActivity>(
      activityDocs.map(a => [String((a as any)._id), toEngineActivity(a)])
    );

    const engineForm: WorkorderForm = {
      project:       String(projectDoc._id),
      projectDisplayName: projectDoc.title,
      projectID:     String(projectDoc._id),
      roundTrip:     projectDoc.roundTrip,
      workorderNotes: req.body.workorderNotes ?? '',
      workDayHours:  req.body.workDayHours ?? 8,
      crewSize:      req.body.crewSize     ?? 1,
      lineItems:     lineItems,
      totalManHours:        0, averageHourlyRate:    0,
      priceSubtotal:        0, totalVisits:          0,
      totalVisitsRoundedUp: 0, onsiteCrewHours:      0,
      totalTravelHours:     0, travelPrice:          0,
      totalWorkorderPrice:  0, totalWorkorderCost:   0,
      totalWorkorderProfit: 0, percentProfit:        0,
    };

    const recalculated = recalcWorkorder(engineForm, activityMap, toEngineProject(projectDoc));

    const workorderNumber = await generateWorkorderNumber();
    let workorder;
    try {
      workorder = await createWorkorder({
      workorderNumber,
      project:          new Types.ObjectId(req.body.project),
      contract:         req.body.contract ? new Types.ObjectId(req.body.contract) : null,
      projectDisplayName: projectDoc.title,
      roundTrip:        projectDoc.roundTrip,
      workorderNotes:   req.body.workorderNotes ?? '',
      workDayHours:     recalculated.workDayHours,
      crewSize:         recalculated.crewSize,
      status:           'Draft',
      lineItems:        recalculated.lineItems,
      totalManHours:        recalculated.totalManHours,
      averageHourlyRate:    recalculated.averageHourlyRate,
      priceSubtotal:        recalculated.priceSubtotal,
      totalVisits:          recalculated.totalVisits,
      totalVisitsRoundedUp: recalculated.totalVisitsRoundedUp,
      onsiteCrewHours:      recalculated.onsiteCrewHours,
      totalTravelHours:     recalculated.totalTravelHours,
      travelPrice:          recalculated.travelPrice,
      totalWorkorderPrice:  recalculated.totalWorkorderPrice,
      totalWorkorderCost:   recalculated.totalWorkorderCost,
      totalWorkorderProfit: recalculated.totalWorkorderProfit,
      percentProfit:        recalculated.percentProfit,
      createdBy: req.body.createdBy ?? '',
    });
    } catch (err: any) {
      if (err.code === 11000) throw httpError(409, 'Workorder number conflict — please retry');
      throw err;
    }

    res.status(201).json(workorder);
  })
);

// PUT /api/workorders/:id
workordersRouter.put(
  '/:id',
  [
    param('id').isMongoId(),
    body('workDayHours').optional().isFloat({ min: 1 }),
    body('crewSize').optional().isFloat({ min: 1 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const existing = await findWorkorderById(req.params.id as string);
    if (!existing) throw httpError(404, 'Workorder not found');
    if (['Completed', 'Cancelled'].includes(existing.status)) {
      throw httpError(409, `Cannot edit a ${existing.status} workorder`);
    }

    const projectDoc = await findProjectById(extractProjectId(existing.project));
    if (!projectDoc) throw httpError(404, 'Project not found');

    const lineItems: any[] = req.body.lineItems ?? existing.lineItems;
    const activityIds  = collectActivityIds(lineItems);
    const activityDocs = activityIds.length ? await findActivitiesByIds(activityIds) : [];
    const activityMap  = new Map<string, PricingTableActivity>(
      activityDocs.map(a => [String((a as any)._id), toEngineActivity(a)])
    );

    const engineForm: WorkorderForm = {
      project:       String(projectDoc._id),
      projectDisplayName: projectDoc.title,
      projectID:     String(projectDoc._id),
      roundTrip:     projectDoc.roundTrip,
      workorderNotes: req.body.workorderNotes ?? existing.workorderNotes,
      workDayHours:  req.body.workDayHours ?? existing.workDayHours,
      crewSize:      req.body.crewSize     ?? existing.crewSize,
      lineItems,
      totalManHours: 0, averageHourlyRate: 0, priceSubtotal: 0,
      totalVisits: 0, totalVisitsRoundedUp: 0, onsiteCrewHours: 0,
      totalTravelHours: 0, travelPrice: 0, totalWorkorderPrice: 0,
      totalWorkorderCost: 0, totalWorkorderProfit: 0, percentProfit: 0,
    };

    const recalculated = recalcWorkorder(engineForm, activityMap, toEngineProject(projectDoc));

    const scheduledDate = req.body.scheduledDate ? new Date(req.body.scheduledDate) : existing.scheduledDate;
    if (req.body.scheduledDate && isNaN(scheduledDate!.getTime())) {
      throw httpError(400, 'scheduledDate must be a valid date');
    }

    const updated = await saveWorkorder(req.params.id as string, {
      workDayHours:         recalculated.workDayHours,
      crewSize:             recalculated.crewSize,
      lineItems:            recalculated.lineItems,
      workorderNotes:       req.body.workorderNotes ?? existing.workorderNotes,
      scheduledDate,
      totalManHours:        recalculated.totalManHours,
      averageHourlyRate:    recalculated.averageHourlyRate,
      priceSubtotal:        recalculated.priceSubtotal,
      totalVisits:          recalculated.totalVisits,
      totalVisitsRoundedUp: recalculated.totalVisitsRoundedUp,
      onsiteCrewHours:      recalculated.onsiteCrewHours,
      totalTravelHours:     recalculated.totalTravelHours,
      travelPrice:          recalculated.travelPrice,
      totalWorkorderPrice:  recalculated.totalWorkorderPrice,
      totalWorkorderCost:   recalculated.totalWorkorderCost,
      totalWorkorderProfit: recalculated.totalWorkorderProfit,
      percentProfit:        recalculated.percentProfit,
      updatedBy: req.body.updatedBy ?? '',
    });
    if (!updated) throw httpError(404, 'Workorder not found');

    res.json(updated);
  })
);

// POST /api/workorders/:id/transition
const VALID_TRANSITIONS: Record<WorkorderWorkflowStatus, WorkorderWorkflowStatus[]> = {
  Draft:             ['PendingActivation', 'Cancelled'],
  PendingActivation: ['Scheduled', 'Draft', 'Cancelled'],
  Scheduled:         ['InProgress', 'Cancelled'],
  InProgress:        ['PendingCompletion', 'Scheduled'],
  PendingCompletion: ['Completed', 'InProgress'],
  Completed:         [],
  Cancelled:         [],
};

workordersRouter.post(
  '/:id/transition',
  [
    param('id').isMongoId(),
    body('to').isIn(['Draft','PendingActivation','Scheduled','InProgress','PendingCompletion','Completed','Cancelled']),
    body('updatedBy').optional().isString(),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const workorder = await findWorkorderById(req.params.id as string);
    if (!workorder) throw httpError(404, 'Workorder not found');

    const to = req.body.to as WorkorderWorkflowStatus;
    if (!VALID_TRANSITIONS[workorder.status].includes(to)) {
      throw httpError(409, `Cannot transition from ${workorder.status} to ${to}`);
    }

    const updated = await transitionWorkorderStatus(
      req.params.id as string,
      workorder.status,
      to,
      req.body.updatedBy ?? ''
    );
    if (!updated) throw httpError(409, 'Workorder status changed concurrently — please reload');

    res.json(updated);
  })
);

// ─────────────────────────────────────────────────────────────
// Local helpers
// ─────────────────────────────────────────────────────────────

async function generateWorkorderNumber(): Promise<string> {
  const { Workorder } = await import('../../db/schemas');
  const year = new Date().getFullYear();
  const count = await Workorder.countDocuments();
  return `WO-${year}-${String(count + 1).padStart(4, '0')}`;
}
