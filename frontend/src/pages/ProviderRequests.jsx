import React, { useState, useEffect } from 'react';
import { useAuth } from '../context/AuthContext';
import { requestApi, eligibilityApi, credentialApi } from '../services/api';
import { FileText, CheckCircle2, XCircle, Award, AlertCircle, RefreshCw, Eye, X } from 'lucide-react';

export const ProviderRequests = () => {
  const { user } = useAuth();
  const [requests, setRequests] = useState([]);
  const [loading, setLoading] = useState(true);
  const [selectedReq, setSelectedReq] = useState(null);
  const [eligibilityResult, setEligibilityResult] = useState(null);
  const [checkingEligibility, setCheckingEligibility] = useState(false);
  const [actionLoading, setActionLoading] = useState(false);
  const [rejectReason, setRejectReason] = useState('');
  const [showRejectModal, setShowRejectModal] = useState(false);
  const [issuedCred, setIssuedCred] = useState(null);
  const [error, setError] = useState(null);

  const fetchRequests = async () => {
    setLoading(true);
    setError(null);
    try {
      const data = await requestApi.getRequestsForInstitution(user?.institutionId || 'INST-001');
      setRequests(data);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchRequests();
  }, [user]);

  const handleInspectRequest = async (req) => {
    setSelectedReq(req);
    setEligibilityResult(null);
    setIssuedCred(null);
    setCheckingEligibility(true);
    try {
      const result = await eligibilityApi.checkEligibility(req.studentId, req.institutionId, req.courseCode);
      setEligibilityResult(result);
    } catch (err) {
      setError('Eligibility check notice: ' + err.message);
    } finally {
      setCheckingEligibility(false);
    }
  };

  const handleApproveAndIssue = async () => {
    if (!selectedReq) return;
    setActionLoading(true);
    setError(null);
    try {
      const issuePayload = {
        studentId: selectedReq.studentId,
        institutionId: selectedReq.institutionId,
        programCode: selectedReq.programCode,
        courseCode: selectedReq.courseCode,
        credentialType: selectedReq.requestedCredentialType,
        requestId: selectedReq.requestId,
        courseStartDate: '2025-06-01',
        courseEndDate: '2026-04-30',
        attendancePercent: 88.50,
        finalScore: 84.00,
      };

      const res = await credentialApi.generateCredential(issuePayload);
      setIssuedCred(res);
      fetchRequests();
    } catch (err) {
      setError('Issuance failed: ' + err.message);
    } finally {
      setActionLoading(false);
    }
  };

  const handleReject = async () => {
    if (!selectedReq || !rejectReason.trim()) return;
    setActionLoading(true);
    try {
      await requestApi.rejectRequest(selectedReq.requestId, rejectReason);
      setShowRejectModal(false);
      setRejectReason('');
      setSelectedReq(null);
      fetchRequests();
    } catch (err) {
      setError(err.message);
    } finally {
      setActionLoading(false);
    }
  };

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.75rem', flexWrap: 'wrap', gap: '1rem' }}>
        <div>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
            Credential Requests Review Queue
          </h2>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Review incoming student credential requests &bull; Execute automated eligibility checks &bull; Issue verified credentials
          </p>
        </div>
        <button onClick={fetchRequests} className="btn btn-outline" style={{ width: 'auto' }}>
          <RefreshCw size={14} className={loading ? 'spin' : ''} /> Refresh Queue
        </button>
      </div>

      {error && (
        <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', padding: '0.75rem 1rem', background: 'var(--danger-bg)', border: '1px solid var(--danger-border)', borderRadius: '0.5rem', color: '#f87171', marginBottom: '1.5rem' }}>
          <AlertCircle size={16} /> {error}
        </div>
      )}

      {/* Main Grid */}
      <div style={{ display: 'grid', gridTemplateColumns: selectedReq ? '1fr 1fr' : '1fr', gap: '1.75rem' }}>
        {/* Table Column */}
        <div className="health-card" style={{ padding: '1.25rem' }}>
          <div style={{ fontSize: '0.875rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '1rem', display: 'flex', alignItems: 'center', gap: '0.5rem' }}>
            <FileText size={16} color="var(--primary)" /> Requests Inbox ({requests.length})
          </div>

          {loading ? (
            <div style={{ textAlign: 'center', padding: '2.5rem', color: 'var(--text-secondary)' }}>Loading requests from database...</div>
          ) : requests.length === 0 ? (
            <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>
              <FileText size={36} color="var(--text-muted)" style={{ margin: '0 auto 0.75rem' }} />
              <div>No credential requests currently pending in queue.</div>
            </div>
          ) : (
            <div style={{ overflowX: 'auto' }}>
              <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.85rem' }}>
                <thead>
                  <tr>
                    <th style={{ padding: '0.65rem' }}>Request ID</th>
                    <th style={{ padding: '0.65rem' }}>Student</th>
                    <th style={{ padding: '0.65rem' }}>Credential Type</th>
                    <th style={{ padding: '0.65rem' }}>Status</th>
                    <th style={{ padding: '0.65rem', textAlign: 'right' }}>Action</th>
                  </tr>
                </thead>
                <tbody>
                  {requests.map((r) => (
                    <tr
                      key={r.requestId}
                      style={{
                        background: selectedReq?.requestId === r.requestId ? 'rgba(59, 130, 246, 0.12)' : 'transparent',
                      }}
                    >
                      <td style={{ padding: '0.65rem', fontFamily: 'var(--font-mono)', fontWeight: 600, color: 'var(--cyan)' }}>{r.requestId}</td>
                      <td style={{ padding: '0.65rem' }}>
                        <div style={{ fontWeight: 600, color: 'var(--text-primary)' }}>{r.studentName}</div>
                        <span style={{ fontSize: '0.75rem', color: 'var(--text-secondary)' }}>{r.studentId}</span>
                      </td>
                      <td style={{ padding: '0.65rem', color: 'var(--text-secondary)' }}>{r.requestedCredentialType}</td>
                      <td style={{ padding: '0.65rem' }}>
                        <span
                          className={`badge ${
                            r.requestStatus === 'ISSUED'
                              ? 'badge-success'
                              : r.requestStatus === 'REJECTED'
                              ? 'badge-danger'
                              : 'badge-warning'
                          }`}
                        >
                          {r.requestStatus}
                        </span>
                      </td>
                      <td style={{ padding: '0.65rem', textAlign: 'right' }}>
                        <button
                          onClick={() => handleInspectRequest(r)}
                          className="btn btn-outline"
                          style={{ width: 'auto', padding: '0.3rem 0.75rem', fontSize: '0.75rem' }}
                        >
                          <Eye size={12} /> Inspect
                        </button>
                      </td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          )}
        </div>

        {/* Inspection & Eligibility Column */}
        {selectedReq && (
          <div className="health-card" style={{ padding: '1.75rem' }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.25rem', borderBottom: '1px solid var(--border)', paddingBottom: '0.85rem' }}>
              <h3 style={{ fontSize: '1.15rem', fontWeight: 700, color: 'var(--text-primary)' }}>Request Details & Review</h3>
              <button
                onClick={() => setSelectedReq(null)}
                style={{ color: 'var(--text-secondary)', padding: '0.2rem' }}
              >
                <X size={18} />
              </button>
            </div>

            <div style={{ fontSize: '0.85rem', marginBottom: '1.5rem', background: 'rgba(8, 18, 32, 0.6)', padding: '1rem', borderRadius: '0.5rem', border: '1px solid var(--border)' }}>
              <div style={{ marginBottom: '0.35rem' }}><strong>Candidate:</strong> {selectedReq.studentName} (<code>{selectedReq.studentId}</code>)</div>
              <div style={{ marginBottom: '0.35rem' }}><strong>Course:</strong> {selectedReq.courseName || selectedReq.courseCode}</div>
              <div style={{ marginBottom: '0.35rem' }}><strong>Type:</strong> {selectedReq.requestedCredentialType}</div>
              <div><strong>Current Status:</strong> <span className="badge badge-warning">{selectedReq.requestStatus}</span></div>
            </div>

            {/* Explainable Eligibility Result */}
            {checkingEligibility ? (
              <div style={{ padding: '1.5rem', textAlign: 'center', color: 'var(--text-secondary)' }}>Running 5-Rule Eligibility Engine on PostgreSQL records...</div>
            ) : eligibilityResult ? (
              <div style={{ marginBottom: '1.5rem' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '0.85rem' }}>
                  <span style={{ fontSize: '0.875rem', fontWeight: 700, color: 'var(--text-primary)' }}>Eligibility Evaluation:</span>
                  <span className={`badge ${eligibilityResult.eligible ? 'badge-success' : 'badge-danger'}`}>
                    {eligibilityResult.overallResult}
                  </span>
                </div>

                <div style={{ display: 'flex', flexDirection: 'column', gap: '0.55rem' }}>
                  {eligibilityResult.rules.map((rule, idx) => (
                    <div
                      key={idx}
                      style={{
                        padding: '0.65rem 0.85rem',
                        borderRadius: '0.45rem',
                        border: '1px solid',
                        borderColor: rule.passed ? 'var(--success-border)' : 'var(--danger-border)',
                        background: rule.passed ? 'rgba(34, 197, 94, 0.08)' : 'rgba(239, 68, 68, 0.08)',
                        fontSize: '0.8rem',
                      }}
                    >
                      <div style={{ display: 'flex', justifyContent: 'space-between', fontWeight: 700, color: rule.passed ? '#4ade80' : '#f87171' }}>
                        <span>{rule.ruleName}</span>
                        <span>{rule.passed ? '✓ PASS' : '✗ FAIL'}</span>
                      </div>
                      <div style={{ color: 'var(--text-secondary)', fontSize: '0.75rem', marginTop: '0.25rem' }}>
                        Actual: <strong style={{ color: 'var(--text-primary)' }}>{rule.actualValue}</strong> &bull; Required: <code>{rule.requiredValue}</code>
                      </div>
                    </div>
                  ))}
                </div>
              </div>
            ) : null}

            {/* Issuance Success Result */}
            {issuedCred && (
              <div style={{ padding: '1.25rem', background: 'rgba(34, 197, 94, 0.12)', border: '1px solid var(--success-border)', borderRadius: '0.65rem', marginBottom: '1.5rem' }}>
                <div style={{ display: 'flex', alignItems: 'center', gap: '0.5rem', color: '#4ade80', fontWeight: 700, marginBottom: '0.6rem' }}>
                  <CheckCircle2 size={18} /> Credential Successfully Issued!
                </div>
                <div style={{ fontSize: '0.8rem', color: 'var(--text-secondary)' }}>
                  <div><strong>Credential ID:</strong> <code>{issuedCred.credentialId}</code></div>
                  <div style={{ marginTop: '0.35rem' }}><strong>SHA-256 Hash:</strong> <code style={{ fontSize: '0.7rem' }}>{issuedCred.credentialHash}</code></div>
                </div>
                {issuedCred.qrCodeBase64 && (
                  <div style={{ marginTop: '1rem', textAlign: 'center', background: '#fff', padding: '0.75rem', borderRadius: '0.5rem', width: 'fit-content', margin: '1rem auto 0' }}>
                    <img src={issuedCred.qrCodeBase64} alt="Verification QR Code" style={{ width: '120px', height: '120px', display: 'block' }} />
                  </div>
                )}
              </div>
            )}

            {/* Actions */}
            {selectedReq.requestStatus === 'PENDING' && !issuedCred && (
              <div style={{ display: 'flex', gap: '0.75rem' }}>
                <button
                  onClick={handleApproveAndIssue}
                  disabled={actionLoading || (eligibilityResult && !eligibilityResult.eligible)}
                  className="btn btn-primary"
                  style={{ flex: 1 }}
                >
                  <Award size={16} />
                  {actionLoading ? 'Issuing & Hashing...' : 'Approve & Issue Credential'}
                </button>
                <button
                  onClick={() => setShowRejectModal(true)}
                  disabled={actionLoading}
                  className="btn btn-outline"
                  style={{ width: 'auto', color: '#f87171', borderColor: 'var(--danger-border)' }}
                >
                  <XCircle size={16} /> Reject
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* Reject Modal */}
      {showRejectModal && (
        <div className="modal-overlay">
          <div className="modal-content" style={{ padding: '2rem', width: '90%', maxWidth: '450px' }}>
            <h3 style={{ fontSize: '1.25rem', fontWeight: 800, color: 'var(--text-primary)', marginBottom: '0.5rem' }}>Reject Credential Request</h3>
            <p style={{ fontSize: '0.85rem', color: 'var(--text-secondary)', marginBottom: '1.25rem' }}>
              Please provide an explainable reason for rejecting this request:
            </p>
            <textarea
              rows={3}
              value={rejectReason}
              onChange={(e) => setRejectReason(e.target.value)}
              placeholder="e.g. Attendance threshold (68%) below required minimum of 75%."
              style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '0.5rem', marginBottom: '1.25rem', fontSize: '0.875rem' }}
            />
            <div style={{ display: 'flex', gap: '0.75rem', justifyContent: 'flex-end' }}>
              <button onClick={() => setShowRejectModal(false)} className="btn btn-outline" style={{ width: 'auto' }}>
                Cancel
              </button>
              <button onClick={handleReject} disabled={!rejectReason.trim() || actionLoading} className="btn btn-primary" style={{ width: 'auto', background: 'var(--danger)' }}>
                Confirm Rejection
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
