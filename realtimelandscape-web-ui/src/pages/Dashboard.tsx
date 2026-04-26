import { useEffect, useState } from 'react';
import { contractsApi, workordersApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { ContractStatus, WorkorderStatus } from '../types';

const contractStatuses: ContractStatus[] = ['Draft', 'PendingActivation', 'Active', 'PendingCompletion', 'Completed', 'Cancelled'];
const workorderStatuses: WorkorderStatus[] = ['Draft', 'PendingActivation', 'Scheduled', 'InProgress', 'PendingCompletion', 'Completed', 'Cancelled'];

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
      <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
        <h2>Dashboard</h2>

        {loading && <p>Loading stats...</p>}
        {error && <p style={{ color: 'red' }}>Error: {error}</p>}

        {contractStats && (
          <div style={{ marginBottom: '3rem' }}>
            <h3>Contract Status Overview</h3>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(150px, 1fr))', gap: '1rem' }}>
              {contractStatuses.map(status => (
                <div key={status} style={{
                  padding: '1rem',
                  background: 'white',
                  borderRadius: '8px',
                  boxShadow: '0 1px 3px rgba(0,0,0,0.1)',
                  textAlign: 'center',
                }}>
                  <div style={{ fontSize: '2rem', fontWeight: 'bold', color: '#0066cc' }}>
                    {contractStats[status]}
                  </div>
                  <div style={{ fontSize: '0.9rem', color: '#666' }}>{status}</div>
                </div>
              ))}
            </div>
          </div>
        )}

        {workorderStats && (
          <div>
            <h3>Workorder Status Overview</h3>
            <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(150px, 1fr))', gap: '1rem' }}>
              {workorderStatuses.map(status => (
                <div key={status} style={{
                  padding: '1rem',
                  background: 'white',
                  borderRadius: '8px',
                  boxShadow: '0 1px 3px rgba(0,0,0,0.1)',
                  textAlign: 'center',
                }}>
                  <div style={{ fontSize: '2rem', fontWeight: 'bold', color: '#00aa00' }}>
                    {workorderStats[status]}
                  </div>
                  <div style={{ fontSize: '0.9rem', color: '#666' }}>{status}</div>
                </div>
              ))}
            </div>
          </div>
        )}
      </div>
    </Layout>
  );
}
