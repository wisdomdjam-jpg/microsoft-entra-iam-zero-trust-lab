# Access Review Evidence Register

## Simulation Notice

This register documents fictional and sanitized evidence associated with the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not contain production access-review records, real employee information, real patient information, real vendor records, security-incident evidence, or native Microsoft Entra access-review records.

All identities, organizational responsibilities, review decisions, and business scenarios referenced in this register are fictional.

## 1. Register Information

```text
Register ID: EVR-2026-ACCESS-REVIEW-001
Register Title: Northstar Health Access Review Evidence Register
Related Project: Microsoft Entra IAM and Zero Trust Governance Lab
Document Owner: Wisdom Kwame Djam
Version: 1.0
Status: Active
Created Date: 2026-09-17
Last Updated Date: 2026-09-17
Review Frequency: Annual and event-driven
Next Review Date: 2027-09-17
Repository Location: evidence/evidence-register.md
```

## 2. Register Purpose

This register provides a central index of evidence connected to the fictional manual access-review simulation.

The register is designed to:

- Link evidence to the related access review
- Identify the resource and control demonstrated
- Record evidence ownership and capture dates
- Record sensitivity and publication status
- Track sanitization and redaction
- Document evidence limitations
- Support traceability from the access snapshot to review closure
- Prevent inaccurate portfolio claims
- Distinguish implemented role assignments from the manually simulated review process

## 3. Identifier Standards

The project uses the following identifier formats:

```text
Access Review: AR-[YEAR]-[FREQUENCY]-[RESOURCE]-[SEQUENCE]
Review Item: ARI-[YEAR]-[RESOURCE]-[SEQUENCE]
Escalation: ESC-[YEAR]-[RESOURCE]-[SEQUENCE]
Exception: EXC-[YEAR]-[RESOURCE]-[SEQUENCE]
Remediation: REM-[YEAR]-[RESOURCE]-[SEQUENCE]
Verification: VER-[YEAR]-[RESOURCE]-[SEQUENCE]
Evidence: EVD-[YEAR]-[RESOURCE]-[SEQUENCE]
```

The current review identifier is:

```text
AR-2026-MONTHLY-ADMIN-001
```

The current review-item identifiers are:

```text
ARI-2026-ADMIN-001
ARI-2026-ADMIN-002
```

## 4. Evidence Summary

```text
Total Evidence Items: 2
Implemented and Validated Items: 1
Manually Simulated Items: 1
Design Validation Items: 0
Designed, Not Implemented Items: 0
Assessed, Not Deployed Items: 0
Partially Implemented Items: 0
Empty Templates Included: 0
Items Approved for Public Repository: 2
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing Evidence Items: 0
Corrected Evidence Items: 0
Items with Known Limitations: 2
```

These totals apply only to the limited administrative-role review evidence registered below.

Empty templates are maintained separately and are not counted as evidence that the access-review process was performed.

## 5. Master Evidence Register

### 5.1 Evidence Item: Administrative-Role Assignment Record

