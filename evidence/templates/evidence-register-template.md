# Access Review Evidence Register Template

## Simulation Notice

This template supports fictional evidence management for the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not contain real production evidence, patient information, employee records, vendor records, security-incident evidence, or native Microsoft Entra access-review records.

All evidence entered in this register must be created for the fictional lab, sanitized, permanently redacted where necessary, and safe for publication.

## 1. Register Information

```text
Register ID:
Register Title:
Related Project:
Document Owner:
Version:
Status:
Created Date:
Last Updated Date:
Review Frequency:
Next Review Date:
Repository Location:
```

Approved register-status values include:

```text
Empty Template
Simulation in Progress
Active
Under Review
Closed
Archived
```

## 2. Register Purpose

This register provides a central index of evidence connected to manual access-review activities.

The register is designed to:

- Link evidence to the appropriate review
- Link evidence to individual review items
- Track escalations and exceptions
- Track remediation and verification records
- Record evidence ownership and capture dates
- Record sensitivity and redaction status
- Support audit traceability
- Identify missing or incomplete evidence
- Prevent accidental publication of sensitive information
- Distinguish implemented controls from simulations and designs
- Support controlled retention and disposal

## 3. Evidence Identifier Standard

Each evidence item must receive a unique identifier using the following format:

```text
EVD-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Examples include:

```text
EVD-2026-HELPDESK-001
EVD-2026-SECURITY-READER-002
EVD-2026-NORTHSTAR-003
EVD-2026-B2B-GUEST-004
EVD-2026-EXTERNAL-VENDORS-005
```

Evidence identifiers must not be reused.

If an evidence item is replaced or corrected, create a new version or evidence identifier and preserve the relationship with the original record.

## 4. Related Identifier Standards

Use the following identifier formats:

```text
Access Review: AR-[YEAR]-[FREQUENCY]-[RESOURCE]-[SEQUENCE]
Escalation: ESC-[YEAR]-[RESOURCE]-[SEQUENCE]
Exception: EXC-[YEAR]-[RESOURCE]-[SEQUENCE]
Remediation: REM-[YEAR]-[RESOURCE]-[SEQUENCE]
Verification: VER-[YEAR]-[RESOURCE]-[SEQUENCE]
Evidence: EVD-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Example connected record set:

```text
Review ID: AR-2026-MONTHLY-HELPDESK-001
Escalation ID: ESC-2026-HELPDESK-001
Exception ID: EXC-2026-HELPDESK-001
Remediation ID: REM-2026-HELPDESK-001
Verification ID: VER-2026-HELPDESK-001
Evidence ID: EVD-2026-HELPDESK-001
```

Not every review requires an escalation, exception, remediation, or verification record.

Unused identifiers should be recorded as:

```text
Not Applicable
```

## 5. Evidence Status Labels

Use one of the following status labels.

### Implemented and Validated

Use when an artifact demonstrates a control configured and examined in the lab.

```text
Implemented and Validated
```

### Manually Simulated

Use when the evidence supports a fictional manual governance activity performed in the lab.

```text
Manually Simulated
```

### Design Validation

Use when the evidence supports evaluation of a proposed process or control design.

```text
Design Validation
```

### Designed, Not Implemented

Use when the artifact describes a control that was not technically configured.

```text
Designed, Not Implemented
```

### Assessed, Not Deployed

Use when the artifact documents assessment of a feature, licence, or capability that was not enabled.

```text
Assessed, Not Deployed
```

### Partially Implemented

Use when some control components were implemented while the remaining components are clearly identified.

```text
Partially Implemented
```

### Empty Template

Use when the file is a reusable blank template.

```text
Empty Template
```

The selected status must match what the evidence actually demonstrates.

## 6. Evidence Type Values

Approved evidence types include:

```text
Policy
Design Document
Procedure
Template
Access Snapshot
Role Assignment
Group Membership
Application Assignment
Guest Identity Record
Audit Record
Reviewer Decision
Escalation Record
Exception Record
Remediation Record
Verification Record
Final Review Summary
Screenshot
Export
Script
Script Output
Change Record
Commit History
Licensing Assessment
Control Status Matrix
Other
```

