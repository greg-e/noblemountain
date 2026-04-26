import express from 'express';
import cors from 'cors';
import helmet from 'helmet';

import { activitiesRouter } from './routes/activities.routes';
import { projectsRouter }   from './routes/projects.routes';
import { plantsRouter }     from './routes/plants.routes';
import { contractsRouter }  from './routes/contracts.routes';
import { workordersRouter } from './routes/workorders.routes';
import { errorHandler }     from './middleware/error-handler';

const app = express();

// ── Security & parsing ────────────────────────────────────────
app.use(helmet());
app.use(cors());
app.use(express.json({ limit: '2mb' }));

// ── Health check ──────────────────────────────────────────────
app.get('/health', (_req, res) => {
  res.json({ status: 'ok', timestamp: new Date().toISOString() });
});

// ── API routes ────────────────────────────────────────────────
const api = express.Router();
api.use('/activities', activitiesRouter);
api.use('/projects',   projectsRouter);
api.use('/plants',     plantsRouter);
api.use('/contracts',  contractsRouter);
api.use('/workorders', workordersRouter);

app.use('/api', api);

// 404 for unknown routes
app.use((_req, res) => {
  res.status(404).json({ error: 'Not found' });
});

// ── Error handler (must be last) ─────────────────────────────
app.use(errorHandler);

export default app;
