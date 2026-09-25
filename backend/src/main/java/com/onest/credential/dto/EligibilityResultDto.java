package com.onest.credential.dto;

import java.util.List;

public class EligibilityResultDto {

    private boolean eligible;
    private String overallResult; // "ELIGIBLE" or "NOT_ELIGIBLE"
    private String studentId;
    private String studentName;
    private String institutionId;
    private String institutionName;
    private String courseCode;
    private String courseName;
    private List<RuleResultDto> rules;
    private String summaryText;

    public EligibilityResultDto() {}

    public boolean isEligible() {
        return eligible;
    }

    public void setEligible(boolean eligible) {
        this.eligible = eligible;
    }

    public String getOverallResult() {
        return overallResult;
    }

    public void setOverallResult(String overallResult) {
        this.overallResult = overallResult;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public String getInstitutionId() {
        return institutionId;
    }

    public void setInstitutionId(String institutionId) {
        this.institutionId = institutionId;
    }

    public String getInstitutionName() {
        return institutionName;
    }

    public void setInstitutionName(String institutionName) {
        this.institutionName = institutionName;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public void setCourseCode(String courseCode) {
        this.courseCode = courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public List<RuleResultDto> getRules() {
        return rules;
    }

    public void setRules(List<RuleResultDto> rules) {
        this.rules = rules;
    }

    public String getSummaryText() {
        return summaryText;
    }

    public void setSummaryText(String summaryText) {
        this.summaryText = summaryText;
    }
}
