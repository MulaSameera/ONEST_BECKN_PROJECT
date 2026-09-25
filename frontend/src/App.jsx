import React from 'react';
import { BrowserRouter, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from './context/AuthContext';
import { Header } from './components/Header';
import { Footer } from './components/Footer';
import { ProtectedRoute } from './components/ProtectedRoute';
import { DustParticles } from './components/DustParticles';

// Public Pages
import { LandingPage } from './pages/LandingPage';
import { ProviderLoginPage } from './pages/ProviderLoginPage';
import { SeekerLoginPage } from './pages/SeekerLoginPage';
import { PublicVerifyPage } from './pages/PublicVerifyPage';

// Provider Pages
import { ProviderLayout } from './layouts/ProviderLayout';
import { ProviderDashboard } from './pages/ProviderDashboard';
import { ProviderRequests } from './pages/ProviderRequests';
import { ProviderEligibility } from './pages/ProviderEligibility';
import { ProviderIssueCredential } from './pages/ProviderIssueCredential';
import { ProviderIssuedCredentials } from './pages/ProviderIssuedCredentials';
import { ProviderStudents } from './pages/ProviderStudents';
import { ProviderAnalytics } from './pages/ProviderAnalytics';
import { ProviderAuditLogs } from './pages/ProviderAuditLogs';

// Seeker Pages
import { SeekerLayout } from './layouts/SeekerLayout';
import { SeekerDashboard } from './pages/SeekerDashboard';
import { SeekerMyCredentials } from './pages/SeekerMyCredentials';
import { SeekerRequestCredential } from './pages/SeekerRequestCredential';

export default function App() {
  return (
    <AuthProvider>
      <BrowserRouter>
        <DustParticles />
        <div style={{ minHeight: '100vh', display: 'flex', flexDirection: 'column', position: 'relative', zIndex: 1 }}>
          <Header />
          <main className="container" style={{ flex: 1 }}>
            <Routes>
              {/* Public Routes */}
              <Route path="/" element={<LandingPage />} />
              <Route path="/provider/login" element={<ProviderLoginPage />} />
              <Route path="/seeker/login" element={<SeekerLoginPage />} />
              <Route path="/verify" element={<PublicVerifyPage />} />
              <Route path="/verify/:credentialId" element={<PublicVerifyPage />} />

              {/* Provider Protected Routes */}
              <Route
                path="/provider"
                element={
                  <ProtectedRoute requiredRole="ROLE_PROVIDER">
                    <ProviderLayout />
                  </ProtectedRoute>
                }
              >
                <Route index element={<Navigate to="/provider/dashboard" replace />} />
                <Route path="dashboard" element={<ProviderDashboard />} />
                <Route path="requests" element={<ProviderRequests />} />
                <Route path="eligibility" element={<ProviderEligibility />} />
                <Route path="issue" element={<ProviderIssueCredential />} />
                <Route path="issued" element={<ProviderIssuedCredentials />} />
                <Route path="students" element={<ProviderStudents />} />
                <Route path="analytics" element={<ProviderAnalytics />} />
                <Route path="audit" element={<ProviderAuditLogs />} />
              </Route>

              {/* Seeker Protected Routes */}
              <Route
                path="/seeker"
                element={
                  <ProtectedRoute requiredRole="ROLE_SEEKER">
                    <SeekerLayout />
                  </ProtectedRoute>
                }
              >
                <Route index element={<Navigate to="/seeker/dashboard" replace />} />
                <Route path="dashboard" element={<SeekerDashboard />} />
                <Route path="credentials" element={<SeekerMyCredentials />} />
                <Route path="request" element={<SeekerRequestCredential />} />
              </Route>

              {/* Fallback */}
              <Route path="*" element={<Navigate to="/" replace />} />
            </Routes>
          </main>
          <Footer />
        </div>
      </BrowserRouter>
    </AuthProvider>
  );
}
