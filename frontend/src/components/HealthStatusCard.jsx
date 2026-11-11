import React, { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { healthApi } from '../services/api';

export const HealthStatusCard = () => {
  const navigate = useNavigate();
  const [health, setHealth] = useState(null);
  const [dbHealth, setDbHealth] = useState(null);
  const [loading, setLoading] = useState(true);
  const [lastChecked, setLastChecked] = useState(new Date().toLocaleString('en-GB', { day: '2-digit', month: 'short', year: 'numeric', hour: '2-digit', minute: '2-digit' }));

  const fetchHealth = async () => {
    setLoading(true);
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
      setLastChecked(new Date().toLocaleString('en-GB', { day: '2-digit', month: 'short', year: 'numeric', hour: '2-digit', minute: '2-digit' }));
    } catch {
      // Handled in individual settlements
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
    <div className="connectivity-card">
      <div className="connectivity-row">
        {/* Left: Icon & Diagnostics Title */}
        <div className="connectivity-title-group">
          <div className="connectivity-icon-box">
            <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#7A162B" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round">
              <path d="M22 12h-4l-3 9L9 3l-3 9H2" />
            </svg>
          </div>
          <div>
            <div className="connectivity-title">System Connectivity &amp; Registry Status</div>
            <div className="connectivity-desc">Real-time monitoring of core platform services and credential registry</div>
          </div>
        </div>

        {/* Middle Left: Platform Services Status */}
        <div className="connectivity-status-item">
          <div className="connectivity-status-header">
            <span className={`status-dot ${isBackendUp ? 'dot-green' : 'dot-red'}`}></span>
            <span className="status-entity">Platform Services</span>
            <span className={`status-badge-text ${isBackendUp ? 'badge-text-green' : 'badge-text-red'}`}>
              ● {isBackendUp ? 'OPERATIONAL' : 'OFFLINE'}
            </span>
          </div>
          <div className="connectivity-status-sub">
            {isBackendUp ? 'Core services are responding normally.' : 'Core services are not responding.'}
          </div>
          <div className="connectivity-timestamp">Last checked: {lastChecked}</div>
        </div>

        {/* Middle Right: Central Registry Status */}
        <div className="connectivity-status-item">
          <div className="connectivity-status-header">
            <span className={`status-dot ${isDbUp ? 'dot-green' : 'dot-red'}`}></span>
            <span className="status-entity">Central Registry</span>
            <span className={`status-badge-text ${isDbUp ? 'badge-text-green' : 'badge-text-red'}`}>
              ● {isDbUp ? 'CONNECTED' : 'DISCONNECTED'}
            </span>
          </div>
          <div className="connectivity-status-sub">
            {isDbUp ? 'Registry ledger synchronized.' : 'Cannot connect to credential registry.'}
          </div>
          <div className="connectivity-timestamp">Last checked: {lastChecked}</div>
        </div>

        {/* Right: Refresh Button */}
        <div className="connectivity-action">
          <button
            onClick={fetchHealth}
            disabled={loading}
            className="btn btn-refresh"
            title="Refresh connection status"
          >
            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2" strokeLinecap="round" strokeLinejoin="round" style={{ animation: loading ? 'spin 1s linear infinite' : 'none', marginRight: '6px' }}>
              <path d="M21.5 2v6h-6M2.5 22v-6h6M2 11.5a10 10 0 0 1 18.8-4.3M22 12.5a10 10 0 0 1-18.8 4.2" />
            </svg>
            {loading ? 'Checking...' : 'Refresh Status'}
          </button>
        </div>
      </div>

      {isDbUp && dbHealth?.tableCounts && (
        <div className="connectivity-records-drawer">
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.85rem', flexWrap: 'wrap', gap: '0.5rem' }}>
            <div className="records-drawer-label" style={{ margin: 0, display: 'flex', alignItems: 'center', gap: '0.45rem' }}>
              <span className="status-dot dot-green" style={{ display: 'inline-block' }}></span>
              <span>Live Verified Registry Ledger Records</span>
            </div>
            <span style={{ fontSize: '0.72rem', color: 'var(--text-muted)', fontFamily: 'var(--font-mono)' }}>
              Autonomous ANITS Registry &bull; 100% Tamper-Free Ledger
            </span>
          </div>

          <div className="health-metrics-grid">
            {/* Credentials Card */}
            <div
              className="metric-box"
              onClick={() => navigate('/verify')}
              title="Click to verify credentials in Public Verifier"
            >
              <div className="metric-box-top">
                <span className="metric-label">Credentials</span>
                <div className="metric-icon-wrap">
                  <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round">
                    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
                    <path d="M9 12l2 2 4-4"/>
                  </svg>
                </div>
              </div>
              <div className="metric-value">{(dbHealth.tableCounts.credentials ?? 0).toLocaleString()}</div>
              <div className="metric-sub">
                <span className="metric-sub-badge">Sealed &amp; Valid</span>
                <span>Tamper-Free</span>
              </div>
            </div>

            {/* Students Card */}
            <div
              className="metric-box"
              onClick={() => navigate('/seeker/login')}
              title="Click to open Student Portal"
            >
              <div className="metric-box-top">
                <span className="metric-label">Students</span>
                <div className="metric-icon-wrap">
                  <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round">
                    <path d="M22 10v6M2 10l10-5 10 5-10 5z"/>
                    <path d="M6 12v5c3 3 9 3 12 0v-5"/>
                  </svg>
                </div>
              </div>
              <div className="metric-value">{(dbHealth.tableCounts.students ?? 0).toLocaleString()}</div>
              <div className="metric-sub">
                <span className="metric-sub-badge">9 Engineering Branches</span>
                <span>Enrolled</span>
              </div>
            </div>

            {/* Institutions Card */}
            <div
              className="metric-box"
              onClick={() => navigate('/provider/login')}
              title="Click to view Issuer Portal"
            >
              <div className="metric-box-top">
                <span className="metric-label">Institutions</span>
                <div className="metric-icon-wrap">
                  <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round">
                    <path d="M3 21h18M3 10h18M5 10v11M9 10v11M15 10v11M19 10v11M12 3l10 7H2z"/>
                  </svg>
                </div>
              </div>
              <div className="metric-value">{(dbHealth.tableCounts.institutions ?? 0).toLocaleString()}</div>
              <div className="metric-sub">
                <span className="metric-sub-badge">Autonomous</span>
                <span>ANITS (AU)</span>
              </div>
            </div>

            {/* Programs Card */}
            <div
              className="metric-box"
              onClick={() => navigate('/provider/login')}
              title="Click to view Academic Programs"
            >
              <div className="metric-box-top">
                <span className="metric-label">Programs</span>
                <div className="metric-icon-wrap">
                  <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round">
                    <polygon points="12 2 2 7 12 12 22 7 12 2"/>
                    <polyline points="2 17 12 22 22 17"/>
                    <polyline points="2 12 12 17 22 12"/>
                  </svg>
                </div>
              </div>
              <div className="metric-value">{(dbHealth.tableCounts.programs ?? 0).toLocaleString()}</div>
              <div className="metric-sub">
                <span className="metric-sub-badge">B.Tech Degrees</span>
                <span>Accredited</span>
              </div>
            </div>

            {/* Courses Card */}
            <div
              className="metric-box"
              onClick={() => navigate('/provider/login')}
              title="Click to view Curriculum Courses"
            >
              <div className="metric-box-top">
                <span className="metric-label">Courses</span>
                <div className="metric-icon-wrap">
                  <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2" strokeLinecap="round" strokeLinejoin="round">
                    <path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/>
                    <path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/>
                  </svg>
                </div>
              </div>
              <div className="metric-value">{(dbHealth.tableCounts.courses ?? 0).toLocaleString()}</div>
              <div className="metric-sub">
                <span className="metric-sub-badge">Curriculum Modules</span>
                <span>Semester</span>
              </div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
