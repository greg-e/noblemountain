import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { contractsApi, workordersApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { ContractStatus, WorkorderStatus } from '../types';

const contractStatuses: ContractStatus[] = ['Draft', 'PendingActivation', 'Active', 'PendingCompletion', 'Completed', 'Cancelled'];
const workorderStatuses: WorkorderStatus[] = ['Draft', 'PendingActivation', 'Scheduled', 'InProgress', 'PendingCompletion', 'Completed', 'Cancelled'];

const contractColors: Record<ContractStatus, string> = {
  Draft: '#6b7280', PendingActivation: '#d97706', Active: '#1e6b40',
  PendingCompletion: '#2563eb', Completed: '#1d4ed8', Cancelled: '#d92d3a',
};
const workorderColors: Record<WorkorderStatus, string> = {
  Draft: '#6b7280', PendingActivation: '#d97706', Scheduled: '#2563eb',
  InProgress: '#7c3aed', PendingCompletion: '#0891b2', Completed: '#1e6b40', Cancelled: '#d92d3a',
};

const statCard: React.CSSProperties = {
  padding: '1rem',
  background: '#fff',
  borderRadius: '12px',
  boxShadow: '0 2px 8px rgba(0,0,0,0.06)',
  border: '1px solid #e8edf2',
  textAlign: 'center',
  transition: 'box-shadow 0.15s, transform 0.1s',
};

function quickBtn(bg: string): React.CSSProperties {
  return {
    padding: '0.5rem 0.9rem',
    background: bg,
    color: '#fff',
    borderRadius: '8px',
    fontSize: '0.85rem',
    fontWeight: 600,
    whiteSpace: 'nowrap',
  };
}

export function Dashboard() {
  const [contractStats, setContractStats] = useState<Record<ContractStatus, number> | null>(null);
  const [workorderStats, setWorkorderStats] = useState<Record<WorkorderStatus, number> | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    (async () => {
      try {
        const [cs, ws] = await Promise.all([contractsApi.stats(), workordersApi.stats()]);
        setContractStats(cs);
        setWorkorderStats(ws);
        setError(null);
      } catch (err: any) {
        setError(err.error ?? 'Failed to load stats');
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  return (
    <Layout>
      <div style={{ maxWidth: '1100px', margin: '0 auto', display: 'grid', gap: '2rem' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', flexWrap: 'wrap', gap: '1rem' }}>
          <h2 style={{ margin: 0 }}>Dashboard</h2>
          <div style={{ display: 'flex', gap: '0.75rem' }}>
            <Link to="/contracts/new" style={quickBtn('#1e6b40')}>+ New Contract</Link>
            <Link to="/workorders/new" style={quickBtn('#2563eb')}>+ New Workorder</Link>
          </div>
        </div>

        {loading && <p>Loading stats...</p>}
        {error && <p style={{ color: '#d92d3a' }}>Error: {error}</p>}

        {contractStats && (
          <section>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1rem' }}>
              <h3 style={{ margin: 0 }}>Contracts</h3>
              <Link to="/contracts" style={{ fontSize: '0.85rem', color: '#1e6b40' }}>View all &rarr;</Link>
            </div>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(140px, 1fr))', gap: '0.75rem' }}>
              {contractStatuses.map(status => (
                <Link key={status} to={`/contracts?status=${status}`} style={{ textDecoration: 'none' }}>
                  <div style={statCard}>
                    <div style={{ fontSize: '1.8rem', fontWeight: 800, color: contractColors[status], lineHeight: 1 }}>
                      {contractStats[status]}
                    </div>
                    <div style={{ fontSize: '0.78rem', color: '#5d6678', marginTop: '0.35rem', fontWeight: 500 }}>
                      {status}
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </section>
        )}

        {workorderStats && (
          <section>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1rem' }}>
              <h3 style={{ margin: 0 }}>Workorders</h3>
              <Link to="/workorders" style={{ fontSize: '0.85rem', color: '#1e6b40' }}>View all &rarr;</Link>
            </div>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fill, minmax(140px, 1fr))', gap: '0.75rem' }}>
              {workorderStatuses.map(status => (
                <Link key={status} to={`/workorders?status=${status}`} style={{ textDecoration: 'none' }}>
                  <div style={statCard}>
                    <div style={{ fontSize: '1.8rem', fontWeight: 800, color: workorderColors[status], lineHeight: 1 }}>
                      {workorderStats[status]}
                    </div>
                    <div style={{ fontSize: '0.78rem', color: '#5d6678', marginTop: '0.35rem', fontWeight: 500 }}>
                      {status}
                    </div>
                  </div>
                </Link>
              ))}
            </div>
          </section>
        )}
      </div>
    </Layout>
  );
}
