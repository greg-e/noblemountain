import { render, screen, fireEvent, waitFor } from '@testing-library/react';
import { MemoryRouter } from 'react-router-dom';
import { PlantsAdmin } from '../pages/PlantsAdmin';
import { mockPlant } from '../test/fixtures';

vi.mock('../api/client', () => ({
  plantsApi: {
    list: vi.fn(),
    get: vi.fn(),
    create: vi.fn(),
    update: vi.fn(),
    deactivate: vi.fn(),
  },
}));

import { plantsApi } from '../api/client';

const inactivePlant = { ...mockPlant, _id: 'plant-2', title: 'Boxwood', isActive: false };

describe('PlantsAdmin', () => {
  beforeEach(() => {
    vi.clearAllMocks();
    vi.restoreAllMocks();
    vi.mocked(plantsApi.list).mockResolvedValue([mockPlant, inactivePlant]);
  });

  it('shows loading state initially', () => {
    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    expect(screen.getByText('Loading...')).toBeInTheDocument();
  });

  it('renders plant rows after loading', async () => {
    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    expect(await screen.findByText('Japanese Maple')).toBeInTheDocument();
    expect(screen.getByText('Boxwood')).toBeInTheDocument();
  });

  it('shows botanical name, category, container size, and unit cost', async () => {
    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');
    expect(screen.getAllByText(/acer palmatum/i).length).toBeGreaterThan(0);
    expect(screen.getAllByText('Tree').length).toBeGreaterThan(0);
    expect(screen.getAllByText('15 gal').length).toBeGreaterThan(0);
    expect(screen.getAllByText('$89.99').length).toBeGreaterThan(0);
  });

  it('opens New Plant form on button click', async () => {
    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    fireEvent.click(screen.getByRole('button', { name: /new plant/i }));
    expect(screen.getByText('New Plant')).toBeInTheDocument();
    expect(screen.getByRole('button', { name: /^save$/i })).toBeInTheDocument();
  });

  it('opens Edit form populated with plant data', async () => {
    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    const editButtons = screen.getAllByRole('button', { name: /^edit$/i });
    fireEvent.click(editButtons[0]);

    expect(screen.getByText('Edit: Japanese Maple')).toBeInTheDocument();
    expect(screen.getByDisplayValue('Japanese Maple')).toBeInTheDocument();
    expect(screen.getByDisplayValue('Acer palmatum')).toBeInTheDocument();
  });

  it('calls plantsApi.create on new plant save', async () => {
    const newPlant = { ...mockPlant, _id: 'plant-new', title: 'Ornamental Grass' };
    vi.mocked(plantsApi.create).mockResolvedValue(newPlant);

    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    fireEvent.click(screen.getByRole('button', { name: /new plant/i }));

    fireEvent.change(screen.getByLabelText(/common name/i), { target: { value: 'Ornamental Grass' } });

    fireEvent.click(screen.getByRole('button', { name: /^save$/i }));

    await waitFor(() => {
      expect(plantsApi.create).toHaveBeenCalledWith(
        expect.objectContaining({ title: 'Ornamental Grass' })
      );
    });
    expect(await screen.findByText(/"Ornamental Grass" created/)).toBeInTheDocument();
  });

  it('calls plantsApi.update on edit save', async () => {
    vi.mocked(plantsApi.update).mockResolvedValue({ ...mockPlant, unitCost: 99.99 });

    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    const editButtons = screen.getAllByRole('button', { name: /^edit$/i });
    fireEvent.click(editButtons[0]);

    const costInput = screen.getByLabelText(/unit cost/i);
    fireEvent.change(costInput, { target: { value: '99.99' } });

    fireEvent.click(screen.getByRole('button', { name: /^save$/i }));

    await waitFor(() => {
      expect(plantsApi.update).toHaveBeenCalledWith(
        'plant-1',
        expect.objectContaining({ unitCost: 99.99 })
      );
    });
  });

  it('calls plantsApi.deactivate with confirmation', async () => {
    vi.mocked(plantsApi.deactivate).mockResolvedValue({ message: 'ok', id: 'plant-1' });
    vi.spyOn(window, 'confirm').mockReturnValue(true);

    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    const deactivateButtons = screen.getAllByRole('button', { name: /deactivate/i });
    fireEvent.click(deactivateButtons[0]);

    await waitFor(() => {
      expect(plantsApi.deactivate).toHaveBeenCalledWith('plant-1');
    });
  });

  it('does NOT call deactivate when user cancels confirm', async () => {
    vi.spyOn(window, 'confirm').mockReturnValue(false);

    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    const deactivateButtons = screen.getAllByRole('button', { name: /deactivate/i });
    fireEvent.click(deactivateButtons[0]);

    expect(plantsApi.deactivate).not.toHaveBeenCalled();
  });

  it('active plants show Deactivate button; inactive plants do not', async () => {
    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    // Only 1 Deactivate button for active plant
    const deactivateButtons = screen.getAllByRole('button', { name: /deactivate/i });
    expect(deactivateButtons).toHaveLength(1);
  });

  it('cancels form without calling API', async () => {
    render(<MemoryRouter><PlantsAdmin /></MemoryRouter>);
    await screen.findByText('Japanese Maple');

    fireEvent.click(screen.getByRole('button', { name: /new plant/i }));
    fireEvent.click(screen.getByRole('button', { name: /cancel/i }));

    expect(screen.queryByText('New Plant')).not.toBeInTheDocument();
    expect(plantsApi.create).not.toHaveBeenCalled();
  });
});
