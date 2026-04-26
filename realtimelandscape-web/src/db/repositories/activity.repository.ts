import { Types } from 'mongoose';
import { Activity, IActivity } from '../schemas';

// ── Activity Repository ───────────────────────────────────────
// All database access for the Activity (pricing table) collection.

export interface ActivityFilters {
  activityCategory?: string;
  isActive?: boolean;
  search?: string;    // title contains (case-insensitive)
}

export async function findActivities(filters: ActivityFilters = {}): Promise<IActivity[]> {
  const query: Record<string, any> = {};

  if (filters.activityCategory !== undefined) {
    query.activityCategory = filters.activityCategory;
  }
  if (filters.isActive !== undefined) {
    query.isActive = filters.isActive;
  }
  if (filters.search) {
    query.title = { $regex: filters.search, $options: 'i' };
  }

  return Activity.find(query).sort({ activityCategory: 1, title: 1 }).lean();
}

export async function findActivityById(id: string | Types.ObjectId): Promise<IActivity | null> {
  return Activity.findById(id).lean();
}

export async function findActivitiesByIds(ids: (string | Types.ObjectId)[]): Promise<IActivity[]> {
  return Activity.find({ _id: { $in: ids } }).lean();
}

export async function createActivity(data: Partial<IActivity>): Promise<IActivity> {
  const doc = new Activity(data);
  return doc.save();
}

export async function updateActivity(
  id: string | Types.ObjectId,
  data: Partial<IActivity>
): Promise<IActivity | null> {
  return Activity.findByIdAndUpdate(id, { $set: data }, { new: true, runValidators: true }).lean();
}

export async function deactivateActivity(id: string | Types.ObjectId): Promise<IActivity | null> {
  return Activity.findByIdAndUpdate(id, { $set: { isActive: false } }, { new: true }).lean();
}

export async function listActivityCategories(): Promise<string[]> {
  return Activity.distinct('activityCategory', { isActive: true });
}
