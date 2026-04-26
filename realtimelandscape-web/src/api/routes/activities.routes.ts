import { Router } from 'express';
import { body, param, query } from 'express-validator';
import { asyncHandler } from '../middleware/async-handler';
import { validate } from '../middleware/validate';
import { httpError } from '../middleware/error-handler';
import {
  findActivities,
  findActivityById,
  createActivity,
  updateActivity,
  deactivateActivity,
  listActivityCategories,
} from '../../db/repositories';

export const activitiesRouter = Router();

// GET /api/activities?activityCategory=Turf Management&isActive=true&search=mow
activitiesRouter.get(
  '/',
  asyncHandler(async (req, res) => {
    const { activityCategory, isActive, search } = req.query as Record<string, string>;
    const activities = await findActivities({
      activityCategory: activityCategory || undefined,
      isActive: isActive !== undefined ? isActive !== 'false' : undefined,
      search: search || undefined,
    });
    res.json(activities);
  })
);

// GET /api/activities/categories
activitiesRouter.get(
  '/categories',
  asyncHandler(async (_req, res) => {
    const categories = await listActivityCategories();
    res.json(categories);
  })
);

// GET /api/activities/:id
activitiesRouter.get(
  '/:id',
  param('id').isMongoId(),
  validate,
  asyncHandler(async (req, res) => {
    const activity = await findActivityById(req.params.id);
    if (!activity) throw httpError(404, 'Activity not found');
    res.json(activity);
  })
);

// POST /api/activities
activitiesRouter.post(
  '/',
  [
    body('title').trim().notEmpty(),
    body('activityCategory').trim().notEmpty(),
    body('unit').trim().notEmpty(),
    body('unitCategory').isIn(['Area', 'Linear', 'Count', 'Volume', 'Other']),
    body('unitMultiplier').isFloat({ min: 0 }),
    body('productionRate').isFloat({ min: 0 }),
    body('materialRate').optional().isFloat({ min: 0 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const activity = await createActivity(req.body);
    res.status(201).json(activity);
  })
);

// PATCH /api/activities/:id
activitiesRouter.patch(
  '/:id',
  [
    param('id').isMongoId(),
    body('productionRate').optional().isFloat({ min: 0 }),
    body('materialRate').optional().isFloat({ min: 0 }),
    body('unitMultiplier').optional().isFloat({ min: 0 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const updated = await updateActivity(req.params.id, req.body);
    if (!updated) throw httpError(404, 'Activity not found');
    res.json(updated);
  })
);

// DELETE /api/activities/:id  (soft-delete: sets isActive=false)
activitiesRouter.delete(
  '/:id',
  param('id').isMongoId(),
  validate,
  asyncHandler(async (req, res) => {
    const updated = await deactivateActivity(req.params.id);
    if (!updated) throw httpError(404, 'Activity not found');
    res.json({ message: 'Activity deactivated', id: req.params.id });
  })
);
