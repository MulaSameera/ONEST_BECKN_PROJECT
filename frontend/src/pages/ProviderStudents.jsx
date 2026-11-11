import React, { useState, useEffect } from 'react';
import { studentApi } from '../services/api';
import { Link } from 'react-router-dom';

export const ProviderStudents = () => {
  const [students, setStudents] = useState([]);
  const [page, setPage] = useState(0);
  const [totalPages, setTotalPages] = useState(1);
  const [loading, setLoading] = useState(true);
  const [searchId, setSearchId] = useState('');
  const [error, setError] = useState(null);

  const fetchStudents = async (pageNum = 0) => {
    setLoading(true);
    setError(null);
    try {
      const data = await studentApi.getStudents(pageNum, 15);
      setStudents(data.content || []);
      setTotalPages(data.totalPages || 1);
      setPage(pageNum);
    } catch (err) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchStudents(0);
  }, []);

  const handleSearch = async (e) => {
    e.preventDefault();
    if (!searchId.trim()) {
      fetchStudents(0);
      return;
    }
    setLoading(true);
    try {
      const stu = await studentApi.getStudentById(searchId.trim());
      setStudents([stu]);
      setTotalPages(1);
    } catch (err) {
      setError('Student not found: ' + err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '1.75rem', flexWrap: 'wrap', gap: '1rem', borderBottom: '1px solid var(--border-wire)', paddingBottom: '1rem' }}>
        <div>
          <h2 style={{ fontSize: '1.5rem', fontWeight: 800, color: 'var(--text-primary)', letterSpacing: '-0.02em' }}>
            Students Directory
          </h2>
          <p style={{ color: 'var(--text-secondary)', fontSize: '0.875rem' }}>
            Direct queries against authoritative registry student records
          </p>
        </div>
        <button onClick={() => fetchStudents(page)} className="btn btn-outline" style={{ width: 'auto' }}>
          {loading ? 'Refreshing...' : 'Refresh'}
        </button>
      </div>

      {/* Search */}
      <div className="health-card" style={{ padding: '1.25rem', marginBottom: '1.5rem' }}>
        <form onSubmit={handleSearch} style={{ display: 'flex', gap: '0.75rem' }}>
          <input
            type="text"
            placeholder="Search by Student Hall Ticket / ID (e.g. A23126510162)..."
            value={searchId}
            onChange={(e) => setSearchId(e.target.value)}
            style={{ flex: 1, padding: '0.65rem 0.85rem', borderRadius: '3px', fontSize: '0.875rem' }}
          />
          <button type="submit" className="btn btn-primary" style={{ width: 'auto', padding: '0.65rem 1.15rem' }}>
            Search
          </button>
          {searchId && (
            <button
              type="button"
              onClick={() => { setSearchId(''); fetchStudents(0); }}
              className="btn btn-outline"
              style={{ width: 'auto' }}
            >
              Clear
            </button>
          )}
        </form>
      </div>

      {error && (
        <div style={{ padding: '0.85rem 1rem', background: 'var(--status-error-bg)', border: '1px solid var(--status-error-border)', borderRadius: '3px', color: 'var(--status-error-fg)', fontSize: '0.85rem', marginBottom: '1.5rem', fontFamily: 'var(--font-mono)' }}>
          {error}
        </div>
      )}

      {/* Table */}
      <div className="health-card" style={{ padding: '1.25rem' }}>
        {loading ? (
          <div style={{ textAlign: 'center', padding: '3rem', color: 'var(--text-secondary)' }}>Querying students from registry...</div>
        ) : (
          <div style={{ overflowX: 'auto' }}>
            <table style={{ width: '100%', borderCollapse: 'collapse', fontSize: '0.85rem' }}>
              <thead>
                <tr>
                  <th style={{ padding: '0.65rem' }}>Student ID</th>
                  <th style={{ padding: '0.65rem' }}>Student Name</th>
                  <th style={{ padding: '0.65rem' }}>Seeker Identifier</th>
                  <th style={{ padding: '0.65rem', textAlign: 'right' }}>Actions</th>
                </tr>
              </thead>
              <tbody>
                {students.map((s) => (
                  <tr key={s.studentId}>
                    <td style={{ padding: '0.65rem', fontFamily: 'var(--font-mono)', fontWeight: 600 }}>
                      {s.studentId}
                    </td>
                    <td style={{ padding: '0.65rem', fontWeight: 600, color: 'var(--text-primary)' }}>{s.studentName}</td>
                    <td style={{ padding: '0.65rem', fontFamily: 'var(--font-mono)', color: 'var(--text-secondary)' }}>{s.seekerId}</td>
                    <td style={{ padding: '0.65rem', textAlign: 'right' }}>
                      <Link
                        to="/provider/eligibility"
                        className="btn btn-outline"
                        style={{ width: 'auto', padding: '0.3rem 0.65rem', fontSize: '0.75rem', display: 'inline-block' }}
                      >
                        Check Eligibility
                      </Link>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>

            {/* Pagination */}
            {totalPages > 1 && (
              <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginTop: '1.5rem', paddingTop: '1rem', borderTop: '1px solid var(--border-wire)', fontSize: '0.85rem' }}>
                <button
                  onClick={() => fetchStudents(page - 1)}
                  disabled={page === 0}
                  className="btn btn-outline"
                  style={{ width: 'auto', padding: '0.4rem 0.9rem' }}
                >
                  Previous
                </button>
                <span style={{ color: 'var(--text-secondary)' }}>Page {page + 1} of {totalPages}</span>
                <button
                  onClick={() => fetchStudents(page + 1)}
                  disabled={page >= totalPages - 1}
                  className="btn btn-outline"
                  style={{ width: 'auto', padding: '0.4rem 0.9rem' }}
                >
                  Next
                </button>
              </div>
            )}
          </div>
        )}
      </div>
    </div>
  );
};
