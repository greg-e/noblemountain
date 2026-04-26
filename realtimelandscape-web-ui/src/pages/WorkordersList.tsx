import { useState, useEffect } from 'react';
import { workordersApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Workorder, WorkorderStatus } from '../types';

export function WorkordersList() {
  const [workorders, setWorkorders] = useState<Workorder[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [filterStatus, setFilterStatus] = useState<WorkorderStatus | ''>('');

  useEffect(() => {
    (async () => {
      try {
        const data = await workordersApi.list({
          status: filterStatus as WorkorderStatus || undefined,
        });
        setWorkorders(data);
        setError(null);
      } catch (err: any) {
        setError(err.error ?? 'Failed to load workorders');
      } finally {
        setLoading(false);
      }
    })();
  }, [filterStatus]);

  return (
    <Layout>
      <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '2rem' }}>
          <h2>Workorders</h2>
          <a href="/workorders/new" style={{
            padding: '0.5rem 1rem',
            background: '#00aa00',
            color: 'white',
            borderRadius: '4px',
            textDecoration: 'none',
          }}>+ New Workorder</a>
        </div>

        <div style={{ marginBottom: '1rem' }}>
          <label htmlFor="filter">Filter by Status: </label>
          <select
            id="filter"
            value={filterStatus}
            onChange={(e) => setFilterStatus(e.target.value as WorkorderStatus | '')}
          >
            <option value="">All</option>
            <option value="Draft">Draft</option>
            <option value="PendingActivation">Pending Activation</option>
            <option value="Scheduled">Scheduled</option>
            <option value="InProgress">In Progress</option>
            <option value="PendingCompletion">Pending Completion</option>
            <option value="Completed">Completed</option>
            <option value="Cancelled">Cancelled</option>
          </select>
        </div>

        {loading && <p>Loading workorders...</p>}
        {error && <p style={{ color: 'red' }}>Error: {error}</p>}

        {!loading && workorders.length === 0 && (
          <p>No workorders found. <a href="/workorders/new">Create one</a></p>
        )}

        {workorders.length > 0 && (
          <table>
            <thead>
              <tr>
                <th>Number</th>
                <th>Project</th>
                <th>Status</th>
                <th>Scheduled</th>
                <th>Total Price</th>
                <th>Total Hours</th>
                <th>Created</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {workorders.map(w => (
                <tr key={w._id}>
                  <td><strong>{w.workorderNumber}</strong></td>
                  <td>{w.projectDisplayName}</td>
                  <td>
                    <span style={{
                      padding: '0.25rem 0.5rem',
                      borderRadius: '4px',
                      fontSize: '0.85rem',
                      background: w.status === 'Completed' ? '#e8f5e9' : '#e3f2fd',
                      color: w.status === 'Completed' ? '#2e7d32' : '#1565c0',
                    }}>
                      {w.status}
                    </span>
                  </td>
                  <td>{w.scheduledDate ? new Date(w.scheduledDate).toLocaleDateString() : '—'}</td>
                  <td>${w.totalWorkorderPrice.toFixed(2)}</td>
                  <td>{w.totalManHours.toFixed(1)}</td>
                  <td>{new Date(w.createdAt).toLocaleDateString()}</td>
                  <td>
                    <a href={`/workorders/${w._id}`}>View</a>
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
