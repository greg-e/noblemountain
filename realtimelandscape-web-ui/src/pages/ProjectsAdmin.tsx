import { useEffect, useState } from 'react';
import { projectsApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Project } from '../types';

type ContractStatus = 'Pending' | 'Active' | 'Completed' | 'Cancelled';

const emptyForm = (): Partial<Project> & Record<string, unknown> => ({
  title:          '',
  projectCode:    '',
  clientName:     '',
  address:        '',
  roundTrip:      0,
  isActive:       true,
  contractStatus: 'Pending' as ContractStatus,
  notes:          '',
});

export function ProjectsAdmin() {
  const [projects, setProjects] = useState<Project[]>([]);
  const [loading, setLoading]   = useState(true);
  const [error, setError]       = useState<string | null>(null);
  const [notice, setNotice]     = useState<string | null>(null);
  const [filterActive, setFilterActive] = useState<'all' | 'active' | 'inactive'>('active');

  const [editing, setEditing]   = useState<Project | null>(null);
  const [formOpen, setFormOpen] = useState(false);
  const [form, setForm]         = useState<Partial<Project> & Record<string, unknown>>(emptyForm());
  const [saving, setSaving]     = useState(false);

  const load = async () => {
    setLoading(true);
    try {
      const data = await projectsApi.list({
        isActive: filterActive === 'all' ? undefined : filterActive === 'active',
      });
      setProjects(data);
      setError(null);
    } catch (err: any) {
      setError(err.error ?? 'Failed to load projects');
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

  const openEdit = (p: Project) => {
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
        const updated = await projectsApi.update(editing._id, form);
        setProjects(ps => ps.map(p => p._id === updated._id ? updated : p));
        setNotice(`"${updated.title}" updated.`);
      } else {
        const created = await projectsApi.create(form);
        setProjects(ps => [created, ...ps]);
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

  return (
    <Layout>
      <div style={wrap}>
        <div style={hdr}>
          <h2 style={{ margin: 0 }}>Projects</h2>
          <button onClick={openNew}>+ New Project</button>
        </div>

        {error  && <div style={errBox}>{error}</div>}
        {notice && <div style={noticeBox}>{notice}</div>}

        {/* Form panel */}
        {formOpen && (
          <form onSubmit={handleSave} style={formCard}>
            <h3 style={{ margin: '0 0 1rem' }}>{editing ? `Edit: ${editing.title}` : 'New Project'}</h3>

            <div style={fieldGrid}>
              <label style={field}>
                <span>Title *</span>
                <input required value={form.title as string} onChange={e => setF('title', e.target.value)} />
              </label>
              <label style={field}>
                <span>Project code *</span>
                <input required value={form.projectCode as string} placeholder="e.g. NML-001" onChange={e => setF('projectCode', e.target.value)} />
              </label>
              <label style={field}>
                <span>Client name</span>
                <input value={(form.clientName as string) ?? ''} onChange={e => setF('clientName', e.target.value)} />
              </label>
              <label style={field}>
                <span>Address</span>
                <input value={(form.address as string) ?? ''} onChange={e => setF('address', e.target.value)} />
              </label>
              <label style={field}>
                <span>Round trip (hours)</span>
                <input type="number" min="0" step="0.01" value={form.roundTrip as number} onChange={e => setF('roundTrip', Number(e.target.value))} />
              </label>
              <label style={field}>
                <span>Contract status</span>
                <select value={form.contractStatus as string} onChange={e => setF('contractStatus', e.target.value)}>
                  <option value="Pending">Pending</option>
                  <option value="Active">Active</option>
                  <option value="Completed">Completed</option>
                  <option value="Cancelled">Cancelled</option>
                </select>
              </label>
              <label style={{ ...field, gridColumn: '1 / -1' }}>
                <span>Notes</span>
                <textarea rows={2} value={(form.notes as string) ?? ''} onChange={e => setF('notes', e.target.value)} style={{ resize: 'vertical', fontFamily: 'inherit', fontSize: '1rem' }} />
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
        {!loading && projects.length === 0 && <p>No projects found.</p>}

        {projects.length > 0 && (
          <table>
            <thead>
              <tr>
                <th>Title</th>
                <th>Code</th>
                <th>Client</th>
                <th>Round Trip (hrs)</th>
                <th>Contract Status</th>
                <th>Active</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {projects.map(p => (
                <tr key={p._id} style={{ opacity: p.isActive ? 1 : 0.5 }}>
                  <td>{p.title}</td>
                  <td>{p.projectCode}</td>
                  <td>{p.clientName ?? '—'}</td>
                  <td>{p.roundTrip}</td>
                  <td>{p.contractStatus}</td>
                  <td><span style={{ color: p.isActive ? '#256b3d' : '#9b1c1c' }}>{p.isActive ? 'Yes' : 'No'}</span></td>
                  <td>
                    <button onClick={() => openEdit(p)}>Edit</button>
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