```text
Evidence ID: EVD-2026-ADMIN-001
Evidence Title: Selected Administrative-Role Assignment Evidence
Evidence Type: Role Assignment
Evidence Status: Implemented and Validated
Related Review ID: AR-2026-MONTHLY-ADMIN-001
Related Review Item ID: ARI-2026-ADMIN-001 and ARI-2026-ADMIN-002
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Helpdesk Administrator and Security Reader
Identity or Population: Selected fictional IT support and security identities
Description: Sanitized configuration evidence supporting the existence of the selected Helpdesk Administrator and Security Reader assignments in the Microsoft Entra lab
Control Demonstrated: Least-privilege administrative-role assignment
File Name: Existing sanitized administrative-role configuration evidence
File Format: Existing project evidence
Capture Date: Previously captured during administrative-role configuration
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra administrative-role assignment records
Sensitivity Classification: Public after sanitization
Redaction Status: Sanitized for Portfolio Use
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Approved for Public Repository
Repository Location: Existing project evidence
Version: 1.0
Integrity Check: Supported by existing project configuration documentation
Retention Start Date: 2026-09-17
Retention Review Date: 2029-09-17
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Reviewed for the limited fictional simulation
Known Limitation: The register does not identify a dedicated evidence file path for the original role-assignment screenshot or record. Native Privileged Identity Management and Access Review history were unavailable because those capabilities were not deployed.
Outstanding Action: Link the exact sanitized evidence file and repository path when the final evidence-folder review is completed.
Notes: This evidence supports the existence of the selected lab assignments. It does not prove use of Privileged Identity Management, eligible assignment, just-in-time activation, or a native Microsoft Entra access review.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence type is accurate.
- [x] The related review and review items are identified.
- [x] The resource is identified.
- [x] The evidence status is limited to the implemented role assignments.
- [x] The sensitivity classification is recorded.
- [x] The known licensing limitation is disclosed.
- [x] The evidence is not described as a native Access Review record.
- [ ] The exact evidence file name and repository path have been confirmed.
- [ ] A final publication review of the original evidence file has been completed.

```text
Quality Review Result: Accepted with Outstanding Documentation Action
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-17
Issue Identified: The exact evidence file name and repository location must be confirmed during the final repository review.
Corrective Action: Locate the sanitized role-assignment evidence and update the file name, format, and repository location fields.
```

### 5.2 Evidence Item: Manual Administrative-Role Review Record

```text
Evidence ID: EVD-2026-ADMIN-002
Evidence Title: Sample Administrative-Role Access Review
Evidence Type: Final Review Summary
Evidence Status: Manually Simulated
Related Review ID: AR-2026-MONTHLY-ADMIN-001
Related Review Item ID: ARI-2026-ADMIN-001 and ARI-2026-ADMIN-002
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra Helpdesk Administrator and Security Reader roles
Identity or Population: Two selected fictional administrative-role holders
Description: Completed fictional manual review containing scope, reviewer assessments, explicit approval decisions, findings, evidence references, metrics, limitations, and closure
Control Demonstrated: Manual administrative-role access-recertification process
File Name: sample-administrative-role-review.md
File Format: Markdown
Capture Date: 2026-09-17
Captured By: Wisdom Kwame Djam
Source: Fictional manual access-review simulation
Sensitivity Classification: Public
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/access-reviews/administrative-roles/sample-administrative-role-review.md
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-17
Retention Review Date: 2029-09-17
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Completed for the limited simulation scope
Known Limitation: The simulation used a single participant, did not require remediation, and therefore did not demonstrate an actual post-remediation verification workflow.
Outstanding Action: Complete a future fictional review scenario involving removal or modification to test remediation and post-remediation verification.
Notes: This artifact supports only a limited fictional manual review. It does not demonstrate native Microsoft Entra Access Reviews, Privileged Identity Management, production access governance, or independent reviewer separation.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title describes the artifact.
- [x] The evidence status is accurate.
- [x] The review and review-item identifiers are included.
- [x] The fictional simulation is clearly labeled.
- [x] The repository location is recorded.
- [x] The sensitivity classification is appropriate.
- [x] The known limitations are documented.
- [x] The artifact does not claim native access-review automation.
- [x] The artifact does not contain real patient, employee, or vendor information.

```text
Quality Review Result: Accepted for Limited Fictional Simulation
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-17
Issue Identified: Independent reviewer separation and post-remediation verification were not demonstrated.
Corrective Action: Preserve the limitation and create a separate remediation-based simulation in a future phase if required.
```

## 6. Review Traceability

The current evidence supports the following traceability sequence:

```text
Administrative-Role Configuration
    ↓
Initial Access Snapshot Reference
    ↓
Manual Reviewer Assessment
    ↓
Two Explicit Approval Decisions
    ↓
No Escalation Required
    ↓
No Exception Required
    ↓
No Remediation Required
    ↓
Post-Remediation Verification Not Applicable
    ↓
Review Closure
```

The related records are:

```text
Review: AR-2026-MONTHLY-ADMIN-001
Review Item 1: ARI-2026-ADMIN-001
Review Item 2: ARI-2026-ADMIN-002
Configuration Evidence: EVD-2026-ADMIN-001
Manual Review Record: EVD-2026-ADMIN-002
Escalation: Not Applicable
Exception: Not Applicable
Remediation: Not Applicable
Post-Remediation Verification: Not Applicable
```

## 7. Access and Publication Review

### EVD-2026-ADMIN-001

- [x] The evidence is associated with the fictional lab.
- [x] The evidence supports selected administrative-role assignments.
- [x] The evidence is not described as a native Access Review record.
- [x] No credential or secret is intentionally included.
- [ ] The exact evidence file has received a final publication review.
- [ ] The exact repository path has been added to the register.

```text
Publication Review Result: Provisionally Approved Pending Final File Review
Reviewed By: Wisdom Kwame Djam
Review Date: 2026-09-17
Condition: Confirm the exact sanitized file and repository path before the final repository publication review.
```

### EVD-2026-ADMIN-002

- [x] The artifact belongs to the fictional lab.
- [x] Fictional identities and responsibilities are clearly identified.
- [x] No real patient information is included.
- [x] No real employee or vendor information is included.
- [x] No password, secret, token, or authentication code is included.
- [x] The simulation status is clear.
- [x] The single-participant limitation is disclosed.
- [x] The file name follows the repository standard.
- [x] The implementation claims are limited to the available evidence.

