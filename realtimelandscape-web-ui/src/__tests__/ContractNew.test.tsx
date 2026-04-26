import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { ContractNew } from '../pages/ContractNew';
import { mockProject, mockProject2, mockContract } from '../test/fixtures';

vi.mock('../api/client', () => ({
  contractsApi: {
    list: vi.fn().mockResolvedValue([]),
    stats: vi.fn().mockResolvedValue({}),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
  projectsApi: {
    list: vi.fn(),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
  },
}));

import { contractsApi, projectsApi } from '../api/client';

describe('ContractNew', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(projectsApi.list).mockResolvedValue([mockProject, mockProject2]);
    vi.mocked(contractsApi.create).mockResolvedValue(mockContract());
    // jsdom location stub
    Object.defineProperty(window, 'location', {
      value: { href: '' },
      writable: true,
    });
  });

  it('renders the form heading', async () => {
    render(<MemoryRouter><ContractNew /></MemoryRouter>);
    expect(screen.getByText('New Contract')).toBeInTheDocument();
  });

  it('shows projects in select after loading', async () => {
    render(<MemoryRouter><ContractNew /></MemoryRouter>);
    expect(await screen.findByRole('option', { name: /Downtown Office/ })).toBeInTheDocument();
    expect(screen.getByRole('option', { name: /North Campus/ })).toBeInTheDocument();
  });

  it('renders labor cost and overhead fields with defaults', async () => {
    render(<MemoryRouter><ContractNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });
    const inputs = screen.getAllByRole('spinbutton');
    // generalLaborCost defaults to 45
    expect(inputs[0]).toHaveValue(45);
    // generalOverheadAndProfit defaults to 0.35
    expect(inputs[1]).toHaveValue(0.35);
  });

  it('calls contractsApi.create with selected project and fields on submit', async () => {
    render(<MemoryRouter><ContractNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });

    // Select project
    const projectSelect = screen.getByRole('combobox');
    fireEvent.change(projectSelect, { target: { value: 'proj-1' } });

    // Change labor cost
    const [laborInput] = screen.getAllByRole('spinbutton');
    fireEvent.change(laborInput, { target: { value: '50' } });

    // Submit
    fireEvent.click(screen.getByRole('button', { name: /create contract/i }));

    await waitFor(() => {
      expect(contractsApi.create).toHaveBeenCalledWith(
        expect.objectContaining({
          project: 'proj-1',
          generalLaborCost: 50,
          generalOverheadAndProfit: 0.35,
        })
      );
    });
  });

  it('does not submit when no project is selected', async () => {
    render(<MemoryRouter><ContractNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });

    fireEvent.click(screen.getByRole('button', { name: /create contract/i }));
    await waitFor(() => {
      expect(contractsApi.create).not.toHaveBeenCalled();
    });
  });

  it('shows API error message on create failure', async () => {
    vi.mocked(contractsApi.create).mockRejectedValue({ error: 'Duplicate contract' });
    render(<MemoryRouter><ContractNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });

    const projectSelect = screen.getByRole('combobox');
    fireEvent.change(projectSelect, { target: { value: 'proj-1' } });
    fireEvent.click(screen.getByRole('button', { name: /create contract/i }));

    expect(await screen.findByText('Duplicate contract')).toBeInTheDocument();
  });

  it('has a Back to contracts link', () => {
    render(<MemoryRouter><ContractNew /></MemoryRouter>);
    expect(screen.getByRole('link', { name: /back to contracts/i })).toHaveAttribute('href', '/contracts');
  });
});
