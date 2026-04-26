import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { workordersApi } from '../api/client';
import { Layout } from '../components/Layout';
import s from '../components/ListPage.module.css';
import type { Workorder, WorkorderStatus } from '../types';

function statusClass(status: WorkorderStatus): string {
  switch (status) {
    case 'Completed':         return s.badgeCompleted;
    case 'InProgress':        return s.badgeInProgress;
    case 'Scheduled':         return s.badgeScheduled;
    case 'Cancelled':         return s.badgeCancelled;
    case 'PendingActivation':
    case 'PendingCompletion': return s.badgePending;
    default:                  return s.badgeDraft;
  }
}

export function WorkordersList() {
  const [workorders, setWorkorders] = useState<Workorder[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [filterStatus, setFilterStatus] = useState<WorkorderStatus | ''>('');

  useEffect(() => {
    let cancelled = false;
    setLoading(true);
    workordersApi
      .list({ status: filterStatus as WorkorderStatus || undefined })
      .then(data => { if (!cancelled) { setWorkorders(data); setError(null); } })
      .catch((err: any) => { if (!cancelled) setError(err.error ?? 'Failed to load workorders'); })
      .finally(() => { if (!cancelled) setLoading(false); });
    return () => { cancelled = true; };
  }, [filterStatus]);

  return (
    <Layout>
      <div className={s.page}>
        <div className={s.toolbar}>
          <h2>Workorders</h2>
          <Link to="/workorders/new" className={s.newBtn}>+ New Workorder</Link>
        </div>

        <div className={s.filterBar}>
          <label htmlFor="filter-status">Status:</label>
          <select
            id="filter-status"
            value={filterStatus}
            onChange={e => setFilterStatus(e.target.value as WorkorderStatus | '')}
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
        {error   && <p style={{ color: '#9b1c1c' }}>Error: {error}</p>}

        {!loading && workorders.length === 0 && (
          <div className={s.empty}>
            <p>No workorders found.</p>
            <Link to="/workorders/new">Create one &rarr;</Link>
          </div>
        )}

        {workorders.length > 0 && (
          <>
            {/* ── Desktop table ── */}
            <div className={s.tableWrap}>
              <table>
                <thead>
                  <tr>
                    <th>Number</th>
                    <th>Project</th>
                    <th>Status</th>
                    <th>Scheduled</th>
                    <th>Total Price</th>
                    <th>Man Hours</th>
                    <th>Created</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {workorders.map(w => (
                    <tr key={w._id}>
                      <td><strong>{w.workorderNumber}</strong></td>
                      <td>{w.projectDisplayName}</td>
                      <td>
                        <span className={`${s.badge} ${statusClass(w.status)}`}>{w.status}</span>
                      </td>
                      <td>{w.scheduledDate ? new Date(w.scheduledDate).toLocaleDateString() : '—'}</td>
                      <td>${w.totalWorkorderPrice.toFixed(2)}</td>
                      <td>{w.totalManHours.toFixed(1)}</td>
                      <td>{new Date(w.createdAt).toLocaleDateString()}</td>
                      <td>
                        <Link to={`/workorders/${w._id}`} className={s.viewLink}>View &rarr;</Link>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>

            {/* ── Mobile card list ── */}
            <div className={s.cardList}>
              {workorders.map(w => (
                <Link to={`/workorders/${w._id}`} key={w._id} className={s.card}>
                  <div className={s.cardHeader}>
                    <span className={s.cardNumber}>{w.workorderNumber}</span>
                    <span className={`${s.badge} ${statusClass(w.status)}`}>{w.status}</span>
                  </div>
                  <div className={s.cardProject}>{w.projectDisplayName}</div>
                  <div className={s.cardMeta}>
                    <span><strong>${w.totalWorkorderPrice.toFixed(0)}</strong> total</span>
                    <span><strong>{w.totalManHours.toFixed(1)}h</strong> labor</span>
                    {w.scheduledDate && (
                      <span>Sched: {new Date(w.scheduledDate).toLocaleDateString()}</span>
                    )}
                  </div>
                </Link>
              ))}
            </div>
          </>
        )}
      </div>
    </Layout>
  );
}
