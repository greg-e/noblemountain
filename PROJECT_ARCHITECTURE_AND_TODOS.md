# Project Architecture And Todos

## Project Summary

This repository contains a modernization effort for a SharePoint 2010 + InfoPath 2010 landscape contracting system.

Legacy source assets live in `realtimelandscape/` and include the original InfoPath forms and SharePoint package artifacts.

The replacement system is split into two TypeScript applications:

- `realtimelandscape-web/`: Express + MongoDB backend API and calculation engine
- `realtimelandscape-web-ui/`: React + Vite frontend application

The core migration goal is to preserve the original business logic and workflow behavior while replacing the SharePoint/InfoPath runtime with a modern web stack.

## Current Architecture

### Legacy Source

- `realtimelandscape/`
- Contains the original `.xsn` InfoPath forms and the SharePoint `.wsp`
- Generated extraction output under `realtimelandscape/_extracted/` is intentionally ignored at the repo level and is no longer tracked by git

### Backend

- Path: `realtimelandscape-web/`
- Stack: Node.js, Express, TypeScript, Mongoose, Jest
- Database model: document-oriented MongoDB design
- Pattern: calculation engine is the single source of truth for all derived values

#### Backend responsibilities

- Translate InfoPath formulas into deterministic TypeScript functions
- Persist contracts and workorders as full embedded documents
- Expose REST endpoints for reference data, contracts, and workorders
- Enforce workflow transitions with optimistic concurrency
- Recalculate derived fields on create and update operations

#### Backend structure

- `src/types/`
  Shared domain types used by the engine and routes
- `src/engine/calculations.ts`
  Full calculation engine translated from InfoPath formulas
- `src/db/schemas/`
  Mongoose schemas for activities, projects, plants, contracts, and workorders
- `src/db/repositories/`
  Repository layer for CRUD and workflow transition operations
- `src/api/routes/`
  Express route handlers for API endpoints
- `src/api/middleware/`
  Async wrapper, validation, and centralized error handling
- `src/db/seed/seed-activities.ts`
  Seed script for sample activity pricing data

#### Backend data model decisions

- Contracts and workorders are stored as single embedded documents rather than normalized relational records
- Line items are embedded inside parent documents because they are not queried independently
- Reference data such as activities, projects, and plants live in separate collections
- Calculated fields are stored on documents for reporting and display, but are always recomputed through the engine on save/update

### Frontend

- Path: `realtimelandscape-web-ui/`
- Stack: React 18, React Router, Vite, TypeScript
- Pattern: typed API client + route-level pages

#### Frontend responsibilities

- Display dashboard and operational lists
- Edit contracts and eventually workorders
- Call the backend API using typed fetch wrappers
- Show recalculated totals returned from the backend after save/transition operations

#### Frontend structure

- `src/api/client.ts`
  Typed API wrapper for activities, projects, plants, contracts, and workorders
- `src/components/Layout.tsx`
  Application shell with header, sidebar, and footer
- `src/pages/Dashboard.tsx`
  Status overview page
- `src/pages/ContractsList.tsx`
  Contract list and filtering
- `src/pages/ContractDetail.tsx`
  Contract detail and edit flow
- `src/pages/WorkordersList.tsx`
  Workorder list and filtering
- `src/types.ts`
  Frontend type mirror of backend models

## Completed Work

### Backend completed

