package com.onest.credential.repository;

import com.onest.credential.entity.Credential;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface CredentialRepository extends JpaRepository<Credential, String> {

    Optional<Credential> findByCredentialHash(String credentialHash);

    List<Credential> findByStudent_StudentId(String studentId);

    List<Credential> findByInstitution_InstitutionId(String institutionId);

    Page<Credential> findByInstitution_InstitutionId(String institutionId, Pageable pageable);

    @Query("SELECT COUNT(c) FROM Credential c WHERE c.student.studentId = :studentId AND c.institution.institutionId = :institutionId")
    long countByStudentAndInstitution(@Param("studentId") String studentId, @Param("institutionId") String institutionId);

    @Query("SELECT DISTINCT c.institution.institutionId FROM Credential c WHERE c.student.studentId = :studentId")
    List<String> findInstitutionIdsByStudentId(@Param("studentId") String studentId);
}
