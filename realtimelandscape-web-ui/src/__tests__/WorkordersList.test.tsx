import { render, screen, fireEvent } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { WorkordersList } from '../pages/WorkordersList';
import { mockWorkorder } from '../test/fixtures';

vi.mock('../api/client', () => ({
  workordersApi: {
    list: vi.fn(),
    stats: vi.fn().mockResolvedValue({}),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
}));

import { workordersApi } from '../api/client';

const wo1 = mockWorkorder();
const wo2 = mockWorkorder({ _id: 'wo-2', workorderNumber: 'WO-2024-002', status: 'Scheduled', scheduledDate: '2024-06-15T00:00:00Z' });

describe('WorkordersList', () => {
  beforeEach(() => {
    vi.mocked(workordersApi.list).mockResolvedValue([wo1, wo2]);
  });

  it('shows loading state initially', () => {
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    expect(screen.getByText('Loading workorders...')).toBeInTheDocument();
  });

  it('renders workorder rows after loading', async () => {
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    expect(await screen.findByText('WO-2024-001')).toBeInTheDocument();
    expect(screen.getByText('WO-2024-002')).toBeInTheDocument();
  });

  it('shows total price and hours', async () => {
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    await screen.findByText('WO-2024-001');
    expect(screen.getAllByText('$1680.00').length).toBeGreaterThan(0);
    expect(screen.getAllByText('16.0').length).toBeGreaterThan(0);
  });

  it('renders View links to workorder detail pages', async () => {
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    await screen.findByText('WO-2024-001');
    const viewLinks = screen.getAllByRole('link', { name: 'View' });
    expect(viewLinks[0]).toHaveAttribute('href', '/workorders/wo-1');
  });

  it('has a New Workorder link', async () => {
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    await screen.findByText('WO-2024-001');
    const newLink = screen.getByRole('link', { name: '+ New Workorder' });
    expect(newLink).toHaveAttribute('href', '/workorders/new');
  });

  it('calls list API with status filter', async () => {
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    await screen.findByText('WO-2024-001');
    const select = screen.getByLabelText(/filter by status/i);
    fireEvent.change(select, { target: { value: 'Scheduled' } });
    expect(workordersApi.list).toHaveBeenCalledWith({ status: 'Scheduled' });
  });

  it('shows dash for no scheduled date', async () => {
    vi.mocked(workordersApi.list).mockResolvedValue([wo1]); // wo1 has no scheduledDate
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    await screen.findByText('WO-2024-001');
    expect(screen.getByText('—')).toBeInTheDocument();
  });

  it('shows empty-state when no workorders', async () => {
    vi.mocked(workordersApi.list).mockResolvedValue([]);
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    expect(await screen.findByText(/no workorders found/i)).toBeInTheDocument();
  });

  it('shows error when API fails', async () => {
    vi.mocked(workordersApi.list).mockRejectedValue({ error: 'DB error' });
    render(<MemoryRouter><WorkordersList /></MemoryRouter>);
    expect(await screen.findByText(/DB error/i)).toBeInTheDocument();
  });
});
