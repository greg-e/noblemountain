# RealTime Landscape

A modernization of a SharePoint 2010 + InfoPath 2010 landscape contracting system, rebuilt as a full-stack MERN application.

## Structure

| Folder | Description |
|--------|-------------|
| `realtimelandscape/` | Legacy InfoPath `.xsn` forms and SharePoint `.wsp` (reference only) |
| `realtimelandscape-web/` | Node.js + Express + MongoDB backend API and calculation engine |
| `realtimelandscape-web-ui/` | React 18 + Vite + TypeScript frontend |

## Quick Start

**Prerequisites:** Node.js 18+, MongoDB 6+ running on `localhost:27017`

```powershell
# Backend
cd realtimelandscape-web
npm install
npm run seed          # seed activities reference data
npm run seed-data     # seed sample projects, contracts, workorders
npm run build
npm run start         # or: pm2 start dist/server.js --name rtl-api

# Frontend (separate terminal)
cd realtimelandscape-web-ui
npm install
npm run dev           # http://localhost:3000
```

The frontend proxies `/api` requests to the backend at `http://localhost:3001`.

## Environment

Copy `.env.example` to `.env` in `realtimelandscape-web/` and set:

```
MONGODB_URI=mongodb://localhost:27017/realtimelandscape
PORT=3001
CORS_ORIGIN=          # leave blank for dev (allows all origins)
```

## Running Tests

```powershell
# Backend (Jest)
cd realtimelandscape-web
.\node_modules\.bin\jest.cmd --no-coverage
# → 65/65 passing

# Frontend (Vitest)
cd realtimelandscape-web-ui
.\node_modules\.bin\vitest.cmd run
# → 92/92 passing
```

## Architecture

See [PROJECT_ARCHITECTURE_AND_TODOS.md](./PROJECT_ARCHITECTURE_AND_TODOS.md) for full architecture, completed work, known decisions, and outstanding todos.
