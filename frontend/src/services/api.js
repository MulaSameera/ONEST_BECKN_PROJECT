import axios from 'axios';

const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || '/api';

const apiClient = axios.create({
  baseURL: API_BASE_URL,
  headers: {
    'Content-Type': 'application/json',
  },
  timeout: 15000,
});

apiClient.interceptors.request.use(
  (config) => {
    const token = localStorage.getItem('onest_auth_token');
    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }
    return config;
  },
  (error) => Promise.reject(error)
);

apiClient.interceptors.response.use(
  (response) => response,
  (error) => {
    const errorMessage =
      error.response?.data?.message ||
      error.response?.data?.error ||
      error.message ||
      'An unexpected error occurred';
    return Promise.reject(new Error(errorMessage));
  }
);

// Health
export const healthApi = {
  checkHealth: async () => (await apiClient.get('/health')).data,
  checkDatabaseHealth: async () => (await apiClient.get('/health/database')).data,
};

// Auth
export const authApi = {
  loginProvider: async (username, password) => (await apiClient.post('/auth/provider/login', { username, password })).data,
  loginSeeker: async (identifier, password) => (await apiClient.post('/auth/seeker/login', { identifier, password })).data,
  getCurrentUser: async () => (await apiClient.get('/auth/me')).data,
};

// Students
export const studentApi = {
  getStudents: async (page = 0, size = 20) => (await apiClient.get(`/students?page=${page}&size=${size}`)).data,
  getStudentById: async (id) => (await apiClient.get(`/students/${id}`)).data,
};

// Eligibility Engine
export const eligibilityApi = {
  checkEligibility: async (studentId, institutionId, courseCode) =>
    (await apiClient.post('/eligibility/check', { studentId, institutionId, courseCode })).data,
};

// Credential Requests
export const requestApi = {
  createRequest: async (requestData) => (await apiClient.post('/credential-requests', requestData)).data,
  getRequestsForStudent: async (studentId) => (await apiClient.get(`/credential-requests/student/${studentId}`)).data,
  getRequestsForInstitution: async (institutionId) => (await apiClient.get(`/credential-requests/institution/${institutionId}`)).data,
  rejectRequest: async (requestId, reason) => (await apiClient.post(`/credential-requests/${requestId}/reject`, { reason })).data,
};

// Credential Issuance & Retrieval
export const credentialApi = {
  generateCredential: async (credentialData) => (await apiClient.post('/credentials/generate', credentialData)).data,
  getCredentialById: async (credentialId) => (await apiClient.get(`/credentials/${credentialId}`)).data,
  getCredentialsByStudent: async (studentId) => (await apiClient.get(`/credentials/student/${studentId}`)).data,
  getCredentialsByInstitution: async (institutionId, page = 0, size = 20) =>
    (await apiClient.get(`/credentials/institution/${institutionId}?page=${page}&size=${size}`)).data,
};

// Public Verification
export const verifyApi = {
  verifyCredential: async (credentialId) => (await apiClient.get(`/verify/${credentialId}`)).data,
};

// Analytics & Audit
export const analyticsApi = {
  getSummary: async () => (await apiClient.get('/analytics/summary')).data,
};

export const auditApi = {
  getLogs: async () => (await apiClient.get('/audit')).data,
};

export default apiClient;