If `Other` is selected, provide a specific description.

## 7. Sensitivity Classification

Every evidence item must receive a sensitivity classification.

### Public

Evidence approved for public portfolio use.

Examples include:

- Policy documents
- Empty templates
- Fictional scenarios
- Sanitized screenshots
- Redacted diagrams
- High-level control descriptions

### Internal

Evidence intended for authorized organizational personnel.

Examples include:

- Complete access-review worksheets
- Internal assignment lists
- Reviewer names
- Detailed remediation records

### Confidential

Evidence that could create security, privacy, contractual, or operational risk if exposed.

Examples include:

- Privileged-access information
- Detailed identity information
- User-activity information
- Vendor contract information
- Security findings

### Restricted

Evidence requiring the highest protection.

Examples include:

- Passwords
- Access tokens
- Authentication codes
- Client secrets
- Recovery codes
- Private keys
- Highly sensitive personal information
- Unredacted security-incident evidence

Restricted information must never be committed to a public repository.

## 8. Redaction Status Values

Use one of the following redaction-status values:

```text
Not Required
Pending Review
Redaction Required
Redacted
Verified Redacted
Not Approved for Publication
```

Evidence must not be classified as public until any required redaction has been completed and verified.

## 9. Publication Status Values

Use one of the following publication-status values:

```text
Not Reviewed
Approved for Public Repository
Approved for Restricted Repository
Not Approved for Publication
Published
Removed from Publication
Archived
```

Publication approval must consider evidence ownership, sensitivity, redaction, project accuracy, and authorization to disclose.

## 10. Master Evidence Register

Create one entry for each evidence item.

### Evidence Item 1

```text
Evidence ID:
Evidence Title:
Evidence Type:
Evidence Status:
Related Review ID:
Related Review Item ID:
Related Escalation ID:
Related Exception ID:
Related Remediation ID:
Related Verification ID:
Resource:
Identity or Population:
Description:
Control Demonstrated:
File Name:
File Format:
Capture Date:
Captured By:
Source:
Sensitivity Classification:
Redaction Status:
Redaction Verified By:
Publication Status:
Repository Location:
Version:
Integrity Check:
Retention Start Date:
Retention Review Date:
Disposal Date:
Evidence Owner:
Verification Status:
Known Limitation:
Outstanding Action:
Notes:
```

Copy this complete subsection for every additional evidence item.

Do not delete fields. Use `Not Applicable` when a field does not apply.

## 11. Evidence Item Quality Checklist

Complete the following checklist for each evidence item:

- [ ] The evidence has a unique identifier.
- [ ] The title clearly describes the artifact.
- [ ] The evidence type is accurate.
- [ ] The evidence status is accurate.
- [ ] The resource is identified.
- [ ] The evidence is connected to the appropriate review or control.
- [ ] The capture date is recorded.
- [ ] The evidence source is recorded.
- [ ] The evidence owner is identified.
- [ ] The sensitivity classification is appropriate.
- [ ] Required redaction is complete.
- [ ] Redaction was verified.
- [ ] No passwords, secrets, tokens, or authentication codes are visible.
- [ ] No real patient, employee, student, client, or vendor information is exposed.
- [ ] The evidence accurately supports the stated control.
- [ ] Known limitations are disclosed.
- [ ] The repository location is correct.
- [ ] The retention-review date is recorded.
- [ ] The publication status is approved.
- [ ] The evidence is readable and complete.

```text
Quality Review Result:
Quality Reviewed By:
Quality Review Date:
Issue Identified:
Corrective Action:
```

## 12. Evidence File-Naming Standard

Use the following format:

```text
[REVIEW-ID]_[RESOURCE]_[EVIDENCE-TYPE]_[DATE].[EXTENSION]
```

Examples include:

```text
AR-2026-MONTHLY-HELPDESK-001_helpdesk-role_access-snapshot_2026-09-17.png
AR-2026-QUARTERLY-NORTHSTAR-001_northstar-portal_assignments_2026-09-17.png
AR-2026-MONTHLY-GUESTS-001_b2b-guests_review-list_2026-09-17.png
AR-2026-MONTHLY-VENDORS-001_external-vendors_verification_2026-09-17.png
```

