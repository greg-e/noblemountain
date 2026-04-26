import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MemoryRouter, Route, Routes } from 'react-router-dom';
import { WorkorderDetail } from '../pages/WorkorderDetail';
import { mockWorkorder, mockActivity } from '../test/fixtures';

vi.mock('../api/client', () => ({
  workordersApi: {
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
}));

import { workordersApi, activitiesApi } from '../api/client';

function renderWithRoute(workorderId = 'wo-1') {
  return render(
    <MemoryRouter initialEntries={[`/workorders/${workorderId}`]}>
      <Routes>
        <Route path="/workorders/:id" element={<WorkorderDetail />} />
      </Routes>
    </MemoryRouter>
  );
}

describe('WorkorderDetail', () => {
  beforeEach(() => {
    vi.mocked(workordersApi.get).mockResolvedValue(mockWorkorder());
    vi.mocked(activitiesApi.list).mockResolvedValue([mockActivity]);
  });

  it('shows loading state initially', () => {
    renderWithRoute();
    expect(screen.getByText('Loading workorder...')).toBeInTheDocument();
  });

  it('renders workorder number and project after loading', async () => {
    renderWithRoute();
    expect(await screen.findByText('WO-2024-001')).toBeInTheDocument();
    expect(screen.getByText('Downtown Office')).toBeInTheDocument();
  });

  it('shows status badge', async () => {
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    expect(screen.getByText('Draft')).toBeInTheDocument();
  });

  it('shows key metric cards', async () => {
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    expect(screen.getByText('Total Price')).toBeInTheDocument();
    expect(screen.getByText('Total Cost')).toBeInTheDocument();
    expect(screen.getByText('Profit Margin')).toBeInTheDocument();
    expect(screen.getByText('Man Hours')).toBeInTheDocument();
  });

  it('shows workorder settings fields', async () => {
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    expect(screen.getByText('Work day hours')).toBeInTheDocument();
    expect(screen.getByText('Crew size')).toBeInTheDocument();
    expect(screen.getByText('Notes')).toBeInTheDocument();
  });

  it('shows Save Changes button for editable workorders', async () => {
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    expect(screen.getByRole('button', { name: /save changes/i })).toBeInTheDocument();
  });

  it('shows workflow transition buttons for Draft', async () => {
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    expect(screen.getByRole('button', { name: /pendingactivation/i })).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /cancelled/i })).toBeInTheDocument();
  });

  it('calls workordersApi.update on save', async () => {
    vi.mocked(workordersApi.update).mockResolvedValue(mockWorkorder());
    renderWithRoute();
    await screen.findByText('WO-2024-001');

    // Update crewSize
    const spinbuttons = screen.getAllByRole('spinbutton');
    // Find the crew size input (value=2)
    const crewInput = spinbuttons.find(el => (el as HTMLInputElement).value === '2');
    expect(crewInput).toBeDefined();
    fireEvent.change(crewInput!, { target: { value: '3' } });

    fireEvent.click(screen.getByRole('button', { name: /save changes/i }));

    await waitFor(() => {
      expect(workordersApi.update).toHaveBeenCalledWith('wo-1', expect.any(Object));
    });
  });

  it('calls workordersApi.transition on transition click', async () => {
    vi.mocked(workordersApi.transition).mockResolvedValue(
      mockWorkorder({ status: 'PendingActivation' })
    );
    renderWithRoute();
    await screen.findByText('WO-2024-001');

    fireEvent.click(screen.getByRole('button', { name: /pendingactivation/i }));

    await waitFor(() => {
      expect(workordersApi.transition).toHaveBeenCalledWith('wo-1', 'PendingActivation');
    });
  });

  it('shows notice after successful save', async () => {
    vi.mocked(workordersApi.update).mockResolvedValue(mockWorkorder());
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    fireEvent.click(screen.getByRole('button', { name: /save changes/i }));
    expect(await screen.findByText(/totals were recalculated/i)).toBeInTheDocument();
  });

  it('shows Add line item button for editable workorders', async () => {
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    expect(screen.getByRole('button', { name: /add line item/i })).toBeInTheDocument();
  });

  it('does not show Save Changes for Completed workorders', async () => {
    vi.mocked(workordersApi.get).mockResolvedValue(mockWorkorder({ status: 'Completed' }));
    renderWithRoute();
    await screen.findByText('WO-2024-001');
    expect(screen.queryByRole('button', { name: /save changes/i })).not.toBeInTheDocument();
  });

  it('shows error when workorder fails to load', async () => {
    vi.mocked(workordersApi.get).mockRejectedValue({ error: 'Not found' });
    renderWithRoute();
    expect(await screen.findByText(/not found/i)).toBeInTheDocument();
  });
});
