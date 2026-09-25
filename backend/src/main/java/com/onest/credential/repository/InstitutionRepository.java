package com.onest.credential.repository;

import com.onest.credential.entity.Institution;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface InstitutionRepository extends JpaRepository<Institution, String> {
    Optional<Institution> findByIssuerId(String issuerId);
}
