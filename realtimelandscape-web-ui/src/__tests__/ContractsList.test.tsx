import { render, screen, fireEvent } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { ContractsList } from '../pages/ContractsList';
import { mockContract } from '../test/fixtures';

vi.mock('../api/client', () => ({
  contractsApi: {
    list: vi.fn(),
    stats: vi.fn().mockResolvedValue({}),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
  projectsApi: { list: vi.fn().mockResolvedValue([]) },
}));

import { contractsApi } from '../api/client';

const contract1 = mockContract();
const contract2 = mockContract({ _id: 'con-2', contractNumber: 'CON-2024-002', status: 'Active' });

describe('ContractsList', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(contractsApi.list).mockResolvedValue([contract1, contract2]);
  });

  it('shows loading state initially', () => {
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    expect(screen.getByText('Loading contracts...')).toBeInTheDocument();
  });

  it('renders contract rows after loading', async () => {
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    expect(await screen.findByText('CON-2024-001')).toBeInTheDocument();
    expect(screen.getByText('CON-2024-002')).toBeInTheDocument();
    expect(screen.getAllByText('Downtown Office').length).toBeGreaterThan(0);
  });

  it('shows contract price and profit percent', async () => {
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    await screen.findByText('CON-2024-001');
    expect(screen.getAllByText('$15000.00').length).toBeGreaterThan(0);
    expect(screen.getAllByText('33.3%').length).toBeGreaterThan(0);
  });

  it('renders View links to contract detail pages', async () => {
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    await screen.findByText('CON-2024-001');
    const viewLinks = screen.getAllByRole('link', { name: 'View' });
    expect(viewLinks[0]).toHaveAttribute('href', '/contracts/con-1');
    expect(viewLinks[1]).toHaveAttribute('href', '/contracts/con-2');
  });

  it('has a New Contract link', async () => {
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    await screen.findByText('CON-2024-001');
    const newLink = screen.getByRole('link', { name: '+ New Contract' });
    expect(newLink).toHaveAttribute('href', '/contracts/new');
  });

  it('calls list API with status filter when filter changes', async () => {
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    await screen.findByText('CON-2024-001');

    const select = screen.getByLabelText(/filter by status/i);
    fireEvent.change(select, { target: { value: 'Active' } });
    expect(contractsApi.list).toHaveBeenCalledWith({ status: 'Active' });
  });

  it('shows empty-state message when no contracts returned', async () => {
    vi.mocked(contractsApi.list).mockResolvedValue([]);
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    expect(await screen.findByText(/no contracts found/i)).toBeInTheDocument();
  });

  it('shows error when list API fails', async () => {
    vi.mocked(contractsApi.list).mockRejectedValue({ error: 'Network error' });
    render(<MemoryRouter><ContractsList /></MemoryRouter>);
    expect(await screen.findByText(/network error/i)).toBeInTheDocument();
  });
});
