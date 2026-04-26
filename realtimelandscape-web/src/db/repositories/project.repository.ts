import { Types } from 'mongoose';
import { Project, IProject } from '../schemas';

export interface ProjectFilters {
  isActive?: boolean;
  contractStatus?: IProject['contractStatus'];
  search?: string;    // title or clientName contains
}

export async function findProjects(filters: ProjectFilters = {}): Promise<IProject[]> {
  const query: Record<string, any> = {};

  if (filters.isActive !== undefined) query.isActive = filters.isActive;
  if (filters.contractStatus)         query.contractStatus = filters.contractStatus;
  if (filters.search) {
    query.$or = [
      { title:      { $regex: filters.search, $options: 'i' } },
      { clientName: { $regex: filters.search, $options: 'i' } },
    ];
  }

  return Project.find(query).sort({ title: 1 }).lean();
}

export async function findProjectById(id: string | Types.ObjectId): Promise<IProject | null> {
  return Project.findById(id).lean();
}

export async function findProjectByCode(code: string): Promise<IProject | null> {
  return Project.findOne({ projectCode: code.toUpperCase() }).lean();
}

export async function createProject(data: Partial<IProject>): Promise<IProject> {
  const doc = new Project(data);
  return doc.save();
}

export async function updateProject(
  id: string | Types.ObjectId,
  data: Partial<IProject>
): Promise<IProject | null> {
  return Project.findByIdAndUpdate(id, { $set: data }, { new: true, runValidators: true }).lean();
}
