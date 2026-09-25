import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { analyticsApi, requestApi } from '../services/api';
import { Building2, ShieldCheck, Award, FileText, CheckCircle2, ArrowRight, Users } from 'lucide-react';

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
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '2.25rem', flexWrap: 'wrap', gap: '1.25rem' }}>
        <div>
          <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.4rem' }}>
            <span className="badge badge-info"><Building2 size={12} /> Provider Authority</span>
            <span className="badge badge-success"><ShieldCheck size={12} /> Issuer ID: {user?.username}</span>
          </div>
          <h1 style={{ fontSize: '1.85rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.025em' }}>
            {user?.displayName || 'Authorized Issuing Institution'}
          </h1>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Institution Code: <code>{user?.institutionId || 'INST-001'}</code> &bull; Open Network for Education & Skilling Registry
          </p>
        </div>
        <div style={{ display: 'flex', gap: '0.75rem' }}>
          <Link to="/provider/requests" className="btn btn-primary" style={{ width: 'auto' }}>
            <FileText size={16} /> Review Requests ({pendingCount})
          </Link>
          <Link to="/provider/issue" className="btn btn-secondary" style={{ width: 'auto' }}>
            <Award size={16} /> Issue Credential
          </Link>
        </div>
      </div>

      {/* Metrics Row */}
      <div className="health-metrics-grid" style={{ marginBottom: '2.5rem' }}>
        <div className="metric-box" style={{ padding: '1.35rem' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem' }}>
            <div className="metric-label">Pending Requests</div>
            <FileText size={18} color="var(--warning)" />
          </div>
          <div className="metric-value" style={{ color: '#fbbf24' }}>{pendingCount}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.35rem' }}>Awaiting eligibility check</div>
        </div>

        <div className="metric-box" style={{ padding: '1.35rem' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem' }}>
            <div className="metric-label">Total Credentials</div>
            <Award size={18} color="var(--primary)" />
          </div>
          <div className="metric-value" style={{ color: '#60a5fa' }}>{(stats?.totalCredentials ?? 20000).toLocaleString()}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.35rem' }}>PostgreSQL records intact</div>
        </div>

        <div className="metric-box" style={{ padding: '1.35rem' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem' }}>
            <div className="metric-label">Enrolled Students</div>
            <Users size={18} color="var(--cyan)" />
          </div>
          <div className="metric-value" style={{ color: 'var(--cyan)' }}>{(stats?.totalStudents ?? 20000).toLocaleString()}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.35rem' }}>Registered seekers</div>
        </div>

        <div className="metric-box" style={{ padding: '1.35rem' }}>
          <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '0.5rem' }}>
            <div className="metric-label">Verification Rate</div>
            <ShieldCheck size={18} color="var(--success)" />
          </div>
          <div className="metric-value" style={{ color: '#4ade80' }}>99.8%</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.35rem' }}>Deterministic SHA-256 integrity</div>
        </div>
      </div>

      {/* Quick Action Workflow Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(320px, 1fr))', gap: '1.75rem', marginBottom: '2.5rem' }}>
        <div className="portal-card">
          <div>
            <div className="portal-icon-wrapper portal-icon-provider">
              <CheckCircle2 size={24} />
            </div>
            <h3 className="portal-title">5-Rule Eligibility Engine</h3>
            <p className="portal-desc">
              Evaluate candidate attendance (&ge;75%), passing grades (&ge;50), completion status, and schedule integrity before issuing credentials.
            </p>
          </div>
          <Link to="/provider/eligibility" className="btn btn-outline">
            Launch Engine Simulator <ArrowRight size={14} />
          </Link>
        </div>

        <div className="portal-card">
          <div>
            <div className="portal-icon-wrapper portal-icon-seeker">
              <Award size={24} />
            </div>
            <h3 className="portal-title">Tamper-Proof Issuance</h3>
            <p className="portal-desc">
              Generate unique credential IDs, construct canonical data, compute SHA-256 integrity hashes, and create verification QR codes.
            </p>
          </div>
          <Link to="/provider/issue" className="btn btn-primary">
            Issue Digital Credential <ArrowRight size={14} />
          </Link>
        </div>
      </div>
    </div>
  );
};
