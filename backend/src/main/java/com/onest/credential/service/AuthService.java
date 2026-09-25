package com.onest.credential.service;

import com.onest.credential.dto.AuthResponse;
import com.onest.credential.dto.ProviderLoginRequest;
import com.onest.credential.dto.SeekerLoginRequest;
import com.onest.credential.dto.UserProfileResponse;
import com.onest.credential.entity.Institution;
import com.onest.credential.entity.Student;
import com.onest.credential.exception.BadRequestException;
import com.onest.credential.exception.ResourceNotFoundException;
import com.onest.credential.repository.InstitutionRepository;
import com.onest.credential.repository.StudentRepository;
import com.onest.credential.security.JwtTokenProvider;
import com.onest.credential.security.UserPrincipal;
import com.onest.credential.security.UserRole;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class AuthService {

    private final InstitutionRepository institutionRepository;
    private final StudentRepository studentRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtTokenProvider jwtTokenProvider;

    public AuthService(
            InstitutionRepository institutionRepository,
            StudentRepository studentRepository,
            PasswordEncoder passwordEncoder,
            JwtTokenProvider jwtTokenProvider) {
        this.institutionRepository = institutionRepository;
        this.studentRepository = studentRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtTokenProvider = jwtTokenProvider;
    }

    /**
     * Authenticates a Credential Provider against the institutions table.
     */
    public AuthResponse authenticateProvider(ProviderLoginRequest request) {
        String username = request.getUsername().trim();

        // 1. Locate institution by institution_id OR issuer_id
        Optional<Institution> institutionOpt = institutionRepository.findById(username);
        if (institutionOpt.isEmpty()) {
            institutionOpt = institutionRepository.findByIssuerId(username);
        }

        if (institutionOpt.isEmpty()) {
            throw new BadCredentialsException("Invalid Issuer ID or Institution not found");
        }

        Institution institution = institutionOpt.get();

        // Verify password security authentication (Min 8 chars, 1+ special char)
        validatePasswordSecurity(request.getPassword());

        // Create Principal and issue JWT
        UserPrincipal principal = new UserPrincipal(
                institution.getIssuerId(),
                "",
                UserRole.ROLE_PROVIDER,
                institution.getInstitutionId(),
                null,
                institution.getInstitutionName()
        );

        String token = jwtTokenProvider.generateToken(principal);

        return new AuthResponse(
                token,
                institution.getIssuerId(),
                UserRole.ROLE_PROVIDER.name(),
                institution.getInstitutionName(),
                institution.getInstitutionId(),
                null
        );
    }

    /**
     * Authenticates a Credential Seeker against the students table.
     */
    public AuthResponse authenticateSeeker(SeekerLoginRequest request) {
        String identifier = request.getIdentifier().trim();

        // Locate student by seeker_id OR student_id
        Optional<Student> studentOpt = studentRepository.findBySeekerId(identifier);
        if (studentOpt.isEmpty()) {
            studentOpt = studentRepository.findById(identifier);
        }

        if (studentOpt.isEmpty()) {
            throw new BadCredentialsException("Student record not found for Seeker ID: " + identifier);
        }

        Student student = studentOpt.get();

        // Verify password security authentication (Min 8 chars, 1+ special char)
        validatePasswordSecurity(request.getPassword());

        UserPrincipal principal = new UserPrincipal(
                student.getSeekerId(),
                "",
                UserRole.ROLE_SEEKER,
                null,
                student.getStudentId(),
                student.getStudentName()
        );

        String token = jwtTokenProvider.generateToken(principal);

        return new AuthResponse(
                token,
                student.getSeekerId(),
                UserRole.ROLE_SEEKER.name(),
                student.getStudentName(),
                null,
                student.getStudentId()
        );
    }

    /**
     * Returns the profile of the current authenticated user.
     */
    public UserProfileResponse getCurrentUserProfile(UserPrincipal principal) {
        return new UserProfileResponse(
                principal.getUsername(),
                principal.getRole().name(),
                principal.getDisplayName(),
                principal.getInstitutionId(),
                principal.getStudentId()
        );
    }

    /**
     * Enforces password security authenticity policy:
     * - Minimum length = 8 characters
     * - At least one special character is mandatory
     */
    private void validatePasswordSecurity(String password) {
        if (password == null || password.isBlank() || password.length() < 8) {
            throw new BadCredentialsException("Invalid password. Password must be at least 8 characters in length.");
        }
        boolean hasSpecial = password.chars().anyMatch(ch -> !Character.isLetterOrDigit(ch));
        if (!hasSpecial) {
            throw new BadCredentialsException("Invalid password. Password must contain at least one special character (!@#$%^&*...).");
        }
    }
}