```text
Publication Review Result: Approved for Public Repository
Reviewed By: Wisdom Kwame Djam
Review Date: 2026-09-17
Condition: Preserve the simulation notice and implementation limitations.
```

## 8. Missing or Incomplete Evidence

### Incomplete Evidence Item 1

```text
Expected Evidence ID: EVD-2026-ADMIN-001
Expected Evidence Type: Sanitized Administrative-Role Assignment Evidence
Related Review ID: AR-2026-MONTHLY-ADMIN-001
Resource: Helpdesk Administrator and Security Reader
Evidence Missing: Exact file name, file format, and repository path
Reason: The simulation referenced previously captured role-assignment evidence without recording its exact repository location
Date Identified: 2026-09-17
Risk: The original configuration evidence cannot yet be traced directly from this register
Alternative Evidence: Administrative-role configuration documentation and the committed manual review record
Reproduction Possible: Yes, by capturing a new sanitized assignment snapshot if authorized and necessary
Action Owner: Wisdom Kwame Djam
Target Date: During the final repository evidence review
Current Status: Open Documentation Action
Effect on Review Conclusion: The limited fictional simulation remains documented, but the configuration-evidence traceability is incomplete
```

This limitation must remain visible until the exact evidence file is identified or a new sanitized snapshot is created.

## 9. Outstanding Actions

### Outstanding Action 1

```text
Action: Confirm the exact file name and repository location for EVD-2026-ADMIN-001
Related Resource: Helpdesk Administrator and Security Reader
Risk: Incomplete evidence traceability
Action Owner: Wisdom Kwame Djam
Target Date: Final repository evidence review
Current Status: Open
Required Evidence: Sanitized role-assignment screenshot or equivalent configuration record
Escalation Required: No
```

### Outstanding Action 2

```text
Action: Consider a future fictional removal or modification scenario
Related Resource: Selected administrative role, group, application assignment, or guest access
Risk: The current simulation does not demonstrate remediation and post-remediation verification
Action Owner: Wisdom Kwame Djam
Target Date: Future project phase
Current Status: Planned
Required Evidence: Review decision, remediation record, resulting access evidence, and verification record
Escalation Required: No
```

## 10. Register Metrics

```text
Total Evidence Items: 2
Public Items: 2
Internal Items: 0
Confidential Items: 0
Restricted Items: 0
Items Published: 1
Items Provisionally Approved: 1
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing or Incomplete Evidence Items: 1
Corrected Evidence Items: 0
Items with Known Limitations: 2
Outstanding Documentation Actions: 1
Future Validation Actions: 1
```

These metrics apply only to the evidence currently entered in this register.

## 11. Register Review Checklist

- [x] Every current evidence item has a unique identifier.
- [x] Every item has an assigned owner.
- [x] Every item has a sensitivity classification.
- [x] Every item has a redaction status.
- [x] Every item has a publication status.
- [x] Every item is linked to the related review.
- [x] Known limitations are recorded.
- [x] Incomplete traceability is recorded.
- [x] Simulated evidence is clearly labeled.
- [x] Restricted information is absent.
- [x] Evidence status matches the current artifacts.
- [x] Portfolio claims remain limited to the registered evidence.
- [ ] The exact location of EVD-2026-ADMIN-001 has been confirmed.

## 12. Control Status

```text
Selected Status: Active
Status Justification: The register contains two evidence entries supporting a limited fictional administrative-role access-review simulation. One entry has an outstanding documentation action concerning the exact location of the original sanitized role-assignment evidence.
Supporting Evidence: EVD-2026-ADMIN-001 and EVD-2026-ADMIN-002
```

The active register does not prove that:

- Native Microsoft Entra Access Reviews were deployed
- Privileged Identity Management was deployed
- A production access review occurred
- Independent reviewer separation was achieved
- Remediation was performed
- Post-remediation verification was performed
- Every administrative role in the tenant was reviewed

## 13. Register Maintenance

Update this register when:

- A new evidence item is added
- An exact evidence path is identified
- An evidence file is replaced or corrected
- Redaction is completed or verified
- Publication approval changes
- A new manual review is performed
- Remediation or verification evidence is created
- An escalation or exception simulation is performed
- Evidence reaches its retention-review date
- Portfolio wording changes

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Document Control

```text
Document: Access Review Evidence Register
File: evidence/evidence-register.md
Version: 1.0
Status: Active
Owner: Wisdom Kwame Djam
Created: 2026-09-17
Last Updated: 2026-09-17
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17
```

## Disclaimer

This register is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not contain production access-review evidence, real patient information, real employee records, real vendor records, security-incident evidence, regulatory evidence, or native Microsoft Entra access-review records.
