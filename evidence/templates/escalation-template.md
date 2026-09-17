# Access Review Escalation Template

## Simulation Notice

This template supports fictional escalation scenarios for the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not document a real security incident, employee decision, patient environment, vendor dispute, production escalation, or native Microsoft Entra access-review workflow.

All identities, resources, explanations, decisions, and business scenarios entered in this template must be fictional, sanitized, or appropriately redacted.

## 1. Escalation Information

```text
Escalation ID:
Related Review ID:
Related Review Item ID:
Escalation Title:
Resource:
Identity:
Identity Type:
Current Assignment:
Date Opened:
Required Decision Date:
Date Resolved:
Date Closed:
Current Status:
Risk Classification:
```

Use the following escalation identifier format:

```text
ESC-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Example:

```text
ESC-2026-HELPDESK-001
```

Approved status values include:

```text
Draft
Open
Under Review
Pending Evidence
Pending Decision
Remediation Required
Verification Required
Resolved
Closed
Closed with Outstanding Actions
```

Approved risk classifications include:

```text
Level 1: Standard
Level 2: High Risk
Level 3: Critical
```

## 2. Escalation Purpose

Describe why the access-review item requires escalation.

```text
Purpose:
```

Example:

```text
Escalate an administrative-role assignment because the Primary Reviewer could not confirm the current business justification using the evidence available during the manual access review.
```

## 3. Reason for Escalation

Select all applicable reasons:

- [ ] Missing business justification
- [ ] Incomplete evidence
- [ ] Contradictory evidence
- [ ] Resource Owner unavailable
- [ ] Primary Reviewer conflict of interest
- [ ] Backup Reviewer conflict of interest
- [ ] Reviewer lacks sufficient authority
- [ ] Reviewer lacks required technical knowledge
- [ ] Disputed access requirement
- [ ] Unsupported privileged access
- [ ] Excessive privilege
- [ ] Separation-of-duties concern
- [ ] Guest without a confirmed sponsor
- [ ] Vendor status cannot be confirmed
- [ ] Expired contract, project, or engagement
- [ ] Remediation could not be completed
- [ ] Review deadline missed
- [ ] Possible security concern
- [ ] Possible privacy concern
- [ ] Significant operational impact
- [ ] Exception request requires higher approval
- [ ] Other

```text
Selected Reason:
Detailed Explanation:
```

## 4. Escalation Scope

```text
Identity:
Identity Type:
Account Status:
Resource:
Resource Type:
Current Assignment:
Assignment Type:
Assignment Source:
Business Function:
Resource Owner:
Internal Sponsor:
Contract or Project End Date:
Existing Exception ID:
Related Evidence IDs:
```

### In Scope

- Identity or assignment under review:
- Resource affected:
- Access path under review:
- Related role or group:
- Evidence considered:

### Out of Scope

- Unrelated identities:
- Unrelated applications:
- Unrelated groups:
- Technical limitations:
- Evidence limitations:

## 5. Roles and Responsibilities

```text
Identity and Access Management Administrator:
Original Reviewer:
Backup Reviewer:
Resource Owner:
Escalation Authority:
Security Authority:
Privacy or Compliance Representative:
Remediation Owner:
Verification Owner:
```

If one person performs multiple roles in the lab, record:

```text
Separation-of-Duties Limitation:
Compensating Measure:
```

The person receiving the access must not act as the sole Escalation Authority for that assignment.

## 6. Risk Assessment

### 6.1 Risk of Retaining Access

```text
Potential Security Effect:
Potential Privacy Effect:
Potential Operational Effect:
Potential Governance Effect:
Likelihood:
Impact:
Overall Risk:
```

### 6.2 Risk of Removing Access

```text
Potential Service Effect:
Potential User Effect:
Potential Project Effect:
Potential Recovery Requirement:
Likelihood:
Impact:
Overall Risk:
```

### 6.3 Risk Classification

Select one:

- [ ] Level 1: Standard
- [ ] Level 2: High Risk
- [ ] Level 3: Critical

```text
Selected Risk Level:
Risk Rationale:
Required Resolution Period:
```

Recommended internal resolution targets:

```text
Level 1: Five business days
Level 2: Three business days
Level 3: Immediate escalation and response
```

These are fictional Northstar Health governance targets, not Microsoft Entra service limits.

## 7. Available Evidence

List the evidence available when the escalation was opened.

### Evidence Item 1

```text
Evidence ID:
Evidence Type:
Description:
Source:
Capture Date:
File Name:
Repository Location:
Sensitivity Classification:
Redaction Status:
Reliability:
Limitation:
```

Copy this subsection for each additional evidence item.

Evidence may include:

- Initial access snapshot
- Role-assignment record
- Group-membership record
- Enterprise-application assignment record
- B2B guest record
- Resource-owner confirmation
- Sponsor confirmation
- Contract or project status
- Reviewer comments
- Audit information available to the lab
- Previous exception record
- Remediation attempt
- Verification result

Only evidence that was actually examined may be listed.

## 8. Missing or Contradictory Evidence

```text
Evidence Missing:
Evidence Requested From:
Request Date:
Response Deadline:
Response Received:
Evidence Received:
Contradiction Identified:
Effect on Decision:
Follow-up Required:
```

Missing evidence must not be treated as approval.

Suspected activity must be described as suspected unless appropriate evidence confirms otherwise.

## 9. Temporary Controls

Determine whether access should remain unchanged while the escalation is open.

Select all temporary controls applied:

- [ ] No temporary control required
- [ ] Temporarily suspend access
- [ ] Remove privileged role
- [ ] Reduce privilege level
- [ ] Remove sensitive group membership
- [ ] Restrict application access
- [ ] Temporarily disable guest identity
- [ ] Increase review frequency
- [ ] Apply managerial oversight
- [ ] Apply additional activity monitoring
- [ ] Prevent new assignments
- [ ] Apply another compensating control

```text
Temporary Control Selected:
Reason:
Approved By:
Implemented By:
Implementation Date:
Expected End Date:
Reassessment Date:
Evidence ID:
Conditions for Restoring Access:
```

The lab must not claim that a technical restriction or monitoring control was applied unless that activity was actually performed and supported by evidence.

## 10. Escalation Authority Assessment

The Escalation Authority should assess:

- Whether a current business need exists
- Whether the identity is authorized
- Whether the access level is proportionate
- Whether a lower-privilege alternative is available
- Whether sponsorship or resource ownership remains valid
- Whether the assignment creates duplicate access
- Whether the assignment creates a conflict of interest
- Whether the assignment creates a separation-of-duties concern
- Whether an exception is justified
- Whether temporary restriction is required
- Whether a security or privacy investigation is required
- Whether the evidence is sufficient for a defensible decision

```text
Assessment Date:
Assessment Performed By:
Business Need Confirmed:
Identity Authorization Confirmed:
Access Level Appropriate:
Lower-Privilege Alternative Available:
Sponsorship or Ownership Confirmed:
Conflict of Interest Identified:
Separation-of-Duties Concern:
Exception Required:
Investigation Required:
Evidence Sufficient:
Assessment Notes:
```

## 11. Final Escalation Decision

Select one final outcome:

- [ ] Approve continued access
- [ ] Remove access
- [ ] Modify access
- [ ] Temporarily suspend access
- [ ] Grant a time-limited exception
- [ ] Refer for security investigation
- [ ] Refer for privacy or compliance review
- [ ] Refer to another authorized decision-maker
- [ ] Unable to resolve within the required period

```text
Final Decision:
Decision Date:
Decision Authority:
Decision Rationale:
Evidence Considered:
Risk Accepted:
Conditions:
Required Action:
Action Owner:
Completion Deadline:
Next Review Date:
```

The final decision must include a specific rationale.

Insufficient example:

```text
Keep access.
```

Acceptable example:

```text
Remove the Helpdesk Administrator assignment because no current IT support responsibility or approved privileged-access requirement could be confirmed. Retain the standard member account for the fictional user's non-administrative lab responsibilities.
```

## 12. Exception Referral

Complete this section if the final decision requires a time-limited exception.

```text
Exception Required:
Exception ID:
Exception Owner:
Approval Authority:
Business Justification:
Risk Classification:
Compensating Controls:
Effective Date:
Expiration Date:
Re-review Date:
Transition or Remediation Plan:
```

If no exception is required, record:

```text
Exception Required: No
Reason: The escalation was resolved without temporary retention outside the standard access requirements.
```

Do not leave this section blank.

## 13. Security or Privacy Referral

Complete this section if the escalation identifies a potential security or privacy concern.

```text
Referral Required:
Referral Type:
Referral Authority:
Referral Date:
Reason:
Evidence Preserved:
Temporary Restriction:
Reference ID:
Access Decision:
Referral Status:
```

If no referral is required, record:

```text
Referral Required: No
Reason: The escalation did not identify a concern requiring separate security, privacy, or compliance handling.
```

An access-review escalation must not be represented as a completed security investigation.

## 14. Remediation

Document the approved access change.

```text
Remediation Required:
Related Review Item ID:
Approved Action:
Identity:
Resource:
Previous Access State:
Expected Access State:
Remediation Owner:
Required Completion Date:
Actual Completion Date:
Result:
Remediation Evidence ID:
Error or Limitation:
Follow-up Action:
```

If no remediation is required, record:

```text
Remediation Required: No
Reason:
```

## 15. Verification

Verification must confirm that the final decision was implemented correctly.

```text
Verification Required:
Expected Access State:
Observed Access State:
Alternative Access Paths Checked:
Verification Owner:
Verification Date:
Verification Result:
Verification Evidence ID:
Corrective Action Required:
Corrective Action Owner:
Corrective Action Deadline:
```

Approved verification results include:

```text
Verified
Failed Verification
Partially Verified
Unable to Verify
Not Applicable
```

An escalation must not be marked fully closed while required remediation or verification remains incomplete.

## 16. Evidence Register

### Evidence Item 1

```text
Evidence ID:
Related Review ID:
Escalation ID:
Evidence Type:
Resource:
Description:
File Name:
Capture Date:
Captured By:
Sensitivity Classification:
Redaction Status:
Repository Location:
Verification Status:
```

Copy this subsection for every evidence item.

Approved sensitivity classifications include:

```text
Public
Internal
Confidential
Restricted
```

Restricted information must never be committed to the public repository.

## 17. Resolution Summary

```text
Escalation ID:
Related Review ID:
Related Review Item ID:
Date Opened:
Date Resolved:
Resolution Time:
Risk Level:
Final Decision:
Temporary Control Used:
Exception Created:
Security or Privacy Referral:
Remediation Status:
Verification Status:
Outstanding Risk:
Next Action:
Next Review Date:
```

## 18. Outstanding Actions

### Outstanding Action 1

```text
Action:
Related Resource:
Risk:
Action Owner:
Target Date:
Current Status:
Required Evidence:
Escalation Required:
```

Copy this subsection for each additional action.

If no actions remain, record:

```text
Outstanding Actions: None
```

## 19. Closure Criteria

An escalation may be closed only when:

- [ ] The reason for escalation is documented.
- [ ] The affected identity and resource are identified.
- [ ] The risk classification is recorded.
- [ ] Available and missing evidence are documented.
- [ ] Temporary controls were considered.
- [ ] An authorized Escalation Authority made the final decision.
- [ ] The decision rationale is specific.
- [ ] Required remediation was completed.
- [ ] Required remediation was verified.
- [ ] Any exception was formally recorded.
- [ ] Any security or privacy concern was referred appropriately.
- [ ] Evidence items were registered.
- [ ] Sensitive information was protected.
- [ ] Simulated records were clearly labeled.
- [ ] Outstanding actions have accountable owners.
- [ ] The next review date was recorded.

## 20. Closure Approval

```text
Prepared By:
Preparation Date:

