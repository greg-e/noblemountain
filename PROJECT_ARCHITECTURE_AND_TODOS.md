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
- Express API created for:
  - activities
  - projects
  - plants
  - contracts
  - workorders
- Validation and error handling middleware added
- Activity seed script created

### Frontend completed

- React + Vite + TypeScript frontend scaffold created
- Shared typed API client implemented
- Layout shell created
- Dashboard created
- Contracts list page created
- Workorders list page created
- Contract detail and edit page created

### Repository and cleanup work completed

- Git repository initialized and pushed to GitHub
- Remote configured at `origin`
- Root `.gitignore` added
- Generated SharePoint extraction output removed from tracking and ignored going forward

## Calculation Engine Status

- The calculation engine is implemented in `realtimelandscape-web/src/engine/calculations.ts`
- It is intended to reproduce the original InfoPath business logic
- The engine is used by API create/update flows before persistence
- Backend test status previously verified: `53/53` tests passing

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

### Verified backend commands

Run from `realtimelandscape-web/`:

```powershell
.\node_modules\.bin\tsc.cmd --noEmit
.\node_modules\.bin\jest.cmd --no-coverage
```

Previously verified status:

- backend TypeScript compile clean
- backend Jest tests passing

### Verified frontend command

Run from `realtimelandscape-web-ui/`:

```powershell
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH","User")
.\node_modules\.bin\tsc.cmd --noEmit
```

Current verified status:

- frontend TypeScript compile clean after the contract detail/edit page was added

### Frontend compile fixes made during current work

- Added `moduleResolution: "bundler"` to the frontend `tsconfig.json`
- Added `src/vite-env.d.ts` for CSS module typing
- Fixed `src/main.tsx` import to avoid `.tsx` extension import errors

## Current Working Tree Status

At the time this document was created, the contract detail/edit slice exists in the working tree and has been typechecked locally, but may not yet be committed depending on when this document is read.

Files touched in the current contract detail/edit slice:

- `realtimelandscape-web-ui/src/App.tsx`
- `realtimelandscape-web-ui/src/main.tsx`
- `realtimelandscape-web-ui/src/types.ts`
- `realtimelandscape-web-ui/tsconfig.json`
- `realtimelandscape-web-ui/src/pages/ContractDetail.tsx`
- `realtimelandscape-web-ui/src/vite-env.d.ts`

## Outstanding Todos

### Highest priority

- Build the workorder detail and edit page

### Next frontend tasks

- Add route and page for workorder detail/edit
- Support workorder line item editing
- Support workorder workflow transitions from the detail page
- Display recalculated workorder totals after save

### Secondary frontend tasks

- Implement contract creation flow for `/contracts/new`
- Implement workorder creation flow for `/workorders/new`
- Replace raw anchor navigation with router-native navigation where appropriate
- Add project, activity, and plant management pages if needed

### Backend and data follow-up

- Replace seeded sample activities with full extracted production pricing data when ready
- Verify whether additional take-off editing UI is required for the contract flow
- Consider adding endpoint-level tests for the API surface if broader regression protection is needed

## Known Decisions And Constraints

- Use MongoDB document storage rather than a relational schema
- Keep calculation logic centralized in the backend engine rather than duplicating it in the frontend
- Preserve original workflow intent from SharePoint/InfoPath while simplifying delivery to REST + React
- Keep generated extraction output out of source control
- Use strict TypeScript on both backend and frontend

## Suggested Continuation Path

When work resumes, continue in this order:

1. Build the workorder detail/edit page to mirror the contract detail flow
2. Add any missing workorder-specific type support needed in the frontend
3. Typecheck the frontend after the workorder page is added
4. Commit the contract detail/edit slice and documentation changes if not already committed
5. Continue with creation flows or admin/reference-data pages after both detail/edit pages exist