File names should:

- Use lowercase for descriptive elements
- Use hyphens between descriptive words
- Use underscores between major components
- Use `YYYY-MM-DD` dates
- Avoid spaces
- Avoid personal email addresses
- Avoid confidential identifiers
- Avoid vague names such as `image1.png`
- Match the related evidence-register entry

## 13. Evidence Repository Structure

The proposed repository structure is:

```text
evidence/
├── access-reviews/
│   ├── administrative-roles/
│   ├── security-groups/
│   ├── northstar-portal/
│   ├── b2b-guests/
│   └── external-vendors/
├── escalations/
├── exceptions/
├── remediation/
├── verification/
├── templates/
│   ├── access-review-template.md
│   ├── escalation-template.md
│   ├── exception-template.md
│   ├── remediation-template.md
│   ├── verification-template.md
│   └── evidence-register-template.md
└── evidence-register.md
```

Empty folders do not need to be created until a safe artifact is ready for them.

The public repository must contain only approved, fictional, sanitized, or permanently redacted evidence.

## 14. Evidence Traceability

Evidence must support traceability across the review lifecycle:

```text
Access Snapshot
    ↓
Reviewer Assessment
    ↓
Decision
    ↓
Escalation or Exception, if required
    ↓
Remediation
    ↓
Verification
    ↓
Review Closure
```

The evidence register should allow an authorized reviewer to move from the initial access record to the final verified result.

Traceability is supported through:

- Consistent identifiers
- Accurate file names
- Cross-referenced records
- Repository locations
- Version history
- Review summaries
- Remediation records
- Verification records
- Git commit history

A file that cannot be connected to a resource, review, or control should not be treated as complete review evidence.

## 15. Missing Evidence Register

Record missing, lost, corrupted, unavailable, or incomplete evidence.

### Missing Evidence Item 1

```text
Expected Evidence ID:
Expected Evidence Type:
Related Review ID:
Resource:
Evidence Missing:
Reason:
Date Identified:
Risk:
Alternative Evidence:
Reproduction Possible:
Action Owner:
Target Date:
Current Status:
Effect on Review Conclusion:
```

Copy this subsection for each missing evidence item.

Missing evidence must not be silently ignored.

## 16. Evidence Correction Register

Record corrections made to finalized evidence.

### Correction Item 1

```text
Original Evidence ID:
Corrected Evidence ID:
Original File:
Corrected File:
Error Identified:
Effect on Original Conclusion:
Correction Description:
Correction Date:
Corrected By:
Authorized By:
Affected Review Reopened:
Evidence Register Updated:
Notes:
```

Corrections must preserve an appropriate audit trail.

Evidence must not be edited to make a failed control appear successful.

## 17. Evidence Version History

### Version Record 1

```text
Evidence ID:
Version:
Date:
Change Description:
Changed By:
Authorized By:
Previous Version Preserved:
Repository Location:
```

Use version numbers as follows:

```text
1.0
1.1
2.0
```

Increase the minor version for small corrections or clarifications.

Increase the major version for significant content, scope, decision, or evidence changes.

## 18. Retention Register

### Retention Item 1

```text
Evidence ID:
Evidence Type:
Evidence Owner:
Retention Start Date:
Proposed Retention Period:
Retention Review Date:
Legal or Investigation Hold:
Hold Owner:
Hold Release Date:
Approved Disposal Date:
Disposed By:
Disposal Method:
Disposal Record:
```

For this fictional lab design, the proposed retention target for completed access-review records is three years after review closure.

This is an internal fictional governance target, not a legal or regulatory requirement.

## 19. Publication Review

Before evidence is published, confirm:

