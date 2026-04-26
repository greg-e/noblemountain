import mongoose from 'mongoose';

let connectionState: 'disconnected' | 'connecting' | 'connected' = 'disconnected';

/**
 * Connect to MongoDB. Safe to call multiple times — skips if already connected.
 * Pass MONGODB_URI via environment variable (never hardcode credentials).
 */
export async function connectDB(uri?: string): Promise<void> {
  if (connectionState === 'connected') return;

  const connectionUri = uri ?? process.env.MONGODB_URI;
  if (!connectionUri) {
    throw new Error('MONGODB_URI environment variable is not set');
  }

  connectionState = 'connecting';

  mongoose.connection.on('connected', () => {
    connectionState = 'connected';
    console.log('[db] MongoDB connected');
  });

  mongoose.connection.on('error', (err) => {
    console.error('[db] MongoDB connection error:', err.message);
    connectionState = 'disconnected';
  });

  mongoose.connection.on('disconnected', () => {
    connectionState = 'disconnected';
  });

  await mongoose.connect(connectionUri, {
    // Fail fast if DNS can't resolve — useful in dev
    serverSelectionTimeoutMS: 5000,
  });
}

export async function disconnectDB(): Promise<void> {
  if (connectionState === 'disconnected') return;
  await mongoose.disconnect();
}