- Domain type definitions created for contracts, workorders, reference data, monthly values, estimate groups, and take-off structures
- Calculation engine implemented in TypeScript from the original InfoPath formulas
- Contract, workorder, activity, project, and plant schemas created in Mongoose
- Repository layer created for querying, persisting, and transitioning workflow state
- Express API created for activities, projects, plants, contracts, and workorders
- Validation and error handling middleware added
- Activity seed script created
- **Type alignment (April 2026):** All domain ID fields changed from `number` to `string` to match MongoDB ObjectId strings — `PricingTableActivity.id`, `Project.id`, `PlantItem.id`, `ContractLineItem.activity`, `WorkorderLineItem.activity`, `ContractForm.projectName`, `WorkorderForm.project`
- **Engine signature alignment (April 2026):** `recalcEstimateGroup` and `recalcWorkorder` map parameters changed from `Map<number, PricingTableActivity>` to `Map<string, PricingTableActivity>`
- **Route recalculation fixes (April 2026):** Contract and workorder create/update routes now pass the activity map directly (was incorrectly spreading to an array) and construct fully valid `WorkorderForm` payloads with all required fields
- **Schema typing fixes (April 2026):** Embedded subdocument array fields in `contract.schema.ts` and `workorder.schema.ts` cast to `as any` to resolve Mongoose generic incompatibility with ts-node
- **Route param type fixes (April 2026):** `req.params.id` casts added in activities and projects routes

### Frontend completed

- React + Vite + TypeScript frontend scaffold created
- Shared typed API client implemented
- Layout shell created
- Dashboard created
- Contracts list page created
- Contract detail and edit page created
- Workorders list page created
- **Workorder detail and edit page** (`WorkorderDetail.tsx`): status transitions, line item editing, metrics display
- **Contract creation flow** (`ContractNew.tsx`): new contract form with project selection and API call
- **Workorder creation flow** (`WorkorderNew.tsx`): new workorder form with project selection and API call
- **Admin pages**: `ActivitiesAdmin.tsx`, `ProjectsAdmin.tsx`, `PlantsAdmin.tsx` — list, filter, create, edit, deactivate
- **All routes registered** in `App.tsx`
- **Frontend UI/UX test suite**: 10 test files covering dashboard, lists, detail pages, creation forms, and admin pages — 92/92 tests passing with Vitest + React Testing Library + jsdom
- **Vite config typing fix**: `defineConfig` imported from `vitest/config` to resolve editor-level type error for the `test` block

### Repository and CI completed

- Git repository initialized and pushed to GitHub
- Remote configured at `origin`
- Root `.gitignore` added
- Generated SharePoint extraction output removed from tracking and ignored going forward
- **GitHub Actions CI workflow** (`.github/workflows/ci.yml`): runs backend Jest and frontend Vitest on every push and pull request

## Calculation Engine Status

- Implemented in `realtimelandscape-web/src/engine/calculations.ts`
- Reproduces all original InfoPath business logic
- Used by API create/update flows before persistence; result is stored on the document
- **Current test status: 53/53 passing**
- Engine unit tests updated to use string-keyed activity maps and string fixture IDs to match domain type alignment

## API Status

### Contracts API

- `GET /api/contracts`
- `GET /api/contracts/stats`
- `GET /api/contracts/:id`
- `POST /api/contracts`
- `PUT /api/contracts/:id`
- `POST /api/contracts/:id/transition`

### Workorders API

- `GET /api/workorders`
- `GET /api/workorders/stats`
- `GET /api/workorders/:id`
- `POST /api/workorders`
- `PUT /api/workorders/:id`
- `POST /api/workorders/:id/transition`

### Reference data APIs

- Activities CRUD
- Projects CRUD
- Plants CRUD

## Workflow State Model

### Contract states

- `Draft`
- `PendingActivation`
- `Active`
- `PendingCompletion`
- `Completed`
- `Cancelled`

### Workorder states

- `Draft`
- `PendingActivation`
- `Scheduled`
- `InProgress`
- `PendingCompletion`
- `Completed`
- `Cancelled`

Workflow transitions are enforced in the API layer using explicit transition maps and optimistic concurrency checks.

## Current Validation Status

### Backend

Run from `realtimelandscape-web/`:

```powershell
.\node_modules\.bin\tsc.cmd --noEmit
.\node_modules\.bin\jest.cmd --no-coverage
```

**Current status:**
- TypeScript compile: clean (0 errors)
- Jest tests: 53/53 passing

### Frontend

Run from `realtimelandscape-web-ui/`:

```powershell
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH","User")
.\node_modules\.bin\tsc.cmd --noEmit
.\node_modules\.bin\vitest.cmd run
```

