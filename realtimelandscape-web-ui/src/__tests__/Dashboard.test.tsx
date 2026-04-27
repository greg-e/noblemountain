import { render, screen } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { Dashboard } from '../pages/Dashboard';
import { mockContractStats, mockWorkorderStats } from '../test/fixtures';

vi.mock('../api/client', () => ({
  contractsApi: {
    stats: vi.fn(),
    financials: vi.fn(),
    list: vi.fn().mockResolvedValue([]),
    create: vi.fn(),
    get: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
  workordersApi: {
    stats: vi.fn(),
    financials: vi.fn(),
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
    vi.mocked(contractsApi.financials).mockResolvedValue({
      activeCount: 5,
      activeValue: 125000,
      activeProfit: 38000,
      activeAvgMargin: 0.304,
      pipelineCount: 8,
      pipelineValue: 210000,
      pipelineProfit: 60000,
    });
    vi.mocked(workordersApi.financials).mockResolvedValue({
      openCount: 7,
      openValue: 52000,
      openProfit: 16000,
      openManHours: 420,
      completedCount: 11,
      completedValue: 88000,
      completedProfit: 27000,
    });
  });

  it('shows loading state initially', () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(screen.getByText('Loading stats...')).toBeInTheDocument();
  });

  it('renders contract status counts after loading', async () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(await screen.findByText('Contracts')).toBeInTheDocument();
    // Active contracts: 5
    const cells = screen.getAllByText('5');
    expect(cells.length).toBeGreaterThan(0);
    expect(screen.getAllByText('Active').length).toBeGreaterThan(0);
    expect(screen.getAllByText('Draft').length).toBeGreaterThan(0);
  });

  it('renders workorder status counts after loading', async () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(await screen.findByText('Workorders')).toBeInTheDocument();
    expect(screen.getAllByText('Scheduled').length).toBeGreaterThanOrEqual(1);
    // Scheduled workorders: 4
    expect(screen.getAllByText('4').length).toBeGreaterThanOrEqual(1);
  });

  it('shows error when stats API fails', async () => {
    vi.mocked(contractsApi.stats).mockRejectedValue({ error: 'Server error' });
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    expect(await screen.findByText(/Server error/)).toBeInTheDocument();
  });

  it('calls both stats endpoints', async () => {
    render(<MemoryRouter><Dashboard /></MemoryRouter>);
    await screen.findByText('Contracts');
    expect(contractsApi.stats).toHaveBeenCalled();
    expect(workordersApi.stats).toHaveBeenCalled();
    expect(contractsApi.financials).toHaveBeenCalledTimes(1);
    expect(workordersApi.financials).toHaveBeenCalledTimes(1);
  });
});
