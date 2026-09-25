package com.onest.credential.repository;

import com.onest.credential.entity.CredentialRequest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CredentialRequestRepository extends JpaRepository<CredentialRequest, String> {

    List<CredentialRequest> findByStudent_StudentIdOrderByRequestDateDesc(String studentId);

    List<CredentialRequest> findByInstitution_InstitutionIdOrderByRequestDateDesc(String institutionId);

    Page<CredentialRequest> findByInstitution_InstitutionIdOrderByRequestDateDesc(String institutionId, Pageable pageable);

    List<CredentialRequest> findByInstitution_InstitutionIdAndRequestStatusOrderByRequestDateDesc(String institutionId, String requestStatus);

    @Query("SELECT COUNT(r) FROM CredentialRequest r WHERE r.institution.institutionId = :institutionId AND r.requestStatus = :status")
    long countByInstitutionAndStatus(@Param("institutionId") String institutionId, @Param("status") String status);

    long countByRequestStatus(String requestStatus);
}
