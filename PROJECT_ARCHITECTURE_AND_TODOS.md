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
- Sample data seed script created (`seed-sample-data.ts`) with 4 projects, 3 contracts, and multiple workorders
- **Type alignment (April 2026):** All domain ID fields changed from `number` to `string` to match MongoDB ObjectId strings
- **Engine signature alignment (April 2026):** `recalcEstimateGroup` and `recalcWorkorder` map parameters changed from `Map<number, PricingTableActivity>` to `Map<string, PricingTableActivity>`
- **Route recalculation fixes (April 2026):** Contract and workorder create/update routes now pass the activity map correctly and construct fully valid `WorkorderForm` payloads
- **Schema typing fixes (April 2026):** Embedded subdocument array fields cast to `as any` to resolve Mongoose generic incompatibility
- **Route param type fixes (April 2026):** `req.params.id` casts added in activities and projects routes
- **annualPrice formula fix (April 2026):** `annualPrice = unitPrice × quantity × totalFreq` (was missing `× quantity`). Same fix applied to `laborAnnualCost`.
- **Populated project ref fix (April 2026):** `extractProjectId()` helper added to contracts and workorders PUT routes to safely handle populated vs. raw `project` refs during recalculation.
- **Seed data field names fixed (April 2026):** Seed contracts now use `generalLaborCost`/`generalOverheadAndProfit` (were incorrectly `laborRate`/`overheadAndProfit`). Quantities corrected to production units (e.g., 45 MSF not 45,000 SqFt).
- **PUT null guard (April 2026):** `saveContract` and `saveWorkorder` return `null` if the document was deleted between read and update. Routes now throw 404 instead of returning HTTP 200 with a `null` body.
- **Date validation (April 2026):** `scheduledDate` in workorder PUT, and `scheduledDateFrom`/`scheduledDateTo` in workorder GET, are validated before passing to MongoDB. Invalid date strings return 400 instead of silently storing `Invalid Date`.
- **E11000 duplicate key → 409 (April 2026):** `generateContractNumber` and `generateWorkorderNumber` use non-atomic `countDocuments` and can collide under concurrent creates. The unique-index violation is now caught and mapped to a 409 Conflict with a retry message instead of an unhandled 500.
- **CORS_ORIGIN env var (April 2026):** `cors()` previously allowed all origins unconditionally. Now reads `CORS_ORIGIN` from environment; defaults to `*` in dev, set to a domain in production.

### Frontend completed

- React + Vite + TypeScript frontend scaffold created
- Shared typed API client implemented
- Dashboard with clickable stat cards linking to filtered list views
- Contracts and workorders list pages with responsive table + mobile card layouts
- Contract detail and edit page using full-screen `EditLayout` component
- Workorder detail and edit page with status transitions and line item editing
- Contract and workorder creation forms
- Admin pages for activities, projects, and plants
- All routes registered in `App.tsx`
- **UI/UX refactor (April 2026):** Hamburger slide-in drawer nav (replaces persistent sidebar), `EditLayout` for full-screen contract/workorder editing, responsive CSS (table on desktop, card list on mobile), CSS custom properties (`--color-primary`, `--color-bg`, etc.)
- **Header live metrics (April 2026):** `HeaderMetrics` component in `Layout.tsx` replaces the app name with 4 real-time stat chips (Active Contracts, Scheduled, In Progress, Pending Review) fetched from the API on each page load
- **Number input UX (April 2026):** Browser spinner arrows hidden globally via CSS (`input[type="number"]::-webkit-inner-spin-button` etc.). Users type and tab without distraction.
- **Horizontal scroll eliminated (April 2026):** Monthly frequency section of contract line items replaced — the 1100px-wide table is gone, replaced with a `repeat(auto-fill, minmax(72px, 1fr))` responsive grid and a summary chip bar. Line item field grids in ContractDetail and WorkorderDetail switched to `repeat(auto-fit, minmax(160-170px, 1fr))` so they wrap on narrow screens. `EditLayout.main` has `overflow-x: hidden` as a safety net. `MonthlyValuesEditor` (Visit Planning section) also switched to `repeat(auto-fill, minmax(80px, 1fr))`.
- **`useNavigate` replaces `window.location.href` (April 2026):** ContractNew and WorkorderNew forms now use React Router's `useNavigate` after successful create, preserving SPA state and history instead of forcing a full page reload.
- **Stale-fetch cancellation (April 2026):** ContractsList and WorkordersList `useEffect` hooks now set a `cancelled` flag in cleanup so rapid filter changes no longer allow a slower earlier response to overwrite a faster later one.
- **Frontend UI/UX test suite**: Vitest + React Testing Library + jsdom — 92/92 passing
- **Vite config typing fix**: `defineConfig` imported from `vitest/config`
- **Green bar header chips (April 2026):** `EditLayout` now accepts a `headerSlot` prop rendered in the sticky green bar. `ContractDetail` shows live Contract Price, Gross Profit, and Gross Margin chips; `WorkorderDetail` shows Total Price, Gross Profit, Margin, and Man Hours chips. Values update in real time as line items are added or changed.
- **Dashboard financial rollup (April 2026):** Dashboard fetches `GET /api/contracts/financials` and `GET /api/workorders/financials` and renders two Financial Summary cards — Active/Pipeline contract value and Open/Completed workorder value with profit metrics.
- **Draft-only editing enforcement (April 2026):** Both `ContractDetail` and `WorkorderDetail` derive an `editable` flag from `status === 'Draft'`. All inputs, line item add/remove buttons, and the Save Changes button are gated by this flag. The backend PUT and preview routes also reject non-Draft documents with HTTP 409.
- **Brand text removed (April 2026):** "RealTime Landscape" text removed from the `EditLayout` header and the `Layout` footer.

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
- **Current test status: 65/65 passing**
- Engine unit tests updated to use string-keyed activity maps and string fixture IDs to match domain type alignment
- **Formula fix (April 2026):** `annualPrice` and `laborAnnualCost` on contract line items now correctly multiply `unitPrice × quantity × totalFreq`. Previously `quantity` was omitted, producing prices for 1 unit instead of the full quantity.
- **Test coverage added (April 2026):** `recalcVisitCalculations()` test suite added (10 tests covering mhSums, generalContractHours, totalGeneralVisits, crewVisit, mhOnSitePerVisit, percentMHPerMonth, totalAnnualPercent).
- **Quantity unit convention:** Line item `quantity` is always in production units (e.g., MSF for area activities with `unitMultiplier=1000`), not raw SqFt. Raw area ÷ unitMultiplier = production quantity stored on the line item.

