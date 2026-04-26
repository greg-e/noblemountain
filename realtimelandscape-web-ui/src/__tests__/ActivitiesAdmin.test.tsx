import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { ActivitiesAdmin } from '../pages/ActivitiesAdmin';
import { mockActivity, mockActivity2 } from '../test/fixtures';

vi.mock('../api/client', () => ({
  activitiesApi: {
    list: vi.fn(),
    categories: vi.fn(),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    deactivate: vi.fn(),
  },
}));

import { activitiesApi } from '../api/client';

describe('ActivitiesAdmin', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(activitiesApi.list).mockResolvedValue([mockActivity, mockActivity2]);
    vi.mocked(activitiesApi.categories).mockResolvedValue(['Mowing', 'Trimming']);
  });

  it('shows loading state initially', () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    expect(screen.getByText('Loading...')).toBeInTheDocument();
  });

  it('renders activity rows after loading', async () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    expect(await screen.findByText('Lawn Mowing')).toBeInTheDocument();
    expect(screen.getByText('Hedge Trimming')).toBeInTheDocument();
  });

  it('shows production rate and material rate', async () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');
    expect(screen.getByText('0.1000')).toBeInTheDocument();  // productionRate
    expect(screen.getByText('$0.05')).toBeInTheDocument();   // materialRate
  });

  it('shows categories in filter dropdown', async () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');
    expect(screen.getByRole('option', { name: 'Mowing' })).toBeInTheDocument();
    expect(screen.getByRole('option', { name: 'Trimming' })).toBeInTheDocument();
  });

  it('opens New Activity form on button click', async () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');

    fireEvent.click(screen.getByRole('button', { name: /new activity/i }));
    expect(screen.getByText('New Activity')).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /^save$/i })).toBeInTheDocument();
  });

  it('opens Edit form populated with activity data', async () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');

    const editButtons = screen.getAllByRole('button', { name: /^edit$/i });
    fireEvent.click(editButtons[0]); // edit first activity

    expect(screen.getByText('Edit: Lawn Mowing')).toBeInTheDocument();
    const titleInput = screen.getByDisplayValue('Lawn Mowing');
    expect(titleInput).toBeInTheDocument();
  });

  it('calls activitiesApi.create with form data on new activity save', async () => {
    const newActivity = { ...mockActivity, _id: 'act-new', title: 'Fertilizing' };
    vi.mocked(activitiesApi.create).mockResolvedValue(newActivity);

    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');

    fireEvent.click(screen.getByRole('button', { name: /new activity/i }));

    fireEvent.change(screen.getByLabelText(/title/i), { target: { value: 'Fertilizing' } });
    // Fill required category and unit fields
    fireEvent.change(screen.getByLabelText(/^Category \*$/i), { target: { value: 'Fertilization' } });
    fireEvent.change(screen.getByLabelText(/^Unit \*$/i), { target: { value: 'sq ft' } });

    fireEvent.click(screen.getByRole('button', { name: /^save$/i }));

    await waitFor(() => {
      expect(activitiesApi.create).toHaveBeenCalledWith(
        expect.objectContaining({ title: 'Fertilizing' })
      );
    });
    expect(await screen.findByText(/fertilizing.*created/i)).toBeInTheDocument();
  });

  it('calls activitiesApi.update when editing an existing activity', async () => {
    vi.mocked(activitiesApi.update).mockResolvedValue({ ...mockActivity, title: 'Lawn Mowing Updated' });

    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');

    const editButtons = screen.getAllByRole('button', { name: /^edit$/i });
    fireEvent.click(editButtons[0]);

    const titleInput = screen.getByDisplayValue('Lawn Mowing');
    fireEvent.change(titleInput, { target: { value: 'Lawn Mowing Updated' } });

    fireEvent.click(screen.getByRole('button', { name: /^save$/i }));

    await waitFor(() => {
      expect(activitiesApi.update).toHaveBeenCalledWith('act-1', expect.objectContaining({ title: 'Lawn Mowing Updated' }));
    });
  });

  it('calls activitiesApi.deactivate on deactivate button', async () => {
    vi.mocked(activitiesApi.deactivate).mockResolvedValue({ message: 'ok', id: 'act-1' });
    vi.spyOn(window, 'confirm').mockReturnValue(true);

    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');

    const deactivateButtons = screen.getAllByRole('button', { name: /deactivate/i });
    fireEvent.click(deactivateButtons[0]);

    await waitFor(() => {
      expect(activitiesApi.deactivate).toHaveBeenCalledWith('act-1');
    });
  });

  it('cancels form without saving when Cancel clicked', async () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');

    fireEvent.click(screen.getByRole('button', { name: /new activity/i }));
    expect(screen.getByText('New Activity')).toBeInTheDocument();

    fireEvent.click(screen.getByRole('button', { name: /cancel/i }));
    expect(screen.queryByText('New Activity')).not.toBeInTheDocument();
    expect(activitiesApi.create).not.toHaveBeenCalled();
  });

  it('reloads when category filter changes', async () => {
    render(<MemoryRouter><ActivitiesAdmin /></MemoryRouter>);
    await screen.findByText('Lawn Mowing');

    const selects = screen.getAllByRole('combobox');
    const catFilter = selects[0];
    fireEvent.change(catFilter, { target: { value: 'Mowing' } });

    await waitFor(() => {
      expect(activitiesApi.list).toHaveBeenCalledWith(
        expect.objectContaining({ category: 'Mowing' })
      );
    });
  });
});
