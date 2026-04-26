import { useEffect, useState } from 'react';
import { activitiesApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Activity } from '../types';

type UnitCategory = 'Area' | 'Linear' | 'Count' | 'Volume' | 'Other';

const UNIT_CATEGORIES: UnitCategory[] = ['Area', 'Linear', 'Count', 'Volume', 'Other'];

const emptyForm = (): Partial<Activity> & Record<string, unknown> => ({
  title:           '',
  activityCategory:'',
  unit:            '',
  unitCategory:    'Count' as UnitCategory,
  unitMultiplier:  1,
  productionRate:  0,
  materialRate:    0,
  description:     '',
  isActive:        true,
});

export function ActivitiesAdmin() {
  const [activities, setActivities] = useState<Activity[]>([]);
  const [categories, setCategories] = useState<string[]>([]);
  const [loading, setLoading]       = useState(true);
  const [error, setError]           = useState<string | null>(null);
  const [notice, setNotice]         = useState<string | null>(null);
  const [filterCat, setFilterCat]   = useState('');
  const [filterActive, setFilterActive] = useState<'all' | 'active' | 'inactive'>('active');

  const [editing, setEditing]       = useState<Activity | null>(null);   // null = new form
  const [formOpen, setFormOpen]     = useState(false);
  const [form, setForm]             = useState<Partial<Activity> & Record<string, unknown>>(emptyForm());
  const [saving, setSaving]         = useState(false);

  const load = async () => {
    setLoading(true);
    try {
      const [acts, cats] = await Promise.all([
        activitiesApi.list({
          category: filterCat || undefined,
          isActive: filterActive === 'all' ? undefined : filterActive === 'active',
        }),
        activitiesApi.categories(),
      ]);
      setActivities(acts);
      setCategories(cats);
      setError(null);
    } catch (err: any) {
      setError(err.error ?? 'Failed to load activities');
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => { load(); }, [filterCat, filterActive]); // eslint-disable-line react-hooks/exhaustive-deps

  const openNew = () => {
    setEditing(null);
    setForm(emptyForm());
    setFormOpen(true);
    setError(null);
    setNotice(null);
  };

  const openEdit = (a: Activity) => {
    setEditing(a);
    setForm({ ...a });
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
        const updated = await activitiesApi.update(editing._id, form);
        setActivities(acts => acts.map(a => a._id === updated._id ? updated : a));
        setNotice(`"${updated.title}" updated.`);
      } else {
        const created = await activitiesApi.create(form);
        setActivities(acts => [created, ...acts]);
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

  const handleDeactivate = async (a: Activity) => {
    if (!confirm(`Deactivate "${a.title}"?`)) return;
    try {
      await activitiesApi.deactivate(a._id);
      setActivities(acts => acts.map(x => x._id === a._id ? { ...x, isActive: false } : x));
      setNotice(`"${a.title}" deactivated.`);
    } catch (err: any) {
      setError(err.error ?? 'Failed to deactivate');
    }
  };

  return (
    <Layout>
      <div style={wrap}>
        <div style={header}>
          <h2 style={{ margin: 0 }}>Activities</h2>
          <button onClick={openNew}>+ New Activity</button>
        </div>

        {error  && <div style={errBox}>{error}</div>}
        {notice && <div style={noticeBox}>{notice}</div>}

        {/* Form panel */}
        {formOpen && (
          <form onSubmit={handleSave} style={formCard}>
            <h3 style={{ margin: '0 0 1rem' }}>{editing ? `Edit: ${editing.title}` : 'New Activity'}</h3>

            <div style={fieldGrid}>
              <label style={field}>
                <span>Title *</span>
                <input required value={form.title as string} onChange={e => setF('title', e.target.value)} />
              </label>
              <label style={field}>
                <span>Category *</span>
                <input required value={form.activityCategory as string} list="cats" placeholder="e.g. Mowing" onChange={e => setF('activityCategory', e.target.value)} />
                <datalist id="cats">{categories.map(c => <option key={c} value={c} />)}</datalist>
              </label>
              <label style={field}>
                <span>Unit *</span>
                <input required value={form.unit as string} placeholder="e.g. sq ft" onChange={e => setF('unit', e.target.value)} />
              </label>
              <label style={field}>
                <span>Unit category *</span>
                <select value={form.unitCategory as string} onChange={e => setF('unitCategory', e.target.value)}>
                  {UNIT_CATEGORIES.map(c => <option key={c} value={c}>{c}</option>)}
                </select>
              </label>
              <label style={field}>
                <span>Unit multiplier</span>
                <input type="number" step="0.001" value={form.unitMultiplier as number} onChange={e => setF('unitMultiplier', Number(e.target.value))} />
              </label>
              <label style={field}>
                <span>Production rate (man-hrs / unit)</span>
                <input type="number" min="0" step="0.0001" value={form.productionRate as number} onChange={e => setF('productionRate', Number(e.target.value))} />
              </label>
              <label style={field}>
                <span>Material rate ($/unit)</span>
                <input type="number" min="0" step="0.01" value={form.materialRate as number} onChange={e => setF('materialRate', Number(e.target.value))} />
              </label>
              <label style={field}>
                <span>Description</span>
                <input value={(form.description as string) ?? ''} onChange={e => setF('description', e.target.value)} />
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

        {/* Filters */}
        <div style={filterRow}>
          <label>
            Category:{' '}
            <select value={filterCat} onChange={e => setFilterCat(e.target.value)}>
              <option value="">All</option>
              {categories.map(c => <option key={c} value={c}>{c}</option>)}
            </select>
          </label>
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
        {!loading && activities.length === 0 && <p>No activities found.</p>}

        {activities.length > 0 && (
          <table>
            <thead>
              <tr>
                <th>Title</th>
                <th>Category</th>
                <th>Unit</th>
                <th>Prod. Rate</th>
                <th>Material Rate</th>
                <th>Status</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {activities.map(a => (
                <tr key={a._id} style={{ opacity: a.isActive ? 1 : 0.5 }}>
                  <td>{a.title}</td>
                  <td>{a.activityCategory}</td>
                  <td>{a.unit}</td>
                  <td>{a.productionRate.toFixed(4)}</td>
                  <td>${a.materialRate.toFixed(2)}</td>
                  <td><span style={{ color: a.isActive ? '#256b3d' : '#9b1c1c' }}>{a.isActive ? 'Active' : 'Inactive'}</span></td>
                  <td style={{ display: 'flex', gap: '0.4rem' }}>
                    <button onClick={() => openEdit(a)}>Edit</button>
                    {a.isActive && <button onClick={() => handleDeactivate(a)} style={{ background: '#fff0f0', borderColor: '#e4b4b4' }}>Deactivate</button>}
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
const header: React.CSSProperties = { display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.5rem' };
const formCard: React.CSSProperties = { background: '#fff', borderRadius: '18px', padding: '1.25rem', boxShadow: '0 8px 24px rgba(34,43,58,0.07)', marginBottom: '1.5rem' };
const fieldGrid: React.CSSProperties = { display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(200px, 1fr))', gap: '0.85rem' };
const field: React.CSSProperties = { display: 'flex', flexDirection: 'column', gap: '0.3rem' };
const filterRow: React.CSSProperties = { display: 'flex', gap: '1.5rem', marginBottom: '1rem', flexWrap: 'wrap' };
const errBox: React.CSSProperties = { padding: '0.9rem 1rem', borderRadius: '10px', background: '#fff1f1', color: '#9b1c1c', marginBottom: '1rem' };
const noticeBox: React.CSSProperties = { padding: '0.9rem 1rem', borderRadius: '10px', background: '#edf8ee', color: '#256b3d', marginBottom: '1rem' };
