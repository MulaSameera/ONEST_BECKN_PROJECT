import React, { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import { useAuth } from '../context/AuthContext';
import { credentialApi, requestApi } from '../services/api';
import { GraduationCap, Award, FileText, ArrowRight, ShieldCheck } from 'lucide-react';

export const SeekerDashboard = () => {
  const { user } = useAuth();
  const [credentials, setCredentials] = useState([]);
  const [requests, setRequests] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const studentId = user?.studentId || 'STU-000001';
        const [credsData, reqsData] = await Promise.allSettled([
          credentialApi.getCredentialsByStudent(studentId),
          requestApi.getRequestsForStudent(studentId),
        ]);

        if (credsData.status === 'fulfilled') setCredentials(credsData.value || []);
        if (reqsData.status === 'fulfilled') setRequests(reqsData.value || []);
      } catch (err) {
        console.error(err);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [user]);

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '2.25rem', flexWrap: 'wrap', gap: '1.25rem' }}>
        <div>
          <div style={{ display: 'flex', alignItems: 'center', gap: '0.6rem', marginBottom: '0.4rem' }}>
            <span className="badge badge-cyan"><GraduationCap size={12} /> Student Seeker</span>
            <span className="badge badge-info"><ShieldCheck size={12} /> Seeker ID: {user?.username}</span>
          </div>
          <h1 style={{ fontSize: '1.85rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.025em' }}>
            Welcome, {user?.displayName || 'Student'}
          </h1>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Student Registry ID: <code>{user?.studentId || 'STU-000001'}</code> &bull; Verified Digital Credential Wallet
          </p>
        </div>
        <Link to="/seeker/request" className="btn btn-primary" style={{ width: 'auto' }}>
          <FileText size={16} /> Request New Credential
        </Link>
      </div>

      {/* Metrics Row */}
      <div className="health-metrics-grid" style={{ marginBottom: '2.5rem' }}>
        <div className="metric-box" style={{ padding: '1.35rem' }}>
          <div className="metric-label">Issued Credentials</div>
          <div className="metric-value" style={{ color: 'var(--cyan)' }}>{credentials.length}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.35rem' }}>Verified digital certificates</div>
        </div>

        <div className="metric-box" style={{ padding: '1.35rem' }}>
          <div className="metric-label">Submitted Requests</div>
          <div className="metric-value" style={{ color: 'var(--primary)' }}>{requests.length}</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.35rem' }}>In process with university</div>
        </div>

        <div className="metric-box" style={{ padding: '1.35rem' }}>
          <div className="metric-label">Integrity Status</div>
          <div className="metric-value" style={{ color: '#4ade80', fontSize: '1.15rem' }}>Tamper-Proof</div>
          <div style={{ fontSize: '0.75rem', color: 'var(--text-secondary)', marginTop: '0.35rem' }}>SHA-256 cryptographically verified</div>
        </div>
      </div>

      {/* Quick Action Cards */}
      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(320px, 1fr))', gap: '1.75rem', marginBottom: '2.5rem' }}>
        <div className="portal-card">
          <div>
            <div className="portal-icon-wrapper portal-icon-seeker">
              <Award size={24} />
            </div>
            <h3 className="portal-title">My Digital Certificates</h3>
            <p className="portal-desc">
              View your conferred degrees, course completion certificates, and cryptographic verification QR codes.
            </p>
          </div>
          <Link to="/seeker/credentials" className="btn btn-primary">
            Open Credential Wallet <ArrowRight size={14} />
          </Link>
        </div>

        <div className="portal-card">
          <div>
            <div className="portal-icon-wrapper portal-icon-provider">
              <FileText size={24} />
            </div>
            <h3 className="portal-title">Request Credential Issuance</h3>
            <p className="portal-desc">
              Apply for a new diploma, skill certificate, or transcript credential from your university.
            </p>
          </div>
          <Link to="/seeker/request" className="btn btn-outline">
            Submit Request <ArrowRight size={14} />
          </Link>
        </div>
      </div>
    </div>
  );
};
