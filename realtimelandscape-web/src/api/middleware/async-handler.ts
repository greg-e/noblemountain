import { Request, Response, NextFunction } from 'express';

/**
 * Wrapper that catches async errors and forwards them to Express error handler.
 * Eliminates try/catch boilerplate in every route handler.
 */
export function asyncHandler(
  fn: (req: Request, res: Response, next: NextFunction) => Promise<unknown>
) {
  return (req: Request, res: Response, next: NextFunction): void => {
    fn(req, res, next).catch(next);
  };
}
