import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { ProjectsAdmin } from '../pages/ProjectsAdmin';
import { mockProject, mockProject2 } from '../test/fixtures';

vi.mock('../api/client', () => ({
  projectsApi: {
    list: vi.fn(),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
  },
}));

import { projectsApi } from '../api/client';

describe('ProjectsAdmin', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(projectsApi.list).mockResolvedValue([mockProject, mockProject2]);
  });

  it('shows loading state initially', () => {
    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    expect(screen.getByText('Loading...')).toBeInTheDocument();
  });

  it('renders project rows after loading', async () => {
    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    expect(await screen.findByText('Downtown Office')).toBeInTheDocument();
    expect(screen.getByText('North Campus')).toBeInTheDocument();
  });

  it('shows project code, client name, and round trip', async () => {
    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    await screen.findByText('Downtown Office');
    expect(screen.getByText('DOW-001')).toBeInTheDocument();
    expect(screen.getByText('Acme Corp')).toBeInTheDocument();
    expect(screen.getByText('1.5')).toBeInTheDocument();
  });

  it('opens New Project form on button click', async () => {
    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    await screen.findByText('Downtown Office');

    fireEvent.click(screen.getByRole('button', { name: /new project/i }));
    expect(screen.getByText('New Project')).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /^save$/i })).toBeInTheDocument();
  });

  it('opens Edit form with project data', async () => {
    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    await screen.findByText('Downtown Office');

    const editButtons = screen.getAllByRole('button', { name: /^edit$/i });
    fireEvent.click(editButtons[0]);

    expect(screen.getByText('Edit: Downtown Office')).toBeInTheDocument();
    expect(screen.getByDisplayValue('Downtown Office')).toBeInTheDocument();
    expect(screen.getByDisplayValue('DOW-001')).toBeInTheDocument();
  });

  it('calls projectsApi.create on new project save', async () => {
    const newProject = { ...mockProject, _id: 'proj-new', title: 'New Site' };
    vi.mocked(projectsApi.create).mockResolvedValue(newProject);

    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    await screen.findByText('Downtown Office');

    fireEvent.click(screen.getByRole('button', { name: /new project/i }));

    fireEvent.change(screen.getByLabelText(/title/i), { target: { value: 'New Site' } });
    fireEvent.change(screen.getByLabelText(/project code/i), { target: { value: 'NEW-003' } });

    fireEvent.click(screen.getByRole('button', { name: /^save$/i }));

    await waitFor(() => {
      expect(projectsApi.create).toHaveBeenCalledWith(
        expect.objectContaining({ title: 'New Site', projectCode: 'NEW-003' })
      );
    });
    expect(await screen.findByText(/"New Site" created/)).toBeInTheDocument();
  });

  it('calls projectsApi.update on edit save', async () => {
    vi.mocked(projectsApi.update).mockResolvedValue({ ...mockProject, clientName: 'Updated Corp' });

    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    await screen.findByText('Downtown Office');

    const editButtons = screen.getAllByRole('button', { name: /^edit$/i });
    fireEvent.click(editButtons[0]);

    // Change client name (3rd text input after title, projectCode)
    const clientInput = screen.getByDisplayValue('Acme Corp');
    fireEvent.change(clientInput, { target: { value: 'Updated Corp' } });

    fireEvent.click(screen.getByRole('button', { name: /^save$/i }));

    await waitFor(() => {
      expect(projectsApi.update).toHaveBeenCalledWith(
        'proj-1',
        expect.objectContaining({ clientName: 'Updated Corp' })
      );
    });
  });

  it('shows empty-state when no projects returned', async () => {
    vi.mocked(projectsApi.list).mockResolvedValue([]);
    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    expect(await screen.findByText('No projects found.')).toBeInTheDocument();
  });

  it('cancels new form without calling API', async () => {
    render(<MemoryRouter><ProjectsAdmin /></MemoryRouter>);
    await screen.findByText('Downtown Office');

    fireEvent.click(screen.getByRole('button', { name: /new project/i }));
    fireEvent.click(screen.getByRole('button', { name: /cancel/i }));

    expect(screen.queryByText('New Project')).not.toBeInTheDocument();
    expect(projectsApi.create).not.toHaveBeenCalled();
  });
});
