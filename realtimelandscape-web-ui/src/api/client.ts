import {
  Activity, Project, Plant, Contract, Workorder,
  ContractStatus, WorkorderStatus, ApiError, ValidationError
} from '../types';

const BASE_URL = '/api';

// ─────────────────────────────────────────────────────────────
// HTTP Client
// ─────────────────────────────────────────────────────────────

async function fetchJson<T>(
  url: string,
  options?: RequestInit
): Promise<T> {
  const res = await fetch(url, {
    headers: { 'Content-Type': 'application/json', ...options?.headers },
    ...options,
  });

  if (!res.ok) {
    let error: ApiError | ValidationError;
    try {
      error = await res.json();
    } catch {
      error = { error: `HTTP ${res.status}` };
    }
    throw { status: res.status, ...error };
  }

  return res.json();
}

// ─────────────────────────────────────────────────────────────
// Activities
// ─────────────────────────────────────────────────────────────

export const activitiesApi = {
  list: (filters?: { category?: string; isActive?: boolean; search?: string }) =>
    fetchJson<Activity[]>(`${BASE_URL}/activities?${new URLSearchParams(
      Object.entries(filters ?? {})
        .filter(([, v]) => v !== undefined)
        .map(([k, v]) => [k, String(v)])
    )}`),

  categories: () =>
    fetchJson<string[]>(`${BASE_URL}/activities/categories`),

  get: (id: string) =>
    fetchJson<Activity>(`${BASE_URL}/activities/${id}`),

  create: (data: Partial<Activity>) =>
    fetchJson<Activity>(`${BASE_URL}/activities`, { method: 'POST', body: JSON.stringify(data) }),

  update: (id: string, data: Partial<Activity>) =>
    fetchJson<Activity>(`${BASE_URL}/activities/${id}`, { method: 'PATCH', body: JSON.stringify(data) }),

  deactivate: (id: string) =>
    fetchJson<{ message: string; id: string }>(`${BASE_URL}/activities/${id}`, { method: 'DELETE' }),
};

// ─────────────────────────────────────────────────────────────
// Projects
// ─────────────────────────────────────────────────────────────

export const projectsApi = {
  list: (filters?: { isActive?: boolean; status?: ContractStatus; search?: string }) =>
    fetchJson<Project[]>(`${BASE_URL}/projects?${new URLSearchParams(
      Object.entries(filters ?? {})
        .filter(([, v]) => v !== undefined)
        .map(([k, v]) => [k, String(v)])
    )}`),

  get: (id: string) =>
    fetchJson<Project>(`${BASE_URL}/projects/${id}`),

  create: (data: Partial<Project>) =>
    fetchJson<Project>(`${BASE_URL}/projects`, { method: 'POST', body: JSON.stringify(data) }),

  update: (id: string, data: Partial<Project>) =>
    fetchJson<Project>(`${BASE_URL}/projects/${id}`, { method: 'PATCH', body: JSON.stringify(data) }),
};

// ─────────────────────────────────────────────────────────────
// Plants
// ─────────────────────────────────────────────────────────────

export const plantsApi = {
  list: (filters?: { category?: string; isActive?: boolean }) =>
    fetchJson<Plant[]>(`${BASE_URL}/plants?${new URLSearchParams(
      Object.entries(filters ?? {})
        .filter(([, v]) => v !== undefined)
        .map(([k, v]) => [k, String(v)])
    )}`),

  get: (id: string) =>
    fetchJson<Plant>(`${BASE_URL}/plants/${id}`),

  create: (data: Partial<Plant>) =>
    fetchJson<Plant>(`${BASE_URL}/plants`, { method: 'POST', body: JSON.stringify(data) }),

  update: (id: string, data: Partial<Plant>) =>
    fetchJson<Plant>(`${BASE_URL}/plants/${id}`, { method: 'PATCH', body: JSON.stringify(data) }),

  deactivate: (id: string) =>
    fetchJson<{ message: string; id: string }>(`${BASE_URL}/plants/${id}`, { method: 'DELETE' }),
};

// ─────────────────────────────────────────────────────────────
// Contracts
// ─────────────────────────────────────────────────────────────

export const contractsApi = {
  list: (filters?: { project?: string; status?: ContractStatus }) =>
    fetchJson<Contract[]>(`${BASE_URL}/contracts?${new URLSearchParams(
      Object.entries(filters ?? {})
        .filter(([, v]) => v !== undefined)
        .map(([k, v]) => [k, String(v)])
    )}`),

  stats: () =>
    fetchJson<Record<ContractStatus, number>>(`${BASE_URL}/contracts/stats`),

  get: (id: string) =>
    fetchJson<Contract>(`${BASE_URL}/contracts/${id}`),

  create: (data: Partial<Contract> & { project: string; generalLaborCost: number; generalOverheadAndProfit: number }) =>
    fetchJson<Contract>(`${BASE_URL}/contracts`, { method: 'POST', body: JSON.stringify(data) }),

  update: (id: string, data: Partial<Contract>) =>
    fetchJson<Contract>(`${BASE_URL}/contracts/${id}`, { method: 'PUT', body: JSON.stringify(data) }),

  transition: (id: string, to: ContractStatus, updatedBy?: string) =>
    fetchJson<Contract>(`${BASE_URL}/contracts/${id}/transition`, {
      method: 'POST',
      body: JSON.stringify({ to, updatedBy }),
    }),
};

// ─────────────────────────────────────────────────────────────
// Workorders
// ─────────────────────────────────────────────────────────────

export const workordersApi = {
  list: (filters?: {
    project?: string;
    contract?: string;
    status?: WorkorderStatus;
    scheduledDateFrom?: string;
    scheduledDateTo?: string;
  }) =>
    fetchJson<Workorder[]>(`${BASE_URL}/workorders?${new URLSearchParams(
      Object.entries(filters ?? {})
        .filter(([, v]) => v !== undefined)
        .map(([k, v]) => [k, String(v)])
    )}`),

  stats: () =>
    fetchJson<Record<WorkorderStatus, number>>(`${BASE_URL}/workorders/stats`),

  get: (id: string) =>
    fetchJson<Workorder>(`${BASE_URL}/workorders/${id}`),

  create: (data: Partial<Workorder> & { project: string }) =>
    fetchJson<Workorder>(`${BASE_URL}/workorders`, { method: 'POST', body: JSON.stringify(data) }),

  update: (id: string, data: Partial<Workorder>) =>
    fetchJson<Workorder>(`${BASE_URL}/workorders/${id}`, { method: 'PUT', body: JSON.stringify(data) }),

  transition: (id: string, to: WorkorderStatus, updatedBy?: string) =>
    fetchJson<Workorder>(`${BASE_URL}/workorders/${id}/transition`, {
      method: 'POST',
      body: JSON.stringify({ to, updatedBy }),
    }),
};
