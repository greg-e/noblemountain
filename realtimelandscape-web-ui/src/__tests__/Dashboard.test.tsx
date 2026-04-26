import { render, screen } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { Dashboard } from '../pages/Dashboard';
import { mockContractStats, mockWorkorderStats } from '../test/fixtures';

vi.mock('../api/client', () => ({
  contractsApi: {
    stats: vi.fn(),
    list: vi.fn().mockResolvedValue([]),
    create: vi.fn(),
    get: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
  workordersApi: {
    stats: vi.fn(),
    list: vi.fn().mockResolvedValue([]),
    create: vi.fn(),
    get: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
  activitiesApi: { list: vi.fn().mockResolvedValue([]) },
  projectsApi: { list: vi.fn().mockResolvedValue([]) },
  plantsApi: { list: vi.fn().mockResolvedValue([]) },
}));

import { contractsApi, workordersApi } from '../api/client';

describe('Dashboard', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(contractsApi.stats).mockResolvedValue(mockContractStats);
    vi.mocked(workordersApi.stats).mockResolvedValue(mockWorkorderStats);
  });

  it('shows loading state initially', () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(screen.getByText('Loading stats...')).toBeInTheDocument();
  });

  it('renders contract status counts after loading', async () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(await screen.findByText('Contract Status Overview')).toBeInTheDocument();
    // Active contracts: 5
    const cells = screen.getAllByText('5');
    expect(cells.length).toBeGreaterThan(0);
    expect(screen.getAllByText('Active').length).toBeGreaterThan(0);
    expect(screen.getAllByText('Draft').length).toBeGreaterThan(0);
  });

  it('renders workorder status counts after loading', async () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(await screen.findByText('Workorder Status Overview')).toBeInTheDocument();
    expect(screen.getByText('Scheduled')).toBeInTheDocument();
    // Scheduled workorders: 4
    expect(screen.getByText('4')).toBeInTheDocument();
  });

  it('shows error when stats API fails', async () => {
    vi.mocked(contractsApi.stats).mockRejectedValue({ error: 'Server error' });
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(await screen.findByText(/Server error/)).toBeInTheDocument();
  });

  it('calls both stats endpoints', async () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    await screen.findByText('Contract Status Overview');
    expect(contractsApi.stats).toHaveBeenCalledTimes(1);
    expect(workordersApi.stats).toHaveBeenCalledTimes(1);
  });
});
