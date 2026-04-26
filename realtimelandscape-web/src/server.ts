import 'dotenv/config';
import { connectDB } from './db/connection';
import app from './api/app';

const PORT = parseInt(process.env.PORT ?? '3001', 10);

async function start(): Promise<void> {
  await connectDB();

  app.listen(PORT, () => {
    console.log(`[server] Listening on http://localhost:${PORT}`);
    console.log(`[server] API base: http://localhost:${PORT}/api`);
  });
}

start().catch((err) => {
  console.error('[server] Failed to start:', err);
  process.exit(1);
});
