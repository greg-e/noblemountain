import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { WorkorderNew } from '../pages/WorkorderNew';
import { mockProject, mockProject2, mockContract, mockWorkorder } from '../test/fixtures';

vi.mock('../api/client', () => ({
  workordersApi: {
    list: vi.fn().mockResolvedValue([]),
    stats: vi.fn().mockResolvedValue({}),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    transition: vi.fn(),
  },
  contractsApi: {
    list: vi.fn(),
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

import { workordersApi, contractsApi, projectsApi } from '../api/client';

describe('WorkorderNew', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(projectsApi.list).mockResolvedValue([mockProject, mockProject2]);
    vi.mocked(contractsApi.list).mockResolvedValue([mockContract()]);
    vi.mocked(workordersApi.create).mockResolvedValue(mockWorkorder());
    Object.defineProperty(window, 'location', { value: { href: '' }, writable: true });
  });

  it('renders the form heading', () => {
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    expect(screen.getByText('New Workorder')).toBeInTheDocument();
  });

  it('loads and shows projects in the project select', async () => {
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    expect(await screen.findByRole('option', { name: /Downtown Office/ })).toBeInTheDocument();
    expect(screen.getByRole('option', { name: /North Campus/ })).toBeInTheDocument();
  });

  it('defaults work day hours to 8 and crew size to 1', async () => {
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });
    const spinbuttons = screen.getAllByRole('spinbutton');
    // workDayHours is first numeric input
    expect(spinbuttons[0]).toHaveValue(8);
    // crewSize is second
    expect(spinbuttons[1]).toHaveValue(1);
  });

  it('loads contracts for project when a project is selected', async () => {
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });

    const selects = screen.getAllByRole('combobox');
    fireEvent.change(selects[0], { target: { value: 'proj-1' } }); // project select

    await waitFor(() => {
      expect(contractsApi.list).toHaveBeenCalledWith({ project: 'proj-1' });
    });
    expect(await screen.findByRole('option', { name: /CON-2024-001/ })).toBeInTheDocument();
  });

  it('calls workordersApi.create with correct data on submit', async () => {
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });

    const selects = screen.getAllByRole('combobox');
    fireEvent.change(selects[0], { target: { value: 'proj-1' } }); // project

    const spinbuttons = screen.getAllByRole('spinbutton');
    fireEvent.change(spinbuttons[0], { target: { value: '10' } }); // workDayHours
    fireEvent.change(spinbuttons[1], { target: { value: '3' } });  // crewSize

    fireEvent.click(screen.getByRole('button', { name: /create workorder/i }));

    await waitFor(() => {
      expect(workordersApi.create).toHaveBeenCalledWith(
        expect.objectContaining({
          project: 'proj-1',
          workDayHours: 10,
          crewSize: 3,
        })
      );
    });
  });

  it('does not submit when no project is selected', async () => {
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });
    fireEvent.click(screen.getByRole('button', { name: /create workorder/i }));
    await waitFor(() => {
      expect(workordersApi.create).not.toHaveBeenCalled();
    });
  });

  it('shows API error on create failure', async () => {
    vi.mocked(workordersApi.create).mockRejectedValue({ error: 'Server failure' });
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    await screen.findByRole('option', { name: /Downtown Office/ });

    const selects = screen.getAllByRole('combobox');
    fireEvent.change(selects[0], { target: { value: 'proj-1' } });
    fireEvent.click(screen.getByRole('button', { name: /create workorder/i }));
    expect(await screen.findByText('Server failure')).toBeInTheDocument();
  });

  it('has a Back to workorders link', () => {
    render(<MemoryRouter><WorkorderNew /></MemoryRouter>);
    expect(screen.getByRole('link', { name: /back to workorders/i })).toHaveAttribute('href', '/workorders');
  });
});
