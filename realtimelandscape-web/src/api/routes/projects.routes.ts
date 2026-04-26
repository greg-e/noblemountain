import { Router } from 'express';
import { body, param } from 'express-validator';
import { asyncHandler } from '../middleware/async-handler';
import { validate } from '../middleware/validate';
import { httpError } from '../middleware/error-handler';
import {
  findProjects,
  findProjectById,
  createProject,
  updateProject,
} from '../../db/repositories';

export const projectsRouter = Router();

// GET /api/projects?isActive=true&contractStatus=Active&search=oak
projectsRouter.get(
  '/',
  asyncHandler(async (req, res) => {
    const { isActive, contractStatus, search } = req.query as Record<string, string>;
    const projects = await findProjects({
      isActive: isActive !== undefined ? isActive !== 'false' : undefined,
      contractStatus: contractStatus as any || undefined,
      search: search || undefined,
    });
    res.json(projects);
  })
);

// GET /api/projects/:id
projectsRouter.get(
  '/:id',
  param('id').isMongoId(),
  validate,
  asyncHandler(async (req, res) => {
    const project = await findProjectById(req.params.id as string);
    if (!project) throw httpError(404, 'Project not found');
    res.json(project);
  })
);

// POST /api/projects
projectsRouter.post(
  '/',
  [
    body('title').trim().notEmpty(),
    body('projectCode').trim().notEmpty(),
    body('roundTrip').isFloat({ min: 0 }),
    body('clientName').optional().trim(),
    body('address').optional().trim(),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const project = await createProject(req.body);
    res.status(201).json(project);
  })
);

// PATCH /api/projects/:id
projectsRouter.patch(
  '/:id',
  [
    param('id').isMongoId(),
    body('roundTrip').optional().isFloat({ min: 0 }),
    body('contractStatus').optional().isIn(['Pending', 'Active', 'Completed', 'Cancelled']),
  ],
  validate,
  asyncHandler(async (req, res) => {
    const updated = await updateProject(req.params.id as string, req.body);
    if (!updated) throw httpError(404, 'Project not found');
    res.json(updated);
  })
);
