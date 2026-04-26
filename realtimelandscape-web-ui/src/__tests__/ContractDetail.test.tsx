import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MemoryRouter, Route, Routes } from 'react-router-dom';
import { ContractDetail } from '../pages/ContractDetail';
import { mockContract, mockActivity } from '../test/fixtures';

vi.mock('../api/client', () => ({
  contractsApi: {
    list: vi.fn().mockResolvedValue([]),
    stats: vi.fn().mockResolvedValue({}),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
  activitiesApi: {
    list: vi.fn(),
    categories: vi.fn().mockResolvedValue([]),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    deactivate: vi.fn(),
  },
  projectsApi: { list: vi.fn().mockResolvedValue([]) },
}));

import { contractsApi, activitiesApi } from '../api/client';

function renderWithRoute(contractId = 'con-1') {
  return render(
    <MemoryRouter initialEntries={[`/contracts/${contractId}`]}>
      <Routes>
        <Route path="/contracts/:id" element={<ContractDetail />} />
      </Routes>
    </MemoryRouter>
  );
}

describe('ContractDetail', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(contractsApi.get).mockResolvedValue(mockContract());
    vi.mocked(activitiesApi.list).mockResolvedValue([mockActivity]);
  });

  it('shows loading state initially', () => {
    renderWithRoute();
    expect(screen.getByText('Loading contract...')).toBeInTheDocument();
  });

  it('renders contract number and project name after loading', async () => {
    renderWithRoute();
    expect(await screen.findByText('CON-2024-001')).toBeInTheDocument();
    expect(screen.getByText('Downtown Office')).toBeInTheDocument();
  });

  it('shows the current status badge', async () => {
    renderWithRoute();
    await screen.findByText('CON-2024-001');
    expect(screen.getByText('Draft')).toBeInTheDocument();
  });

  it('shows Save Changes button for editable contracts', async () => {
    renderWithRoute();
    await screen.findByText('CON-2024-001');
    expect(screen.getByRole('button', { name: /save changes/i })).toBeInTheDocument();
  });

  it('shows workflow transition buttons', async () => {
    renderWithRoute();
    await screen.findByText('CON-2024-001');
    // Draft can go to PendingActivation or Cancelled
    expect(screen.getByRole('button', { name: /pendingactivation/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /cancelled/i })).toBeInTheDocument();
  });

  it('calls contractsApi.update on save', async () => {
    vi.mocked(contractsApi.update).mockResolvedValue(mockContract());
    renderWithRoute();
    await screen.findByText('CON-2024-001');

    // Change generalLaborCost
    const laborInputs = screen.getAllByRole('spinbutton');
    const laborInput = laborInputs[0]; // first spinbutton is generalLaborCost
    fireEvent.change(laborInput, { target: { value: '55' } });

    fireEvent.click(screen.getByRole('button', { name: /save changes/i }));

    await waitFor(() => {
      expect(contractsApi.update).toHaveBeenCalledWith('con-1', expect.any(Object));
    });
  });

  it('calls contractsApi.transition on transition button click', async () => {
    vi.mocked(contractsApi.transition).mockResolvedValue(
      mockContract({ status: 'PendingActivation' })
    );
    renderWithRoute();
    await screen.findByText('CON-2024-001');

    fireEvent.click(screen.getByRole('button', { name: /pendingactivation/i }));

    await waitFor(() => {
      expect(contractsApi.transition).toHaveBeenCalledWith('con-1', 'PendingActivation');
    });
  });

  it('shows notice after successful transition', async () => {
    vi.mocked(contractsApi.transition).mockResolvedValue(
      mockContract({ status: 'PendingActivation' })
    );
    renderWithRoute();
    await screen.findByText('CON-2024-001');

    fireEvent.click(screen.getByRole('button', { name: /pendingactivation/i }));
    expect(await screen.findByText(/moved to PendingActivation/i)).toBeInTheDocument();
  });

  it('shows error when contract fails to load', async () => {
    vi.mocked(contractsApi.get).mockRejectedValue({ error: 'Not found' });
    renderWithRoute();
    expect(await screen.findByText(/not found/i)).toBeInTheDocument();
  });

  it('shows no transition buttons for completed contracts', async () => {
    vi.mocked(contractsApi.get).mockResolvedValue(mockContract({ status: 'Completed' }));
    renderWithRoute();
    await screen.findByText('CON-2024-001');
    expect(screen.getByRole('button', { name: /save changes/i })).toBeInTheDocument();
    expect(screen.queryByRole('button', { name: /move to/i })).not.toBeInTheDocument();
  });

  it('shows Add line item button for editable contracts', async () => {
    renderWithRoute();
    await screen.findByText('CON-2024-001');
    expect(screen.getAllByRole('button', { name: /add line item/i }).length).toBeGreaterThan(0);
  });
});
