import React, { useState, useEffect } from 'react';
import { healthApi } from '../services/api';
import { Database, Server, RefreshCw, CheckCircle2, XCircle, Activity } from 'lucide-react';

export const HealthStatusCard = () => {
  const [health, setHealth] = useState(null);
  const [dbHealth, setDbHealth] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const fetchHealth = async () => {
    setLoading(true);
    setError(null);
    try {
      const [healthData, dbData] = await Promise.allSettled([
        healthApi.checkHealth(),
        healthApi.checkDatabaseHealth(),
      ]);

      if (healthData.status === 'fulfilled') {
        setHealth(healthData.value);
      } else {
        setHealth({ status: 'DOWN', error: healthData.reason.message });
      }

      if (dbData.status === 'fulfilled') {
        setDbHealth(dbData.value);
      } else {
        setDbHealth({ status: 'DOWN', error: dbData.reason.message });
      }
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchHealth();
  }, []);

  const isBackendUp = health?.status === 'UP';
  const isDbUp = dbHealth?.status === 'UP';

  return (
    <div className="health-card">
      <div className="health-header">
        <div className="health-title-group">
          <div style={{ padding: '0.4rem', background: 'var(--primary-light)', borderRadius: '0.5rem', display: 'flex', border: '1px solid var(--primary-border)' }}>
            <Server size={18} color="var(--primary)" />
          </div>
          <div>
            <h3 style={{ fontSize: '1.05rem', fontWeight: 700, color: 'var(--text-primary)', margin: 0 }}>
              System Connectivity & Database Diagnostics
            </h3>
            <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)' }}>
              Real-time monitoring of Spring Boot REST microservices and PostgreSQL source of truth
            </div>
          </div>
        </div>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem' }}>
          <button
            onClick={fetchHealth}
            disabled={loading}
            className="btn btn-outline"
            style={{ width: 'auto', padding: '0.4rem 0.85rem', fontSize: '0.8125rem' }}
            title="Refresh connection status"
          >
            <RefreshCw size={14} className={loading ? 'spin' : ''} />
            {loading ? 'Checking...' : 'Refresh Status'}
          </button>
        </div>
      </div>

      <div style={{ display: 'flex', gap: '1.25rem', flexWrap: 'wrap', marginBottom: '1.5rem' }}>
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem' }}>
          <span style={{ fontSize: '0.875rem', fontWeight: 600, color: 'var(--text-secondary)' }}>Spring Boot API:</span>
          {isBackendUp ? (
            <span className="badge badge-success">
              <CheckCircle2 size={12} /> UP (Port 8080)
            </span>
          ) : (
            <span className="badge badge-danger">
              <XCircle size={12} /> {health?.error || 'OFFLINE'}
            </span>
          )}
        </div>

        <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem' }}>
          <span style={{ fontSize: '0.875rem', fontWeight: 600, color: 'var(--text-secondary)' }}>PostgreSQL Database:</span>
          {isDbUp ? (
            <span className="badge badge-success">
              <CheckCircle2 size={12} /> {dbHealth.databaseName || 'onest_credentials_db'} (ONLINE)
            </span>
          ) : (
            <span className="badge badge-danger">
              <XCircle size={12} /> {dbHealth?.error || 'DISCONNECTED'}
            </span>
          )}
        </div>
      </div>

      {isDbUp && dbHealth?.tableCounts && (
        <div>
          <div style={{ fontSize: '0.75rem', fontWeight: 700, color: 'var(--cyan)', marginBottom: '0.85rem', textTransform: 'uppercase', letterSpacing: '0.08em', display: 'flex', alignItems: 'center', gap: '0.4rem' }}>
            <Activity size={12} /> Live Database Record Counts (Source of Truth)
          </div>
          <div className="health-metrics-grid">
            <div className="metric-box">
              <div className="metric-label">Credentials</div>
              <div className="metric-value" style={{ color: 'var(--cyan)' }}>{(dbHealth.tableCounts.credentials ?? 0).toLocaleString()}</div>
            </div>
            <div className="metric-box">
              <div className="metric-label">Students</div>
              <div className="metric-value" style={{ color: 'var(--primary)' }}>{(dbHealth.tableCounts.students ?? 0).toLocaleString()}</div>
            </div>
            <div className="metric-box">
              <div className="metric-label">Institutions</div>
              <div className="metric-value" style={{ color: '#a78bfa' }}>{(dbHealth.tableCounts.institutions ?? 0).toLocaleString()}</div>
            </div>
            <div className="metric-box">
              <div className="metric-label">Programs</div>
              <div className="metric-value" style={{ color: '#fbbf24' }}>{(dbHealth.tableCounts.programs ?? 0).toLocaleString()}</div>
            </div>
            <div className="metric-box">
              <div className="metric-label">Courses</div>
              <div className="metric-value" style={{ color: '#34d399' }}>{(dbHealth.tableCounts.courses ?? 0).toLocaleString()}</div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