- [ ] The evidence belongs to the lab or is authorized for disclosure.
- [ ] The identities are fictional, sanitized, or permanently redacted.
- [ ] No real patient information is present.
- [ ] No real employee, student, client, or vendor data is exposed.
- [ ] No passwords, secrets, tokens, private keys, or authentication codes are visible.
- [ ] Tenant and subscription identifiers are removed when unnecessary.
- [ ] Personal contact information is removed.
- [ ] Browser tabs, notifications, and desktop details do not expose sensitive information.
- [ ] Redaction is permanent.
- [ ] The evidence status is accurate.
- [ ] A simulation is clearly labeled.
- [ ] The artifact does not overstate implementation.
- [ ] The file name follows the approved standard.
- [ ] The evidence is linked to the appropriate control.
- [ ] The publication status has been approved.

```text
Publication Review Result:
Reviewed By:
Review Date:
Approved Repository:
Conditions:
Required Correction:
```

## 20. Prohibited Evidence

The following must never be committed to the public portfolio repository:

- Real patient or clinical information
- Real employee records
- Real student records
- Real client records
- Real vendor records
- Passwords
- Client secrets
- Access tokens
- Refresh tokens
- Authentication codes
- Recovery codes
- Private keys
- Confidential contracts
- Unredacted identity documents
- Unauthorized employer or school data
- Real security-incident evidence
- Screenshots from environments not authorized for disclosure
- Any information that could support unauthorized access

If a secret is accidentally committed, deleting the visible file might not remove it from Git history. The exposure must be treated as a security incident, and the affected credential must be revoked or rotated where applicable.

## 21. Evidence Metrics

```text
Total Evidence Items:
Public Items:
Internal Items:
Confidential Items:
Restricted Items:
Items Approved for Publication:
Items Pending Redaction:
Items Not Approved for Publication:
Missing Evidence Items:
Corrected Evidence Items:
Items Pending Verification:
Items with Known Limitations:
Items Reaching Retention Review:
```

Do not invent or estimate metrics.

Calculate metrics only from completed evidence entries.

## 22. Evidence Register Review Checklist

- [ ] Every evidence item has a unique identifier.
- [ ] Every item has an assigned owner.
- [ ] Every item has a sensitivity classification.
- [ ] Every item has a redaction status.
- [ ] Every item has a publication status.
- [ ] Every item has a repository location.
- [ ] Every item is linked to a review, control, or governance activity.
- [ ] Known limitations are recorded.
- [ ] Missing evidence is recorded.
- [ ] Corrected evidence preserves an audit trail.
- [ ] Retention-review dates are recorded.
- [ ] Restricted information is absent from the public repository.
- [ ] Simulated evidence is clearly labeled.
- [ ] Evidence status matches the artifact.
- [ ] Portfolio claims match registered evidence.

## 23. Register Maintenance

The Document Owner should review the evidence register:

- After adding evidence
- After correcting evidence
- After removing evidence
- After completing a review
- After completing remediation
- After verification
- Before publishing the repository
- Before updating portfolio wording
- When evidence reaches its retention-review date
- At least annually

Maintenance activities include:

- Adding new items
- Correcting inaccurate records
- Updating repository locations
- Updating versions
- Recording redaction completion
- Updating publication decisions
- Recording missing evidence
- Recording disposal
- Confirming owner assignments
- Reviewing retention dates
- Checking traceability

## 24. Register Approval

```text
Prepared By:
Preparation Date:
Reviewed By:
Review Date:
Approval Status:
Approved By:
Approval Date:
Known Limitations:
Next Review Date:
```

For this educational lab, self-review may be necessary. Any resulting separation-of-duties limitation should be documented.

## 25. Control Status

Select one:

- [ ] Empty Template
- [ ] Simulation in Progress
- [ ] Active Register
- [ ] Under Review
- [ ] Closed
- [ ] Archived

```text
Selected Status:
Status Justification:
Supporting Evidence:
```

This empty template does not prove that an operational evidence register has been created or populated.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Template Control

```text
Template: Access Review Evidence Register Template
File: evidence/templates/evidence-register-template.md
Version: 1.0
Status: Empty Template
Owner: Wisdom Kwame Djam
Created: 2026-09-17
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17
```

## Disclaimer

This template is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not contain real production evidence, patient information, employee records, vendor records, security-incident evidence, or native Microsoft Entra access-review records.
