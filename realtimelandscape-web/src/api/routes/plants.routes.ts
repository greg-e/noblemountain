import { Router } from 'express';
import { body, param } from 'express-validator';
import { asyncHandler } from '../middleware/async-handler';
import { validate } from '../middleware/validate';
import { httpError } from '../middleware/error-handler';
import { Plant } from '../../db/schemas';

export const plantsRouter = Router();

// GET /api/plants?category=Tree&isActive=true
plantsRouter.get(
  '/',
  asyncHandler(async (req, res) => {
    const { category, isActive } = req.query as Record<string, string>;
    const filter: Record<string, unknown> = {};
    if (category)  filter.category = category;
    if (isActive !== undefined) filter.isActive = isActive !== 'false';

    const plants = await Plant.find(filter).sort({ category: 1, title: 1 }).lean();
    res.json(plants);
  })
);

// GET /api/plants/:id
plantsRouter.get(
  '/:id',
  param('id').isMongoId(),
  validate,
  asyncHandler(async (req, res) => {
    const plant = await Plant.findById(req.params.id).lean();
    if (!plant) throw httpError(404, 'Plant not found');
    res.json(plant);
  })
);

// POST /api/plants
plantsRouter.post(
  '/',
  [
    body('title').trim().notEmpty(),
    body('unitCost').optional().isFloat({ min: 0 }),
    body('category').optional().trim(),
    body('botanicalName').optional().trim(),
    body('containerSize').optional().trim(),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const plant = await Plant.create(req.body);
    res.status(201).json(plant);
  })
);

// PATCH /api/plants/:id
plantsRouter.patch(
  '/:id',
  [
    param('id').isMongoId(),
    body('unitCost').optional().isFloat({ min: 0 }),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const updated = await Plant.findByIdAndUpdate(req.params.id, { $set: req.body }, { new: true, runValidators: true }).lean();
    if (!updated) throw httpError(404, 'Plant not found');
    res.json(updated);
  })
);

// DELETE /api/plants/:id  (soft-delete)
plantsRouter.delete(
  '/:id',
  param('id').isMongoId(),
  validate,
  asyncHandler(async (req, res) => {
    const updated = await Plant.findByIdAndUpdate(req.params.id, { $set: { isActive: false } }, { new: true }).lean();
    if (!updated) throw httpError(404, 'Plant not found');
    res.json({ message: 'Plant deactivated', id: req.params.id });
  })
);
