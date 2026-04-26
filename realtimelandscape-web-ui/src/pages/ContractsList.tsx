import { useState, useEffect } from 'react';
import { contractsApi, projectsApi } from '../api/client';
import { Layout } from '../components/Layout';
import type { Contract, ContractStatus } from '../types';

export function ContractsList() {
  const [contracts, setContracts] = useState<Contract[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [filterStatus, setFilterStatus] = useState<ContractStatus | ''>('');

  useEffect(() => {
    (async () => {
      try {
        const data = await contractsApi.list({
          status: filterStatus as ContractStatus || undefined,
        });
        setContracts(data);
        setError(null);
      } catch (err: any) {
        setError(err.error ?? 'Failed to load contracts');
      } finally {
        setLoading(false);
      }
    })();
  }, [filterStatus]);

  return (
    <Layout>
      <div style={{ maxWidth: '1200px', margin: '0 auto' }}>
        <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '2rem' }}>
          <h2>Contracts</h2>
          <a href="/contracts/new" style={{
            padding: '0.5rem 1rem',
            background: '#0066cc',
            color: 'white',
            borderRadius: '4px',
            textDecoration: 'none',
          }}>+ New Contract</a>
        </div>

        <div style={{ marginBottom: '1rem' }}>
          <label htmlFor="filter">Filter by Status: </label>
          <select
            id="filter"
            value={filterStatus}
            onChange={(e) => setFilterStatus(e.target.value as ContractStatus | '')}
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
        {error && <p style={{ color: 'red' }}>Error: {error}</p>}

        {!loading && contracts.length === 0 && (
          <p>No contracts found. <a href="/contracts/new">Create one</a></p>
        )}

        {contracts.length > 0 && (
          <table>
            <thead>
              <tr>
                <th>Number</th>
                <th>Project</th>
                <th>Status</th>
                <th>Contract Price</th>
                <th>Gross Profit %</th>
                <th>Created</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              {contracts.map(c => (
                <tr key={c._id}>
                  <td><strong>{c.contractNumber}</strong></td>
                  <td>{c.projectDisplayName}</td>
                  <td>
                    <span style={{
                      padding: '0.25rem 0.5rem',
                      borderRadius: '4px',
                      fontSize: '0.85rem',
                      background: c.status === 'Active' ? '#e8f5e9' : '#fff3e0',
                      color: c.status === 'Active' ? '#2e7d32' : '#e65100',
                    }}>
                      {c.status}
                    </span>
                  </td>
                  <td>${c.contractTotals.contractPrice.toFixed(2)}</td>
                  <td>{(c.contractTotals.grossProfitPercent * 100).toFixed(1)}%</td>
                  <td>{new Date(c.createdAt).toLocaleDateString()}</td>
                  <td>
                    <a href={`/contracts/${c._id}`}>View</a>
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
