package com.onest.credential.dto;

public class RuleResultDto {
    private String ruleName;
    private String ruleKey;
    private boolean passed;
    private String actualValue;
    private String requiredValue;
    private String reason;

    public RuleResultDto() {}

    public RuleResultDto(String ruleName, String ruleKey, boolean passed, String actualValue, String requiredValue, String reason) {
        this.ruleName = ruleName;
        this.ruleKey = ruleKey;
        this.passed = passed;
        this.actualValue = actualValue;
        this.requiredValue = requiredValue;
        this.reason = reason;
    }

    public String getRuleName() {
        return ruleName;
    }

    public void setRuleName(String ruleName) {
        this.ruleName = ruleName;
    }

    public String getRuleKey() {
        return ruleKey;
    }

    public void setRuleKey(String ruleKey) {
        this.ruleKey = ruleKey;
    }

    public boolean isPassed() {
        return passed;
    }

    public void setPassed(boolean passed) {
        this.passed = passed;
    }

    public String getActualValue() {
        return actualValue;
    }

    public void setActualValue(String actualValue) {
        this.actualValue = actualValue;
    }

    public String getRequiredValue() {
        return requiredValue;
    }

    public void setRequiredValue(String requiredValue) {
        this.requiredValue = requiredValue;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}
