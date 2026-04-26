import { Request, Response, NextFunction } from 'express';

export interface ApiError extends Error {
  statusCode?: number;
}

/**
 * Central error handler — must be the last app.use() call in app.ts.
 * Returns a consistent JSON error envelope.
 */
// eslint-disable-next-line @typescript-eslint/no-unused-vars
export function errorHandler(err: ApiError, _req: Request, res: Response, _next: NextFunction): void {
  const status = err.statusCode ?? 500;
  const message = status < 500 ? err.message : 'Internal server error';

  if (status >= 500) {
    console.error('[error]', err);
  }

  res.status(status).json({ error: message });
}

/**
 * Convenience factory for throwing known HTTP errors from route handlers.
 */
export function httpError(statusCode: number, message: string): ApiError {
  const err: ApiError = new Error(message);
  err.statusCode = statusCode;
  return err;
}
