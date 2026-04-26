import { Types } from 'mongoose';
import { Contract, IContract, ContractWorkflowStatus } from '../schemas';

export interface ContractFilters {
  project?: string | Types.ObjectId;
  status?:  ContractWorkflowStatus;
}

// ── List / query ─────────────────────────────────────────────

export async function findContracts(filters: ContractFilters = {}): Promise<IContract[]> {
  const query: Record<string, any> = {};

  if (filters.project) query.project = filters.project;
  if (filters.status)  query.status  = filters.status;

  return Contract.find(query)
    .sort({ createdAt: -1 })
    .populate('project', 'title projectCode clientName')
    .lean();
}

export async function findContractById(id: string | Types.ObjectId): Promise<IContract | null> {
  return Contract.findById(id)
    .populate('project')
    .lean();
}

export async function findContractByNumber(contractNumber: string): Promise<IContract | null> {
  return Contract.findOne({ contractNumber }).lean();
}

// ── Create ────────────────────────────────────────────────────

export async function createContract(data: Partial<IContract>): Promise<IContract> {
  const doc = new Contract(data);
  return doc.save();
}

// ── Update (full document save after recalculation) ───────────
// The caller is responsible for running recalcEstimateGroup()
// from the calculation engine before calling this function.

export async function saveContract(
  id: string | Types.ObjectId,
  data: Partial<IContract>
): Promise<IContract | null> {
  return Contract.findByIdAndUpdate(
    id,
    { $set: data },
    { new: true, runValidators: true }
  ).lean();
}

// ── Workflow transitions ──────────────────────────────────────

export async function transitionContractStatus(
  id: string | Types.ObjectId,
  from: ContractWorkflowStatus,
  to: ContractWorkflowStatus,
  updatedBy: string
): Promise<IContract | null> {
  const extra: Partial<IContract> = { updatedBy };
  if (to === 'Active')    extra.activatedAt = new Date();
  if (to === 'Completed') extra.completedAt = new Date();

  return Contract.findOneAndUpdate(
    { _id: id, status: from },          // optimistic concurrency: only update if still in `from`
    { $set: { status: to, ...extra } },
    { new: true }
  ).lean();
}

// ── Reporting helpers ─────────────────────────────────────────

export async function countContractsByStatus(): Promise<Record<ContractWorkflowStatus, number>> {
  const rows = await Contract.aggregate<{ _id: ContractWorkflowStatus; count: number }>([
    { $group: { _id: '$status', count: { $sum: 1 } } },
  ]);

  const defaults: Record<ContractWorkflowStatus, number> = {
    Draft: 0, PendingActivation: 0, Active: 0,
    PendingCompletion: 0, Completed: 0, Cancelled: 0,
  };
  for (const row of rows) defaults[row._id] = row.count;
  return defaults;
}
