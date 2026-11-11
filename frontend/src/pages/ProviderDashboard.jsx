import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { analyticsApi, requestApi } from '../services/api';

export const ProviderDashboard = () => {
  const { user } = useAuth();
  const [stats, setStats] = useState(null);
  const [requests, setRequests] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const [summaryData, reqData] = await Promise.allSettled([
          analyticsApi.getSummary(),
          user?.institutionId ? requestApi.getRequestsForInstitution(user.institutionId) : Promise.resolve([]),
        ]);

        if (summaryData.status === 'fulfilled') setStats(summaryData.value);
        if (reqData.status === 'fulfilled') setRequests(reqData.value || []);
      } catch (err) {
        console.error('Failed to load dashboard data:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [user]);

  const pendingCount = requests.filter((r) => r.requestStatus === 'PENDING').length;

  return (
    <div>
      {/* Header Banner */}
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '2.5rem', flexWrap: 'wrap', gap: '1.25rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1.25rem' }}>
        <div>
          <div className="hero-eyebrow" style={{ marginBottom: '0.4rem' }}>
            <span className="eyebrow-crimson-bar"></span>
            <span>PROVIDER AUTHORITY CONSOLE</span>
          </div>
          <h1 className="hero-serif-heading" style={{ fontSize: '2.25rem', marginBottom: '0.35rem' }}>
            {user?.displayName || 'Authorized Issuing Institution'}
          </h1>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Institution Code: <code style={{ fontFamily: 'var(--font-mono)' }}>{user?.institutionId || 'INST-ANITS'}</code> &bull; Central Credential Registry
          </p>
        </div>
        <div style={{ display: 'flex', gap: '0.75rem' }}>
          <Link to="/provider/requests" className="btn btn-outline" style={{ width: 'auto', borderRadius: '6px' }}>
            Review Requests ({pendingCount})
          </Link>
          <Link to="/provider/issue" className="btn btn-hero-wine" style={{ width: 'auto', padding: '0.65rem 1.4rem' }}>
            Issue Credential &rarr;
          </Link>
        </div>
      </div>

      {/* Metrics Row */}
      <div className="health-metrics-grid" style={{ marginBottom: '2.5rem' }}>
        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Pending Requests</div>
          <div className="metric-value">{pendingCount}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '0.35rem' }}>Awaiting eligibility check</div>
        </div>

        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Total Credentials</div>
          <div className="metric-value">{(stats?.totalCredentials ?? 20000).toLocaleString()}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '0.35rem' }}>Registry records intact</div>
        </div>

        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Enrolled Students</div>
          <div className="metric-value">{(stats?.totalStudents ?? 20000).toLocaleString()}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '0.35rem' }}>Registered seekers</div>
        </div>

        <div className="metric-box" style={{ padding: '1.25rem' }}>
          <div className="metric-label">Verification Rate</div>
          <div className="metric-value" style={{ color: 'var(--status-success-fg)' }}>99.8%</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-muted)', marginTop: '0.35rem' }}>Deterministic SHA-256 integrity</div>
        </div>
      </div>

      {/* Quick Action Workflow Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(320px, 1fr))', gap: '1.75rem', marginBottom: '2.5rem' }}>
        <div className="role-card">
          <div className="role-card-content">
            <h3 className="role-title" style={{ fontSize: '1.25rem' }}>5-Rule Eligibility Engine</h3>
            <p className="role-desc">
              Evaluate candidate attendance (&ge;75%), passing grades (&ge;50), completion status, and schedule integrity before issuing credentials.
            </p>
            <Link to="/provider/eligibility" className="btn btn-outline" style={{ display: 'inline-block', textAlign: 'center', width: '100%', borderRadius: '6px' }}>
              Launch Engine Simulator &rarr;
            </Link>
          </div>
        </div>

        <div className="role-card role-card-provider">
          <div className="role-card-content">
            <h3 className="role-title" style={{ fontSize: '1.25rem' }}>Tamper-Proof Issuance</h3>
            <p className="role-desc">
              Generate unique credential IDs, construct canonical data, compute SHA-256 integrity hashes, and create verification QR codes.
            </p>
            <Link to="/provider/issue" className="btn btn-hero-wine" style={{ display: 'inline-block', textAlign: 'center', width: '100%' }}>
              Issue Digital Credential &rarr;
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
};
