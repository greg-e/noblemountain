import { useEffect, useState } from 'react';
import { contractsApi, projectsApi, workordersApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Contract, Project } from '../types';

export function WorkorderNew() {
  const [projects, setProjects]   = useState<Project[]>([]);
  const [contracts, setContracts] = useState<Contract[]>([]);
  const [loadingProjects, setLoadingProjects] = useState(true);
  const [loadingContracts, setLoadingContracts] = useState(false);

  const [form, setForm] = useState({
    project:       '',
    contract:      '',
    workDayHours:  8,
    crewSize:      1,
    scheduledDate: '',
    createdBy:     '',
  });

  const [submitting, setSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    projectsApi.list({ isActive: true })
      .then(setProjects)
      .catch(() => setError('Failed to load projects'))
      .finally(() => setLoadingProjects(false));
  }, []);

  // Reload contracts when project changes
  useEffect(() => {
    if (!form.project) { setContracts([]); return; }
    setLoadingContracts(true);
    contractsApi.list({ project: form.project })
      .then(setContracts)
      .catch(() => setContracts([]))
      .finally(() => setLoadingContracts(false));
  }, [form.project]);

  const set = (field: keyof typeof form, value: string | number) =>
    setForm(f => ({ ...f, [field]: value }));

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!form.project) { setError('Please select a project'); return; }
    setSubmitting(true);
    setError(null);
    try {
      const workorder = await workordersApi.create({
        project:       form.project,
        contract:      form.contract || undefined,
        workDayHours:  Number(form.workDayHours),
        crewSize:      Number(form.crewSize),
        scheduledDate: form.scheduledDate || undefined,
        createdBy:     form.createdBy || 'web',
      });
      window.location.href = `/workorders/${workorder._id}`;
    } catch (err: any) {
      setError(err.error ?? 'Failed to create workorder');
      setSubmitting(false);
    }
  };

  return (
    <Layout>
      <div style={wrap}>
        <a href="/workorders" style={{ display: 'inline-block', marginBottom: '1rem' }}>← Back to workorders</a>
        <h2 style={{ marginTop: 0 }}>New Workorder</h2>

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
                <option value="">{loadingProjects ? 'Loading...' : 'Select a project'}</option>
                {projects.map(p => (
                  <option key={p._id} value={p._id}>{p.title} ({p.projectCode})</option>
                ))}
              </select>
            </label>

            <label style={field}>
              <span>Linked contract (optional)</span>
              <select
                value={form.contract}
                disabled={!form.project || loadingContracts}
                onChange={e => set('contract', e.target.value)}
              >
                <option value="">{loadingContracts ? 'Loading...' : 'None'}</option>
                {contracts.map(c => (
                  <option key={c._id} value={c._id}>{c.contractNumber} – {c.status}</option>
                ))}
              </select>
            </label>

            <label style={field}>
              <span>Work day hours</span>
              <input
                type="number" min="1" step="0.5"
                value={form.workDayHours}
                onChange={e => set('workDayHours', Number(e.target.value))}
              />
            </label>

            <label style={field}>
              <span>Crew size</span>
              <input
                type="number" min="1" step="1"
                value={form.crewSize}
                onChange={e => set('crewSize', Number(e.target.value))}
              />
            </label>

            <label style={field}>
              <span>Scheduled date (optional)</span>
              <input
                type="date"
                value={form.scheduledDate}
                onChange={e => set('scheduledDate', e.target.value)}
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
            <button type="submit" disabled={submitting}>
              {submitting ? 'Creating...' : 'Create Workorder'}
            </button>
            <a href="/workorders">Cancel</a>
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
