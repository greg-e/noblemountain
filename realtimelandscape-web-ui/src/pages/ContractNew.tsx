import { useEffect, useState } from 'react';
import { Link, useNavigate } from 'react-router-dom';
import { contractsApi, projectsApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Project } from '../types';

export function ContractNew() {
  const navigate = useNavigate();

  const [projects, setProjects] = useState<Project[]>([]);
  const [loadingProjects, setLoadingProjects] = useState(true);

  const [form, setForm] = useState({
    project:                   '',
    generalLaborCost:          45,
    generalOverheadAndProfit:  0.35,
    createdBy:                 '',
  });

  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    projectsApi.list({ isActive: true })
      .then(setProjects)
      .catch(() => setError('Failed to load projects'))
      .finally(() => setLoadingProjects(false));
  }, []);

  const set = (field: keyof typeof form, value: string | number) =>
    setForm(f => ({ ...f, [field]: value }));

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!form.project) { setError('Please select a project'); return; }
    setSubmitting(true);
    setError(null);
    try {
      const contract = await contractsApi.create({
        project:                  form.project,
        generalLaborCost:         Number(form.generalLaborCost),
        generalOverheadAndProfit: Number(form.generalOverheadAndProfit),
        createdBy:                form.createdBy || 'web',
      });
      navigate(`/contracts/${contract._id}`);
    } catch (err: any) {
      setError(err.error ?? 'Failed to create contract');
      setSubmitting(false);
    }
  };

  return (
    <Layout>
      <div style={wrap}>
        <Link to="/contracts" style={{ display: 'inline-block', marginBottom: '1rem' }}>← Back to contracts</Link>
        <h2 style={{ marginTop: 0 }}>New Contract</h2>

        {error && <div style={errBox}>{error}</div>}

        <form onSubmit={handleSubmit} style={card}>
          <div style={fieldGrid}>

            <label style={field}>
              <span>Project <span style={{ color: 'red' }}>*</span></span>
              <select
                value={form.project}
                required
                disabled={loadingProjects}
                onChange={e => set('project', e.target.value)}
              >
                <option value="">{loadingProjects ? 'Loading projects...' : 'Select a project'}</option>
                {projects.map(p => (
                  <option key={p._id} value={p._id}>{p.title} ({p.projectCode})</option>
                ))}
              </select>
            </label>

            <label style={field}>
              <span>General labor cost ($/hr)</span>
              <input
                type="number" min="0" step="0.01"
                value={form.generalLaborCost}
                onChange={e => set('generalLaborCost', Number(e.target.value))}
              />
            </label>

            <label style={field}>
              <span>General overhead & profit (decimal, e.g. 0.35 = 35%)</span>
              <input
                type="number" min="0" max="1" step="0.01"
                value={form.generalOverheadAndProfit}
                onChange={e => set('generalOverheadAndProfit', Number(e.target.value))}
              />
            </label>

            <label style={field}>
              <span>Created by</span>
              <input
                type="text"
                placeholder="Your name"
                value={form.createdBy}
                onChange={e => set('createdBy', e.target.value)}
              />
            </label>

          </div>

          <div style={{ marginTop: '1.5rem', display: 'flex', gap: '0.75rem' }}>
            <button type="submit" disabled={submitting} style={{ background: '#1e6b40', color: '#fff', borderColor: '#1e6b40' }}>
              {submitting ? 'Creating...' : 'Create Contract'}
            </button>
            <Link to="/contracts" style={{ alignSelf: 'center', color: '#5d6678' }}>Cancel</Link>
          </div>
        </form>
      </div>
    </Layout>
  );
}

const wrap: React.CSSProperties  = { maxWidth: '720px', margin: '0 auto' };
const card: React.CSSProperties  = { background: '#fff', borderRadius: '18px', padding: '1.5rem', boxShadow: '0 8px 24px rgba(34,43,58,0.07)' };
const fieldGrid: React.CSSProperties = { display: 'grid', gap: '1rem' };
const field: React.CSSProperties = { display: 'grid', gap: '0.35rem' };
const errBox: React.CSSProperties = { padding: '0.9rem 1rem', borderRadius: '10px', background: '#fff1f1', color: '#9b1c1c', marginBottom: '1rem' };