**Current status:**
- TypeScript compile: clean
- Vitest tests: 92/92 passing

### Runtime readiness

- Frontend dev server starts on `http://localhost:3000` (app shell renders, routes load)
- Backend dev server (`npm run dev`) starts and loads schemas/routes cleanly
- Backend fails to connect to database at startup until `MONGODB_URI` environment variable is set
- Full end-to-end API connectivity requires MongoDB; the compile and logic layers are production-ready

## Frontend Structure (current)

- `src/api/client.ts` — typed API wrapper for activities, projects, plants, contracts, and workorders
- `src/components/Layout.tsx` — application shell with header, sidebar, and footer
- `src/pages/Dashboard.tsx` — status overview
- `src/pages/ContractsList.tsx` — contract list and filtering
- `src/pages/ContractDetail.tsx` — contract detail, edit, and workflow transitions
- `src/pages/ContractNew.tsx` — create new contract
- `src/pages/WorkordersList.tsx` — workorder list and filtering
- `src/pages/WorkorderDetail.tsx` — workorder detail, line item editing, and workflow transitions
- `src/pages/WorkorderNew.tsx` — create new workorder
- `src/pages/ActivitiesAdmin.tsx` — activities reference data admin (list, create, edit, deactivate)
- `src/pages/ProjectsAdmin.tsx` — projects reference data admin
- `src/pages/PlantsAdmin.tsx` — plants reference data admin
- `src/App.tsx` — all routes registered
- `src/types.ts` — frontend type mirror of backend models
- `src/__tests__/` — 10 test files, 92/92 tests passing
- `vite.config.ts` — Vite dev/proxy/Vitest config (`defineConfig` imported from `vitest/config`)

## Outstanding Todos

### Immediate environment setup

- Set `MONGODB_URI` environment variable locally (e.g., via `.env` file loaded by `dotenv`) to allow backend to connect
- Optionally create a `.env.example` or document the required variables in README
- Run seeding script (`src/db/seed/seed-activities.ts`) once MongoDB is connected to populate activities reference data
- Verify end-to-end API calls from the frontend in browser after backend is connected

### Backend follow-up

- Replace seeded sample activities with full extracted production pricing data when ready
- Consider adding API integration/endpoint tests for broader regression protection
- Verify whether take-off editing UI is needed as part of the contract flow

### Frontend follow-up

- Replace any remaining raw anchor `<a>` navigation with React Router `<Link>` or `useNavigate` where appropriate
- Add loading/error states to admin pages if not already present
- Confirm contract and workorder detail pages correctly display recalculated totals from API responses

### Production readiness

- Configure `MONGODB_URI` for the deployment environment
- Review CORS and Helmet settings in `server.ts` for production origins
- Ensure CI workflow passes in GitHub Actions after the latest backend type fixes are pushed

## Known Decisions And Constraints

- Use MongoDB document storage rather than a relational schema
- Keep calculation logic centralized in the backend engine rather than duplicating it in the frontend
- Preserve original workflow intent from SharePoint/InfoPath while simplifying delivery to REST + React
- Keep generated extraction output out of source control
- Use strict TypeScript on both backend and frontend
- All domain IDs are MongoDB ObjectId strings — never numeric — to avoid route-to-engine type mismatches
- Embedded subdocument arrays in Mongoose schemas require `as any` cast to satisfy TypeScript strict generics for current Mongoose version
- Vitest config must use `defineConfig` from `vitest/config` (not from `vite`) to avoid type errors in the `test` block

## Suggested Continuation Path

When work resumes, continue in this order:

1. Set `MONGODB_URI` locally and confirm backend connects and seeds cleanly
2. Verify end-to-end flows in the browser — dashboard → contracts list → contract detail → workorder detail
3. Push pending backend type-fix commits to GitHub and confirm CI passes
4. Address any remaining frontend UX polish (loading states, navigation cleanup)
5. Prepare production deployment configuration when target environment is ready