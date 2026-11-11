package com.onest.credential.controller;

import com.onest.credential.dto.StudentSemesterRecordDto;
import com.onest.credential.entity.Student;
import com.onest.credential.entity.StudentSemesterRecord;
import com.onest.credential.exception.ResourceNotFoundException;
import com.onest.credential.repository.StudentRepository;
import com.onest.credential.repository.StudentSemesterRecordRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/students")
public class StudentController {

    private final StudentRepository studentRepository;
    private final StudentSemesterRecordRepository studentSemesterRecordRepository;

    public StudentController(
            StudentRepository studentRepository,
            StudentSemesterRecordRepository studentSemesterRecordRepository) {
        this.studentRepository = studentRepository;
        this.studentSemesterRecordRepository = studentSemesterRecordRepository;
    }

    @GetMapping
    public ResponseEntity<Page<Student>> getStudents(
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "20") int size) {
        return ResponseEntity.ok(studentRepository.findAll(PageRequest.of(page, size)));
    }

    @GetMapping("/{studentId}")
    public ResponseEntity<Student> getStudentById(@PathVariable String studentId) {
        return ResponseEntity.ok(studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student not found with ID: " + studentId)));
    }

    @GetMapping("/{studentId}/semester-record")
    public ResponseEntity<StudentSemesterRecordDto> getStudentSemesterRecord(@PathVariable String studentId) {
        Student student = studentRepository.findById(studentId)
                .orElseThrow(() -> new ResourceNotFoundException("Student not found with ID: " + studentId));

        return studentSemesterRecordRepository.findFirstByStudent_StudentIdOrderByRecordIdDesc(studentId)
                .map(r -> {
                    StudentSemesterRecordDto dto = new StudentSemesterRecordDto();
                    dto.setRecordId(r.getRecordId());
                    dto.setStudentId(student.getStudentId());
                    dto.setStudentName(student.getStudentName());
                    
                    String progCode = "PRG-CSE";
                    if (studentId.contains("6552")) progCode = "PRG-CSM";
                    else if (studentId.contains("6551")) progCode = "PRG-CSD";
                    else if (studentId.contains("6511")) progCode = "PRG-IT";
                    else if (studentId.contains("6512")) progCode = "PRG-ECE";
                    else if (studentId.contains("6514")) progCode = "PRG-EEE";
                    else if (studentId.contains("6520")) progCode = "PRG-MECH";
                    else if (studentId.contains("6508")) progCode = "PRG-CIVIL";
                    else if (studentId.contains("6502")) progCode = "PRG-CHEM";
                    dto.setProgramCode(progCode);

                    dto.setAcademicYear(r.getAcademicYear());
                    dto.setSemester(r.getSemester());
                    dto.setSgpa(r.getSgpa());
                    dto.setCgpa(r.getCgpa());
                    dto.setAttendancePercent(r.getAttendancePercent());
                    dto.setBacklogCount(r.getBacklogCount());
                    dto.setResultStatus(r.getResultStatus());
                    dto.setExamMonthYear(r.getExamMonthYear());
                    dto.setDateOfIssue(r.getDateOfIssue());
                    dto.setSubjectGrades(r.getSubjectGrades());
                    return ResponseEntity.ok(dto);
                })
                .orElse(ResponseEntity.notFound().build());
    }
}
