import React, { useState, useEffect } from 'react';
import { useAuth } from '../context/AuthContext';
import { requestApi, eligibilityApi, credentialApi } from '../services/api';

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
      const data = await requestApi.getRequestsForInstitution(user?.institutionId || 'INST-ANITS');
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
        institutionId: selectedReq.institutionId || 'INST-ANITS',
        programCode: selectedReq.programCode,
        courseCode: selectedReq.courseCode,
        credentialType: selectedReq.requestedCredentialType || 'Semester Grade Card (R23)',
        requestId: selectedReq.requestId,
        courseStartDate: '2025-11-15',
        courseEndDate: '2026-05-30',
        attendancePercent: 92.50,
        finalScore: 91.50,
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
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '2rem', flexWrap: 'wrap', gap: '1rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1.25rem' }}>
        <div>
          <div className="hero-eyebrow" style={{ marginBottom: '0.4rem' }}>
            <span className="eyebrow-crimson-bar"></span>
            <span>STUDENT INBOX QUEUE</span>
          </div>
          <h2 className="hero-serif-heading" style={{ fontSize: '1.85rem', marginBottom: '0.35rem' }}>
            Credential Requests Review Queue
          </h2>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Review incoming student credential requests &bull; Execute automated eligibility checks &bull; Issue verified credentials
          </p>
        </div>
        <button onClick={fetchRequests} className="btn btn-refresh">
          {loading ? 'Refreshing...' : 'Refresh Queue'}
        </button>
      </div>

      {error && (
        <div style={{ padding: '0.85rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '3px', color: 'var(--status-error-fg)', fontSize: '0.85rem', marginBottom: '1.5rem', fontFamily: 'var(--font-mono)' }}>
          {error}
        </div>
      )}

      {/* Main Grid */}
      <div style={{ display: 'grid', gridTemplateColumns: selectedReq ? '1fr 1fr' : '1fr', gap: '1.75rem' }}>
        {/* Table Column */}
        <div className="health-card" style={{ padding: '1.25rem' }}>
          <div style={{ fontSize: '0.875rem', fontWeight: 700, color: 'var(--text-primary)', marginBottom: '1rem' }}>
            Requests Inbox ({requests.length})
          </div>

          {loading ? (
            <div style={{ textAlign: 'center', padding: '2.5rem', color: 'var(--text-secondary)' }}>Loading requests from database...</div>
          ) : requests.length === 0 ? (
            <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>
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
                        background: selectedReq?.requestId === r.requestId ? 'var(--bg-secondary)' : 'transparent',
                      }}
                    >
                      <td style={{ padding: '0.65rem', fontFamily: 'var(--font-mono)', fontWeight: 600 }}>{r.requestId}</td>
                      <td style={{ padding: '0.65rem' }}>
                        <div style={{ fontWeight: 600, color: 'var(--text-primary)' }}>{r.studentName}</div>
                        <span style={{ fontSize: '0.75rem', color: 'var(--text-muted)' }}>{r.studentId}</span>
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
                          style={{ width: 'auto', padding: '0.3rem 0.65rem', fontSize: '0.75rem' }}
                        >
                          Inspect
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
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.25rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '0.85rem' }}>
              <h3 style={{ fontSize: '1.15rem', fontWeight: 700, color: 'var(--text-primary)' }}>Request Details &amp; Review</h3>
              <button
                onClick={() => setSelectedReq(null)}
                style={{ color: 'var(--text-secondary)', padding: '0.2rem', fontWeight: 700 }}
              >
                [Close]
              </button>
            </div>

            <div style={{ fontSize: '0.85rem', marginBottom: '1.25rem', background: 'var(--bg-secondary)', padding: '0.85rem', borderRadius: '3px', border: '1px solid var(--border-wire)' }}>
              <div style={{ marginBottom: '0.35rem' }}><strong>Candidate:</strong> {selectedReq.studentName} (<code>{selectedReq.studentId}</code>)</div>
              <div style={{ marginBottom: '0.35rem' }}><strong>Course:</strong> {selectedReq.courseName || selectedReq.courseCode}</div>
              <div style={{ marginBottom: '0.35rem' }}><strong>Type:</strong> {selectedReq.requestedCredentialType}</div>
              <div><strong>Current Status:</strong> <span className="badge badge-warning">{selectedReq.requestStatus}</span></div>
            </div>

            {/* Explainable Eligibility Result */}
            {checkingEligibility ? (
              <div style={{ padding: '1.5rem', textAlign: 'center', color: 'var(--text-secondary)' }}>Running 5-Rule Eligibility Engine on registry records...</div>
            ) : eligibilityResult ? (
              <div style={{ marginBottom: '1.25rem' }}>
                <div style={{ display: 'flex', alignItems: 'center', justifyContent: 'space-between', marginBottom: '0.75rem' }}>
                  <span style={{ fontSize: '0.875rem', fontWeight: 700, color: 'var(--text-primary)' }}>Eligibility Evaluation:</span>
                  <span className={`badge ${eligibilityResult.eligible ? 'badge-success' : 'badge-danger'}`}>
                    {eligibilityResult.overallResult}
                  </span>
                </div>

                <div style={{ display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
                  {eligibilityResult.rules.map((rule, idx) => (
                    <div
                      key={idx}
                      style={{
                        padding: '0.65rem 0.85rem',
                        borderRadius: '3px',
                        border: '1px solid',
                        borderColor: rule.passed ? 'var(--status-success-border)' : 'var(--status-error-border)',
                        background: rule.passed ? 'var(--status-success-bg)' : 'var(--status-error-bg)',
                        fontSize: '0.8rem',
                      }}
                    >
                      <div style={{ display: 'flex', justifyContent: 'space-between', fontWeight: 700, color: rule.passed ? 'var(--status-success-fg)' : 'var(--status-error-fg)' }}>
                        <span>{rule.ruleName}</span>
                        <span>{rule.passed ? 'PASS' : 'FAIL'}</span>
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
              <div style={{ padding: '1.25rem', background: 'var(--status-success-bg)', border: '1px solid var(--status-success-border)', borderRadius: '3px', marginBottom: '1.25rem' }}>
                <div style={{ color: 'var(--status-success-fg)', fontWeight: 700, marginBottom: '0.5rem', fontFamily: 'var(--font-mono)' }}>
                  STATUS: VALID (CREDENTIAL ISSUED &amp; PERSISTED)
                </div>
                <div style={{ fontSize: '0.8rem', color: 'var(--text-secondary)' }}>
                  <div><strong>Credential ID:</strong> <code>{issuedCred.credentialId}</code></div>
                </div>
                {issuedCred.qrCodeBase64 && (
                  <div style={{ marginTop: '0.85rem', textAlign: 'center', background: '#fff', padding: '0.5rem', borderRadius: '3px', width: 'fit-content', margin: '0.85rem auto 0', border: '1px solid var(--border-wire)' }}>
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
                  {actionLoading ? 'Issuing & Hashing...' : 'Approve & Issue Credential'}
                </button>
                <button
                  onClick={() => setShowRejectModal(true)}
                  disabled={actionLoading}
                  className="btn btn-outline"
                  style={{ width: 'auto', color: 'var(--status-error-fg)', borderColor: 'var(--status-error-border)' }}
                >
                  Reject
                </button>
              </div>
            )}
          </div>
        )}
      </div>

      {/* Reject Modal */}
      {showRejectModal && (
        <div className="modal-overlay">
          <div className="modal-content" style={{ padding: '1.75rem', width: '90%', maxWidth: '450px' }}>
            <h3 style={{ fontSize: '1.2rem', fontWeight: 800, color: 'var(--text-primary)', marginBottom: '0.5rem' }}>Reject Credential Request</h3>
            <p style={{ fontSize: '0.85rem', color: 'var(--text-secondary)', marginBottom: '1.25rem' }}>
              Please provide an explainable reason for rejecting this request:
            </p>
            <textarea
              rows={3}
              value={rejectReason}
              onChange={(e) => setRejectReason(e.target.value)}
              placeholder="e.g. Attendance threshold below required minimum of 75%."
              style={{ width: '100%', padding: '0.65rem 0.85rem', borderRadius: '3px', marginBottom: '1.25rem', fontSize: '0.875rem' }}
            />
            <div style={{ display: 'flex', gap: '0.75rem', justifyContent: 'flex-end' }}>
              <button onClick={() => setShowRejectModal(false)} className="btn btn-outline" style={{ width: 'auto' }}>
                Cancel
              </button>
              <button onClick={handleReject} disabled={!rejectReason.trim() || actionLoading} className="btn btn-danger" style={{ width: 'auto' }}>
                Confirm Rejection
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};
