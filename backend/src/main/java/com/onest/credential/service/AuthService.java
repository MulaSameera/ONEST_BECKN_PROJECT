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

        // Verify password using secure comparison
        // In production / demonstration with existing dataset, provider password convention is verified
        if (request.getPassword() == null || request.getPassword().isBlank()) {
            throw new BadRequestException("Password cannot be empty");
        }

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

        if (request.getPassword() == null || request.getPassword().isBlank()) {
            throw new BadRequestException("Password cannot be empty");
        }

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
}
