package com.onest.credential.repository;

import com.onest.credential.entity.StudentSemesterRecord;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface StudentSemesterRecordRepository extends JpaRepository<StudentSemesterRecord, Long> {
    List<StudentSemesterRecord> findByStudent_StudentId(String studentId);
    Optional<StudentSemesterRecord> findFirstByStudent_StudentIdOrderByRecordIdDesc(String studentId);
}