Original Reviewer:
Escalation Date:

Escalation Authority:
Decision Date:

Remediation Owner:
Remediation Completion Date:

Verification Owner:
Verification Completion Date:

Closed By:
Closure Date:

Final Status:
Next Review Date:
```

For this educational lab, one person may perform multiple roles. Any resulting separation-of-duties limitation must be documented.

## 21. Escalation Metrics

```text
Escalation Resolution Time:
Resolution Target Met:
Evidence Requests Sent:
Evidence Requests Completed:
Temporary Controls Applied:
Remediation Actions Required:
Remediation Actions Completed:
Verification Result:
Exception Created:
Outstanding Actions:
```

Do not invent or estimate metrics.

## 22. Lessons Learned

```text
What caused the escalation:
What evidence was difficult to obtain:
What decision criterion was unclear:
What temporary control was useful:
What remediation issue occurred:
What should be improved:
What could be automated later:
What policy or template requires an update:
```

## 23. Control Status

Select one status:

- [ ] Empty Template
- [ ] Simulation in Progress
- [ ] Resolved with Outstanding Actions
- [ ] Manually Simulated and Validated

```text
Selected Status:
Status Justification:
Supporting Evidence:
```

Do not select `Manually Simulated and Validated` unless the escalation decision, remediation, verification, evidence register, and closure records are complete.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Template Control

```text
Template: Access Review Escalation Template
File: evidence/templates/escalation-template.md
Version: 1.0
Status: Empty Template
Owner: Wisdom Kwame Djam
Created: 2026-09-17
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17
```

## Disclaimer

This template is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not document a real production escalation, security incident, privacy investigation, employee decision, patient environment, vendor dispute, or native Microsoft Entra access-review workflow.
