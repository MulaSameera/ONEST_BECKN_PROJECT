package com.onest.credential.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "institutions")
public class Institution {

    @Id
    @Column(name = "institution_id", length = 20, nullable = false)
    private String institutionId;

    @Column(name = "institution_name", length = 200, nullable = false)
    private String institutionName;

    @Column(name = "issuer_id", length = 30, nullable = false, unique = true)
    private String issuerId;

    public Institution() {}

    public Institution(String institutionId, String institutionName, String issuerId) {
        this.institutionId = institutionId;
        this.institutionName = institutionName;
        this.issuerId = issuerId;
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

    public String getIssuerId() {
        return issuerId;
    }

    public void setIssuerId(String issuerId) {
        this.issuerId = issuerId;
    }
}
