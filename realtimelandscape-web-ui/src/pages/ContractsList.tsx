import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { contractsApi } from '../api/client';
import { Layout } from '../components/Layout';
import s from '../components/ListPage.module.css';
import type { Contract, ContractStatus } from '../types';

function statusClass(status: ContractStatus): string {
  switch (status) {
    case 'Active':            return s.badgeActive;
    case 'Completed':         return s.badgeCompleted;
    case 'Cancelled':         return s.badgeCancelled;
    case 'PendingActivation':
    case 'PendingCompletion': return s.badgePending;
    default:                  return s.badgeDraft;
  }
}

export function ContractsList() {
  const [contracts, setContracts] = useState<Contract[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [filterStatus, setFilterStatus] = useState<ContractStatus | ''>('');

  useEffect(() => {
    let cancelled = false;
    setLoading(true);
    contractsApi
      .list({ status: filterStatus as ContractStatus || undefined })
      .then(data => { if (!cancelled) { setContracts(data); setError(null); } })
      .catch((err: any) => { if (!cancelled) setError(err.error ?? 'Failed to load contracts'); })
      .finally(() => { if (!cancelled) setLoading(false); });
    return () => { cancelled = true; };
  }, [filterStatus]);

  return (
    <Layout>
      <div className={s.page}>
        <div className={s.toolbar}>
          <h2>Contracts</h2>
          <Link to="/contracts/new" className={s.newBtn}>+ New Contract</Link>
        </div>

        <div className={s.filterBar}>
          <label htmlFor="filter-status">Status:</label>
          <select
            id="filter-status"
            value={filterStatus}
            onChange={e => setFilterStatus(e.target.value as ContractStatus | '')}
          >
            <option value="">All</option>
            <option value="Draft">Draft</option>
            <option value="PendingActivation">Pending Activation</option>
            <option value="Active">Active</option>
            <option value="PendingCompletion">Pending Completion</option>
            <option value="Completed">Completed</option>
            <option value="Cancelled">Cancelled</option>
          </select>
        </div>

        {loading && <p>Loading contracts...</p>}
        {error   && <p style={{ color: '#9b1c1c' }}>Error: {error}</p>}

        {!loading && contracts.length === 0 && (
          <div className={s.empty}>
            <p>No contracts found.</p>
            <Link to="/contracts/new">Create one &rarr;</Link>
          </div>
        )}

        {contracts.length > 0 && (
          <>
            {/* ── Desktop table ── */}
            <div className={s.tableWrap}>
              <table>
                <thead>
                  <tr>
                    <th>Number</th>
                    <th>Project</th>
                    <th>Status</th>
                    <th>Contract Price</th>
                    <th>Gross Margin</th>
                    <th>Created</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  {contracts.map(c => (
                    <tr key={c._id}>
                      <td><strong>{c.contractNumber}</strong></td>
                      <td>{c.projectDisplayName}</td>
                      <td>
                        <span className={`${s.badge} ${statusClass(c.status)}`}>{c.status}</span>
                      </td>
                      <td>${c.contractTotals.contractPrice.toFixed(2)}</td>
                      <td>{(c.contractTotals.grossProfitPercent * 100).toFixed(1)}%</td>
                      <td>{new Date(c.createdAt).toLocaleDateString()}</td>
                      <td>
                        <Link to={`/contracts/${c._id}`} className={s.viewLink}>View &rarr;</Link>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>

            {/* ── Mobile card list ── */}
            <div className={s.cardList}>
              {contracts.map(c => (
                <Link to={`/contracts/${c._id}`} key={c._id} className={s.card}>
                  <div className={s.cardHeader}>
                    <span className={s.cardNumber}>{c.contractNumber}</span>
                    <span className={`${s.badge} ${statusClass(c.status)}`}>{c.status}</span>
                  </div>
                  <div className={s.cardProject}>{c.projectDisplayName}</div>
                  <div className={s.cardMeta}>
                    <span><strong>${c.contractTotals.contractPrice.toFixed(0)}</strong> contract</span>
                    <span><strong>{(c.contractTotals.grossProfitPercent * 100).toFixed(1)}%</strong> margin</span>
                    <span>{new Date(c.createdAt).toLocaleDateString()}</span>
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