## API Status

### Contracts API

- `GET /api/contracts`
- `GET /api/contracts/stats`
- `GET /api/contracts/financials` — aggregate rollup: active count/value/profit/margin, pipeline count/value/profit
- `GET /api/contracts/:id`
- `POST /api/contracts`
- `PUT /api/contracts/:id` — rejects non-Draft with 409
- `POST /api/contracts/:id/preview` — rejects non-Draft with 409
- `POST /api/contracts/:id/transition`

### Workorders API

- `GET /api/workorders`
- `GET /api/workorders/stats`
- `GET /api/workorders/financials` — aggregate rollup: open count/value/profit/hours, completed count/value/profit
- `GET /api/workorders/:id`
- `POST /api/workorders`
- `PUT /api/workorders/:id` — rejects non-Draft with 409
- `POST /api/workorders/:id/preview` — rejects non-Draft with 409
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
- Jest tests: 65/65 passing

### Frontend

Run from `realtimelandscape-web-ui/`:

```powershell
$env:PATH = [System.Environment]::GetEnvironmentVariable("PATH","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("PATH","User")
.\node_modules\.bin\tsc.cmd --noEmit
.\node_modules\.bin\vitest.cmd run
```

**Current status:**
- TypeScript compile: clean (0 errors)
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

### Backend follow-up

- Replace seeded sample activities with full extracted production pricing data when ready
- Add API integration/endpoint tests for broader regression protection
- Verify whether take-off editing UI is needed as part of the contract flow
- Add a DELETE endpoint for contracts and workorders (currently no hard-delete route exists)

### Frontend follow-up

- Add loading/error states to admin pages where missing
- Validate that the line item quantity input label reflects the unit and multiplier (e.g., "Quantity (MSF)" for 1000-multiplier area activities)

### Production readiness

- Configure `MONGODB_URI` for the deployment environment
- Set `CORS_ORIGIN=https://yourapp.com` in production `.env` to restrict allowed origins (currently defaults to `*`)
- Ensure CI workflow passes in GitHub Actions after the latest commits are pushed

## Known Decisions And Constraints

- Use MongoDB document storage rather than a relational schema
- Keep calculation logic centralized in the backend engine rather than duplicating it in the frontend
- Preserve original workflow intent from SharePoint/InfoPath while simplifying delivery to REST + React
- Keep generated extraction output out of source control
- Use strict TypeScript on both backend and frontend
- CORS defaults to `*` in development; production must set `CORS_ORIGIN` explicitly
- Number inputs use `type="number"` (for mobile numeric keyboard) with spinner arrows hidden via CSS — users type and tab
- Quantity unit convention: line item `quantity` is stored in production units (MSF, hundreds-of-LinFt, etc.), not raw SqFt or raw unit counts. Raw value ÷ `unitMultiplier` = stored quantity.
- All domain IDs are MongoDB ObjectId strings — never numeric — to avoid route-to-engine type mismatches
- Embedded subdocument arrays in Mongoose schemas require `as any` cast to satisfy TypeScript strict generics for current Mongoose version
- Vitest config must use `defineConfig` from `vitest/config` (not from `vite`) to avoid type errors in the `test` block
- Line item `quantity` is always in production units divided by `unitMultiplier` (e.g., enter 45 for 45,000 SqFt when `unitMultiplier=1000`). The raw area value is never stored directly on the line item.
- Only `Draft` contracts and workorders can be edited or previewed — the UI hides edit controls and the backend PUT/preview routes return HTTP 409 for any other status.
- `annualPrice` = `unitPrice × quantity × totalFreq`. It is the full annual cost for all units at all visit frequencies — not a per-unit or per-visit value.

## Suggested Continuation Path

When work resumes, continue in this order:

1. Set `MONGODB_URI` locally and confirm backend connects and seeds cleanly
2. Verify end-to-end flows in the browser — dashboard → contracts list → contract detail → workorder detail
3. Push pending backend type-fix commits to GitHub and confirm CI passes
4. Address any remaining frontend UX polish (loading states, navigation cleanup)
5. Prepare production deployment configuration when target environment is ready