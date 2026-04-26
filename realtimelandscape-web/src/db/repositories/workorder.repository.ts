import { Types } from 'mongoose';
import { Workorder, IWorkorder, WorkorderWorkflowStatus } from '../schemas';

export interface WorkorderFilters {
  project?:  string | Types.ObjectId;
  contract?: string | Types.ObjectId;
  status?:   WorkorderWorkflowStatus;
  scheduledDateFrom?: Date;
  scheduledDateTo?:   Date;
}

// ── List / query ─────────────────────────────────────────────

export async function findWorkorders(filters: WorkorderFilters = {}): Promise<IWorkorder[]> {
  const query: Record<string, any> = {};

  if (filters.project)  query.project  = filters.project;
  if (filters.contract) query.contract = filters.contract;
  if (filters.status)   query.status   = filters.status;

  if (filters.scheduledDateFrom || filters.scheduledDateTo) {
    query.scheduledDate = {};
    if (filters.scheduledDateFrom) query.scheduledDate.$gte = filters.scheduledDateFrom;
    if (filters.scheduledDateTo)   query.scheduledDate.$lte = filters.scheduledDateTo;
  }

  return Workorder.find(query)
    .sort({ scheduledDate: 1, createdAt: -1 })
    .populate('project', 'title projectCode clientName')
    .lean();
}

export async function findWorkorderById(id: string | Types.ObjectId): Promise<IWorkorder | null> {
  return Workorder.findById(id)
    .populate('project')
    .populate('contract', 'contractNumber status')
    .lean();
}

export async function findWorkorderByNumber(workorderNumber: string): Promise<IWorkorder | null> {
  return Workorder.findOne({ workorderNumber }).lean();
}

// ── Create ────────────────────────────────────────────────────

export async function createWorkorder(data: Partial<IWorkorder>): Promise<IWorkorder> {
  const doc = new Workorder(data);
  return doc.save();
}

// ── Update (full document save after recalculation) ───────────
// The caller is responsible for running recalcWorkorder()
// from the calculation engine before calling this function.

export async function saveWorkorder(
  id: string | Types.ObjectId,
  data: Partial<IWorkorder>
): Promise<IWorkorder | null> {
  return Workorder.findByIdAndUpdate(
    id,
    { $set: data },
    { new: true, runValidators: true }
  ).lean();
}

// ── Workflow transitions ──────────────────────────────────────

export async function transitionWorkorderStatus(
  id: string | Types.ObjectId,
  from: WorkorderWorkflowStatus,
  to: WorkorderWorkflowStatus,
  updatedBy: string
): Promise<IWorkorder | null> {
  const extra: Partial<IWorkorder> = { updatedBy };
  if (to === 'Completed') extra.completedDate = new Date();

  return Workorder.findOneAndUpdate(
    { _id: id, status: from },          // optimistic concurrency
    { $set: { status: to, ...extra } },
    { new: true }
  ).lean();
}

// ── Reporting helpers ─────────────────────────────────────────

export async function countWorkordersByStatus(): Promise<Record<WorkorderWorkflowStatus, number>> {
  const rows = await Workorder.aggregate<{ _id: WorkorderWorkflowStatus; count: number }>([
    { $group: { _id: '$status', count: { $sum: 1 } } },
  ]);

  const defaults: Record<WorkorderWorkflowStatus, number> = {
    Draft: 0, PendingActivation: 0, Scheduled: 0, InProgress: 0,
    PendingCompletion: 0, Completed: 0, Cancelled: 0,
  };
  for (const row of rows) defaults[row._id] = row.count;
  return defaults;
}
