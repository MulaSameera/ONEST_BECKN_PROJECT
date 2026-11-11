import React, { useState, useEffect } from 'react';
import { auditApi } from '../services/api';

export const ProviderAuditLogs = () => {
  const [logs, setLogs] = useState([]);
  const [loading, setLoading] = useState(true);

  const fetchLogs = async () => {
    setLoading(true);
    try {
      const data = await auditApi.getLogs();
      setLogs(data);
    } catch (err) {
      console.error(err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchLogs();
  }, []);

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.75rem', flexWrap: 'wrap', gap: '1rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1rem' }}>
        <div>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
            Security &amp; Operational Audit Trail
          </h2>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Immutable security log recording issuance, verification, eligibility checks, and administrative events
          </p>
        </div>
        <button onClick={fetchLogs} className="btn btn-outline" style={{ width: 'auto' }}>
          {loading ? 'Refreshing...' : 'Refresh Trail'}
        </button>
      </div>

      <div className="health-card" style={{ padding: '1.25rem' }}>
        {loading ? (
          <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>Loading audit logs...</div>
        ) : logs.length === 0 ? (
          <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>
            <div>No audit log events recorded in this session yet.</div>
          </div>
        ) : (
          <div style={{ overflowX: 'auto' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.825rem' }}>
              <thead>
                <tr>
                  <th style={{ padding: '0.65rem' }}>Timestamp</th>
                  <th style={{ padding: '0.65rem' }}>Actor</th>
                  <th style={{ padding: '0.65rem' }}>Action</th>
                  <th style={{ padding: '0.65rem' }}>Target Entity</th>
                  <th style={{ padding: '0.65rem' }}>Details</th>
                </tr>
              </thead>
              <tbody>
                {logs.map((log, idx) => (
                  <tr key={idx}>
                    <td style={{ padding: '0.65rem', fontFamily: 'var(--font-mono)' }}>{new Date(log.timestamp).toLocaleString()}</td>
                    <td style={{ padding: '0.65rem', fontWeight: 600 }}>{log.actor}</td>
                    <td style={{ padding: '0.65rem' }}>
                      <span className="badge badge-info">{log.action}</span>
                    </td>
                    <td style={{ padding: '0.65rem', fontFamily: 'var(--font-mono)' }}>{log.targetEntity}</td>
                    <td style={{ padding: '0.65rem', color: 'var(--text-secondary)' }}>{log.details}</td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </div>
    </div>
  );
};
