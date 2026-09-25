package com.onest.credential.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "programs")
public class Program {

    @Id
    @Column(name = "program_code", length = 20, nullable = false)
    private String programCode;

    @Column(name = "program_name", length = 200, nullable = false)
    private String programName;

    public Program() {}

    public Program(String programCode, String programName) {
        this.programCode = programCode;
        this.programName = programName;
    }

    public String getProgramCode() {
        return programCode;
    }

    public void setProgramCode(String programCode) {
        this.programCode = programCode;
    }

    public String getProgramName() {
        return programName;
    }

    public void setProgramName(String programName) {
        this.programName = programName;
    }
}
