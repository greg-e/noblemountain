import { useEffect, useState } from 'react';
import { plantsApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Plant } from '../types';

const emptyForm = (): Partial<Plant> & Record<string, unknown> => ({
  title:         '',
  botanicalName: '',
  category:      '',
  containerSize: '',
  unitCost:      0,
  isActive:      true,
});

export function PlantsAdmin() {
  const [plants, setPlants]     = useState<Plant[]>([]);
  const [loading, setLoading]   = useState(true);
  const [error, setError]       = useState<string | null>(null);
  const [notice, setNotice]     = useState<string | null>(null);
  const [filterActive, setFilterActive] = useState<'all' | 'active' | 'inactive'>('active');

  const [editing, setEditing]   = useState<Plant | null>(null);
  const [formOpen, setFormOpen] = useState(false);
  const [form, setForm]         = useState<Partial<Plant> & Record<string, unknown>>(emptyForm());
  const [saving, setSaving]     = useState(false);

  const load = async () => {
    setLoading(true);
    try {
      const data = await plantsApi.list({
        isActive: filterActive === 'all' ? undefined : filterActive === 'active',
      });
      setPlants(data);
      setError(null);
    } catch (err: any) {
      setError(err.error ?? 'Failed to load plants');
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => { load(); }, [filterActive]); // eslint-disable-line react-hooks/exhaustive-deps

  const openNew = () => {
    setEditing(null);
    setForm(emptyForm());
    setFormOpen(true);
    setError(null);
    setNotice(null);
  };

  const openEdit = (p: Plant) => {
    setEditing(p);
    setForm({ ...p });
    setFormOpen(true);
    setError(null);
    setNotice(null);
    window.scrollTo({ top: 0, behavior: 'smooth' });
  };

  const cancelForm = () => { setFormOpen(false); setEditing(null); };

  const setF = (field: string, value: unknown) =>
    setForm(f => ({ ...f, [field]: value }));

  const handleSave = async (e: React.FormEvent) => {
    e.preventDefault();
    setSaving(true);
    setError(null);
    try {
      if (editing) {
        const updated = await plantsApi.update(editing._id, form);
        setPlants(ps => ps.map(p => p._id === updated._id ? updated : p));
        setNotice(`"${updated.title}" updated.`);
      } else {
        const created = await plantsApi.create(form);
        setPlants(ps => [created, ...ps]);
        setNotice(`"${created.title}" created.`);
      }
      setFormOpen(false);
      setEditing(null);
    } catch (err: any) {
      setError(err.error ?? 'Save failed');
    } finally {
      setSaving(false);
    }
  };

  const handleDeactivate = async (p: Plant) => {
    if (!confirm(`Deactivate "${p.title}"?`)) return;
    try {
      await plantsApi.deactivate(p._id);
      setPlants(ps => ps.map(x => x._id === p._id ? { ...x, isActive: false } : x));
      setNotice(`"${p.title}" deactivated.`);
    } catch (err: any) {
      setError(err.error ?? 'Failed to deactivate');
    }
  };

  return (
    <Layout>
      <div style={wrap}>
        <div style={hdr}>
          <h2 style={{ margin: 0 }}>Plants</h2>
          <button onClick={openNew}>+ New Plant</button>
        </div>

        {error  && <div style={errBox}>{error}</div>}
        {notice && <div style={noticeBox}>{notice}</div>}

        {/* Form panel */}
        {formOpen && (
          <form onSubmit={handleSave} style={formCard}>
            <h3 style={{ margin: '0 0 1rem' }}>{editing ? `Edit: ${editing.title}` : 'New Plant'}</h3>

            <div style={fieldGrid}>
              <label style={field}>
                <span>Common name *</span>
                <input required value={form.title as string} onChange={e => setF('title', e.target.value)} />
              </label>
              <label style={field}>
                <span>Botanical name</span>
                <input value={(form.botanicalName as string) ?? ''} onChange={e => setF('botanicalName', e.target.value)} />
              </label>
              <label style={field}>
                <span>Category</span>
                <input value={(form.category as string) ?? ''} placeholder="e.g. Shrub, Tree, Perennial" onChange={e => setF('category', e.target.value)} />
              </label>
              <label style={field}>
                <span>Container size</span>
                <input value={(form.containerSize as string) ?? ''} placeholder="e.g. 1 gal, 5 gal, B&B" onChange={e => setF('containerSize', e.target.value)} />
              </label>
              <label style={field}>
                <span>Unit cost ($)</span>
                <input type="number" min="0" step="0.01" value={form.unitCost as number} onChange={e => setF('unitCost', Number(e.target.value))} />
              </label>
              <label style={{ ...field, flexDirection: 'row', alignItems: 'center', gap: '0.5rem' }}>
                <input type="checkbox" checked={form.isActive as boolean} onChange={e => setF('isActive', e.target.checked)} />
                <span>Active</span>
              </label>
            </div>

            <div style={{ display: 'flex', gap: '0.75rem', marginTop: '1rem' }}>
              <button type="submit" disabled={saving}>{saving ? 'Saving...' : 'Save'}</button>
              <button type="button" onClick={cancelForm}>Cancel</button>
            </div>
          </form>
        )}

        {/* Filter */}
        <div style={{ marginBottom: '1rem' }}>
          <label>
            Status:{' '}
            <select value={filterActive} onChange={e => setFilterActive(e.target.value as 'all' | 'active' | 'inactive')}>
              <option value="active">Active</option>
              <option value="inactive">Inactive</option>
              <option value="all">All</option>
            </select>
          </label>
        </div>

        {loading && <p>Loading...</p>}
        {!loading && plants.length === 0 && <p>No plants found.</p>}

        {plants.length > 0 && (
          <table>
            <thead>
              <tr>
                <th>Common Name</th>
                <th>Botanical Name</th>
                <th>Category</th>
                <th>Container</th>
                <th>Unit Cost</th>
                <th>Status</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {plants.map(p => (
                <tr key={p._id} style={{ opacity: p.isActive ? 1 : 0.5 }}>
                  <td>{p.title}</td>
                  <td><em>{p.botanicalName ?? '—'}</em></td>
                  <td>{p.category ?? '—'}</td>
                  <td>{p.containerSize ?? '—'}</td>
                  <td>${p.unitCost.toFixed(2)}</td>
                  <td><span style={{ color: p.isActive ? '#256b3d' : '#9b1c1c' }}>{p.isActive ? 'Active' : 'Inactive'}</span></td>
                  <td style={{ display: 'flex', gap: '0.4rem' }}>
                    <button onClick={() => openEdit(p)}>Edit</button>
                    {p.isActive && <button onClick={() => handleDeactivate(p)} style={{ background: '#fff0f0', borderColor: '#e4b4b4' }}>Deactivate</button>}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>
    </Layout>
  );
}

const wrap: React.CSSProperties  = { maxWidth: '1280px', margin: '0 auto' };
const hdr: React.CSSProperties   = { display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.5rem' };
const formCard: React.CSSProperties = { background: '#fff', borderRadius: '18px', padding: '1.25rem', boxShadow: '0 8px 24px rgba(34,43,58,0.07)', marginBottom: '1.5rem' };
const fieldGrid: React.CSSProperties = { display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '0.85rem' };
const field: React.CSSProperties = { display: 'flex', flexDirection: 'column', gap: '0.3rem' };
const errBox: React.CSSProperties = { padding: '0.9rem 1rem', borderRadius: '10px', background: '#fff1f1', color: '#9b1c1c', marginBottom: '1rem' };
const noticeBox: React.CSSProperties = { padding: '0.9rem 1rem', borderRadius: '10px', background: '#edf8ee', color: '#256b3d', marginBottom: '1rem' };
