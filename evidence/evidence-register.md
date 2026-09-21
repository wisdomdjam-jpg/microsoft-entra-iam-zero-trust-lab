# Access Review and Automation Evidence Register

## Simulation Notice

This register documents fictional and sanitized evidence associated with the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not contain production access-review records, real employee information, real patient information, real vendor records, security-incident evidence, regulatory evidence, or native Microsoft Entra access-review records.

All identities, organizational responsibilities, review decisions, and business scenarios referenced in this register are fictional.

## 1. Register Information

```text
Register ID: EVR-2026-ACCESS-REVIEW-001
Register Title: Northstar Health Access Review and Automation Evidence Register
Related Project: Microsoft Entra IAM and Zero Trust Governance Lab
Document Owner: Wisdom Kwame Djam
Version: 1.24
Status: Active
Created Date: 2026-09-17
Last Updated Date: 2026-09-20
Review Frequency: Annual and event-driven
Next Review Date: 2027-09-17
Repository Location: evidence/evidence-register.md
```

## 2. Register Purpose

This register provides a central index of evidence connected to the fictional access-review simulation, Microsoft Graph read-only automation, audit validation, licensing assessments, identity lifecycle, group membership, B2B collaboration, application access, authentication methods, and Microsoft Graph permission configuration.

The register is designed to:

- Link evidence to the related control or review
- Identify the resource and control demonstrated
- Record evidence ownership, capture dates, sensitivity, and publication status
- Track sanitization and redaction
- Document evidence limitations and outstanding actions
- Support traceability from configuration through review and closure
- Prevent inaccurate portfolio claims
- Distinguish implemented, manually simulated, partially implemented, and assessed-but-not-deployed controls

## 3. Identifier Standards

```text
Access Review: AR-[YEAR]-[FREQUENCY]-[RESOURCE]-[SEQUENCE]
Review Item: ARI-[YEAR]-[RESOURCE]-[SEQUENCE]
Escalation: ESC-[YEAR]-[RESOURCE]-[SEQUENCE]
Exception: EXC-[YEAR]-[RESOURCE]-[SEQUENCE]
Remediation: REM-[YEAR]-[RESOURCE]-[SEQUENCE]
Verification: VER-[YEAR]-[RESOURCE]-[SEQUENCE]
Evidence: EVD-[YEAR]-[RESOURCE]-[SEQUENCE]
```

```text
Current Review ID: AR-2026-MONTHLY-ADMIN-001
Current Review Items: ARI-2026-ADMIN-001 and ARI-2026-ADMIN-002
```

## 4. Evidence Summary

```text
Total Evidence Items: 30
Implemented and Validated Items: 21
Manually Simulated Items: 1
Partially Implemented Items: 2
Design Validation Items: 0
Designed, Not Implemented Items: 0
Assessed, Not Deployed Items: 6
Empty Templates Included: 0
Items Approved for Public Repository: 30
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing Evidence Items: 0
Corrected Evidence Items: 0
Items with Known Limitations: 28
```

These totals cover administrative-role review evidence, read-only Microsoft Graph automation, audit logs, licensing assessments, identity lifecycle, group memberships, B2B collaboration, application access, authentication-method targeting, and Microsoft Graph permission configuration.

Empty templates are maintained separately and are not counted as evidence that a process or control was executed.

## 5. Master Evidence Register

### 5.1 Evidence Item: Selected Administrative-Role Assignment Evidence

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
Identity or Population: Casey IT Support and Morgan Security
Description: Two sanitized screenshots showing direct Helpdesk Administrator and Security Reader assignments.
Control Demonstrated: Least-privilege administrative-role assignment
File Name: AR-2026-MONTHLY-ADMIN-001_helpdesk-administrator_assignment_2026-09-17.png; AR-2026-MONTHLY-ADMIN-001_security-reader_assignment_2026-09-17.png
File Format: PNG
Capture Date: 2026-09-17
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra administrative-role assignment records
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/access-reviews/administrative-roles/
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-17
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Direct assignments are shown, but PIM, eligible assignment, just-in-time activation, and native Access Reviews are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.2 Evidence Item: Sample Administrative-Role Access Review

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
Description: Completed limited fictional manual review with explicit decisions, evidence references, metrics, limitations, and closure.
Control Demonstrated: Manual administrative-role access recertification
File Name: sample-administrative-role-review.md
File Format: Markdown
Capture Date: 2026-09-17
Captured By: Wisdom Kwame Djam
Source: Fictional manual access-review simulation
Sensitivity Classification: Public after sanitization
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/access-reviews/administrative-roles/sample-administrative-role-review.md
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-17
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Completed for limited simulation
Known Limitation: A single participant was used and no remediation or independent post-remediation verification was required.
Outstanding Action: Complete a future remediation-based fictional review if required.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.3 Evidence Item: Microsoft Entra Read-Only Inventory Script

```text
Evidence ID: EVD-2026-AUTOMATION-001
Evidence Title: Microsoft Entra Read-Only Inventory Script
Evidence Type: Script
Evidence Status: Partially Implemented
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra tenant inventory
Identity or Population: Selected fictional users, guests, groups, and application resources
Description: Locally tested PowerShell script using delegated read-only Microsoft Graph permissions to generate sanitized inventory exports.
Control Demonstrated: Read-only inventory automation and evidence preparation
File Name: Get-EntraReadOnlyInventory.ps1
File Format: PowerShell
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Locally tested Microsoft Graph PowerShell workflow
Sensitivity Classification: Public after sanitization
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: scripts/Get-EntraReadOnlyInventory.ps1
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Partially Validated
Known Limitation: Northstar service-principal discovery, administrative-role inventory, and Northstar assignment inventory were not validated in the short script.
Outstanding Action: Complete the remaining read-only inventory areas in a future phase.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.4 Evidence Item: Sanitized Microsoft Entra User and Guest Inventory

```text
Evidence ID: EVD-2026-AUTOMATION-002
Evidence Title: Sanitized Microsoft Entra User and Guest Inventory
Evidence Type: Script Output
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra users
Identity or Population: Fictional lab identities approved for publication
Description: Public-safe CSV of fictional display names, user types, and account-enabled status.
Control Demonstrated: Automated user, guest, and account-status inventory
File Name: entra-users-and-guests-public.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-users-and-guests-public.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Personal administrative and guest identities were excluded from the public version.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.5 Evidence Item: Microsoft Entra Security-Group Inventory

```text
Evidence ID: EVD-2026-AUTOMATION-003
Evidence Title: Microsoft Entra Security-Group Inventory
Evidence Type: Script Output
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra security groups
Identity or Population: Six fictional role-aligned security groups
Description: Read-only CSV inventory of group display names, security-enabled status, and group types.
Control Demonstrated: Automated security-group inventory
File Name: entra-security-groups.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public after sanitization
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-security-groups.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The export does not demonstrate every membership, owner, effective access path, or application assignment.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.6 Evidence Item: Sanitized External-Vendor Membership Inventory

```text
Evidence ID: EVD-2026-AUTOMATION-004
Evidence Title: Sanitized External-Vendor Membership Inventory
Evidence Type: Script Output
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: GRP-External-Vendors
Identity or Population: Fictional vendor identity approved for publication
Description: Public-safe CSV of selected external-vendor group membership.
Control Demonstrated: Automated external-vendor membership inventory
File Name: entra-external-vendor-membership-public.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-external-vendor-membership-public.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: A personal guest identity in the complete local export was excluded from the public version.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.7 Evidence Item: Microsoft Entra Inventory Validation Summary

```text
Evidence ID: EVD-2026-AUTOMATION-005
Evidence Title: Microsoft Entra Inventory Validation Summary
Evidence Type: Script Output
Evidence Status: Partially Implemented
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra inventory automation
Identity or Population: Selected lab inventory areas
Description: CSV summary distinguishing validated and pending automation areas.
Control Demonstrated: Transparent automation-status tracking
File Name: entra-inventory-validation-summary.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public after sanitization
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-inventory-validation-summary.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Partially Validated
Known Limitation: Northstar service-principal discovery returned Object Not Found; administrative-role and Northstar assignment automation remained Not Yet Validated.
Outstanding Action: Complete the three pending inventory areas in a future phase.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.8 Evidence Item: Microsoft Entra Identity and Application Audit Activities

```text
Evidence ID: EVD-2026-AUDIT-001
Evidence Title: Microsoft Entra Identity and Application Audit Activities
Evidence Type: Audit Record
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra audit logs
Identity or Population: Selected fictional identity and application-management activities
Description: Sanitized screenshot showing successful identity-management, authentication, directory-management, and application-management audit activities.
Control Demonstrated: Administrative-activity logging and audit traceability
File Name: entra-audit-log-identity-and-application-activities_2026-09-13.png
File Format: PNG
Capture Date: 2026-09-13
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra audit logs
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/audit-logs/entra-audit-log-identity-and-application-activities_2026-09-13.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-13
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Summary-level events do not show every target, initiating identity, modified property, or detailed result.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.9 Evidence Item: Read-Only Microsoft Graph User and Guest Inventory

```text
Evidence ID: EVD-2026-AUTOMATION-006
Evidence Title: Read-Only Microsoft Graph User and Guest Inventory
Evidence Type: Script Output Screenshot
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra users
Identity or Population: Fictional member and guest identities approved for publication
Description: Sanitized PowerShell screenshot showing delegated User.Read.All authentication and read-only user retrieval.
Control Demonstrated: Read-only user and guest inventory automation
File Name: graph-readonly-user-and-guest-inventory_2026-09-18.png
File Format: PNG
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/graph-readonly-user-and-guest-inventory_2026-09-18.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Only the first returned identities are shown; effective access, memberships, and complete tenant coverage are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.10 Evidence Item: Read-Only Microsoft Graph Security-Group Inventory

```text
Evidence ID: EVD-2026-AUTOMATION-007
Evidence Title: Read-Only Microsoft Graph Security-Group Inventory
Evidence Type: Script Output Screenshot
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra security groups
Identity or Population: Six fictional role-aligned security groups
Description: Sanitized PowerShell screenshot showing read-only retrieval of six security-enabled groups.
Control Demonstrated: Read-only security-group inventory automation
File Name: graph-readonly-security-group-inventory_2026-09-18.png
File Format: PNG
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/graph-readonly-security-group-inventory_2026-09-18.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Complete membership, ownership, effective access, dynamic rules, licensing, and application assignment are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.11 Evidence Item: Microsoft Entra Lifecycle Workflows Licensing Assessment

```text
Evidence ID: EVD-2026-LICENSING-001
Evidence Title: Microsoft Entra Lifecycle Workflows Licensing Assessment
Evidence Type: Licensing Assessment
Evidence Status: Assessed, Not Deployed
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra Lifecycle Workflows
Identity or Population: Not Applicable
Description: Sanitized screenshot showing access denied and a Microsoft Entra ID Governance licensing requirement.
Control Demonstrated: Licensing-aware assessment of automated identity lifecycle
File Name: entra-lifecycle-workflows-license-requirement_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/licensing-assessments/entra-lifecycle-workflows-license-requirement_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Assessed
Known Limitation: No configured workflow, deployment, successful automation, or complete licensing analysis is demonstrated.
Outstanding Action: Reassess if appropriate licensing becomes available.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.12 Evidence Item: Microsoft Entra Identity Governance and Entitlement Management Assessment

```text
Evidence ID: EVD-2026-LICENSING-002
Evidence Title: Microsoft Entra Identity Governance and Entitlement Management Assessment
Evidence Type: Licensing Assessment
Evidence Status: Assessed, Not Deployed
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra Identity Governance
Identity or Population: Fictional lab tenant resources
Description: Sanitized dashboard screenshot showing Entitlement Management, access packages, lifecycle workflows, access reviews, and premium prompts.
Control Demonstrated: Licensing-aware assessment of identity-governance capabilities
File Name: entra-identity-governance-entitlement-assessment_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/licensing-assessments/entra-identity-governance-entitlement-assessment_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Assessed
Known Limitation: No catalog, access package, approval workflow, automatic expiration, native review, or lifecycle workflow is demonstrated.
Outstanding Action: Reassess if appropriate licensing becomes available.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.13 Evidence Item: Microsoft Entra PIM Access Reviews Licensing Assessment

```text
Evidence ID: EVD-2026-LICENSING-003
Evidence Title: Microsoft Entra PIM Access Reviews Licensing Assessment
Evidence Type: Licensing Assessment
Evidence Status: Assessed, Not Deployed
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra PIM Access Reviews
Identity or Population: Administrative-role assignments
Description: Sanitized screenshot showing access denied and the displayed EMS E5 or Entra ID P2 licensing requirement.
Control Demonstrated: Licensing-aware assessment of privileged-role access reviews
File Name: entra-pim-access-reviews-license-requirement_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/licensing-assessments/entra-pim-access-reviews-license-requirement_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Assessed
Known Limitation: PIM deployment, eligible assignment, JIT activation, native review, reviewer decisions, and automated remediation are not demonstrated.
Outstanding Action: Reassess if appropriate licensing becomes available.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.14 Evidence Item: Microsoft Entra Privileged Identity Management Premium-Feature Assessment

```text
Evidence ID: EVD-2026-LICENSING-004
Evidence Title: Microsoft Entra Privileged Identity Management Premium-Feature Assessment
Evidence Type: Licensing Assessment
Evidence Status: Assessed, Not Deployed
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra Privileged Identity Management
Identity or Population: Proposed administrative-role governance
Description: Sanitized PIM quick-start screenshot showing assignment, activation, approval, audit, alert, and review capabilities.
Control Demonstrated: Licensing-aware privileged-access assessment
File Name: entra-pim-premium-feature-assessment_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/licensing-assessments/entra-pim-premium-feature-assessment_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Assessed
Known Limitation: No licensing entitlement, PIM deployment, role activation, approval workflow, remediation, or native review is demonstrated.
Outstanding Action: Reassess if appropriate licensing becomes available.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.15 Evidence Item: Microsoft Entra PIM Active and Eligible Role Interface Assessment

```text
Evidence ID: EVD-2026-LICENSING-005
Evidence Title: Microsoft Entra PIM Active and Eligible Role Interface Assessment
Evidence Type: Licensing Assessment
Evidence Status: Assessed, Not Deployed
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra PIM role catalogue
Identity or Population: Visible administrative-role definitions
Description: Sanitized screenshot showing separate Active and Eligible role-assignment columns.
Control Demonstrated: Assessment of active, eligible, and JIT privileged-role governance
File Name: entra-pim-active-eligible-role-interface_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/licensing-assessments/entra-pim-active-eligible-role-interface_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Assessed
Known Limitation: Only a visible portion of the catalogue is shown; PIM licensing, eligible assignment, activation, approval, and expiration are not demonstrated.
Outstanding Action: Reassess if appropriate licensing becomes available.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.16 Evidence Item: Microsoft Entra Conditional Access Licensing Assessment

```text
Evidence ID: EVD-2026-LICENSING-006
Evidence Title: Microsoft Entra Conditional Access Licensing Assessment
Evidence Type: Licensing Assessment
Evidence Status: Assessed, Not Deployed
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra Conditional Access
Identity or Population: Proposed administrator, workforce, and application-access populations
Description: Sanitized screenshot showing access denied and Microsoft Entra ID P1 or P2 as the displayed licensing requirement.
Control Demonstrated: Licensing-aware Conditional Access assessment
File Name: entra-conditional-access-license-requirement_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/licensing-assessments/entra-conditional-access-license-requirement_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Assessed
Known Limitation: No policy, report-only test, MFA enforcement, legacy-authentication block, application condition, or monitoring is demonstrated.
Outstanding Action: Reassess if appropriate licensing becomes available.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.17 Evidence Item: Disabled Microsoft Entra Lifecycle Identity

```text
Evidence ID: EVD-2026-IDENTITY-001
Evidence Title: Disabled Microsoft Entra Lifecycle Identity
Evidence Type: Identity Record
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra user identity
Identity or Population: Riley Lifecycle
Description: Sanitized screenshot showing a disabled fictional member with zero visible groups, applications, roles, and licences.
Control Demonstrated: Manual leaver-style disablement and state verification
File Name: entra-riley-lifecycle-disabled-account_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/identities/entra-riley-lifecycle-disabled-account_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The responsible process, disablement time, session revocation, credential invalidation, automated offboarding, and indirect access removal are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.18 Evidence Item: GRP-HR-Users Direct Membership Evidence

```text
Evidence ID: EVD-2026-GROUP-001
Evidence Title: GRP-HR-Users Direct Membership Evidence
Evidence Type: Group Membership
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: GRP-HR-Users
Identity or Population: Riley Lifecycle and Taylor HR
Description: Sanitized screenshot showing two direct fictional members.
Control Demonstrated: Role-aligned group membership and lifecycle-state documentation
File Name: entra-grp-hr-users-direct-membership_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/security-groups/entra-grp-hr-users-direct-membership_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated for visible state
Known Limitation: Timing, approval, transition sequence, dynamic membership, and effective application access are not demonstrated.
Outstanding Action: Preserve as a staged lifecycle state.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.19 Evidence Item: GRP-Finance-Users Direct Membership Evidence

```text
Evidence ID: EVD-2026-GROUP-002
Evidence Title: GRP-Finance-Users Direct Membership Evidence
Evidence Type: Group Membership
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: GRP-Finance-Users
Identity or Population: Jordan Finance and Riley Lifecycle
Description: Sanitized screenshot showing two direct fictional members.
Control Demonstrated: Role-aligned group membership and lifecycle-state documentation
File Name: entra-grp-finance-users-direct-membership_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/security-groups/entra-grp-finance-users-direct-membership_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated for visible state
Known Limitation: Timing, approval, HR-group removal, completed mover sequence, dynamic membership, and effective application access are not demonstrated.
Outstanding Action: Preserve as a staged lifecycle state.
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.20 Evidence Item: Public GRP-External-Vendors Direct Membership Evidence

```text
Evidence ID: EVD-2026-GROUP-003
Evidence Title: Public GRP-External-Vendors Direct Membership Evidence
Evidence Type: Group Membership
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: GRP-External-Vendors
Identity or Population: Vendor Support
Description: Public-safe screenshot showing Vendor Support as a direct member.
Control Demonstrated: External-vendor membership and privacy-conscious publication
File Name: entra-grp-external-vendors-public-membership_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/security-groups/entra-grp-external-vendors-public-membership_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated for public state
Known Limitation: A personal guest was excluded; invitation redemption, sponsorship, duration, effective access, review completion, and expiration are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.21 Evidence Item: Microsoft Entra B2B Guest Invitation Acceptance

```text
Evidence ID: EVD-2026-B2B-001
Evidence Title: Microsoft Entra B2B Guest Invitation Acceptance
Evidence Type: Guest Identity Record
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra B2B guest identity
Identity or Population: Sanitized fictional external guest
Description: Sanitized screenshot showing guest type, invitation creation, and Accepted state.
Control Demonstrated: B2B invitation acceptance and external-identity lifecycle validation
File Name: 17-entra-b2b-guest-invitation-accepted_2026-09-14.png
File Format: PNG
Capture Date: 2026-09-14
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/b2b-guests/17-entra-b2b-guest-invitation-accepted_2026-09-14.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-14
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Sender, sponsorship, authentication method, group membership, application access, duration, entitlement management, and review completion are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.22 Evidence Item: Microsoft Entra B2B Guest Invitation Pending Acceptance

```text
Evidence ID: EVD-2026-B2B-002
Evidence Title: Microsoft Entra B2B Guest Invitation Pending Acceptance
Evidence Type: Guest Identity Record
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra B2B guest identity
Identity or Population: Northstar Vendor Guest
Description: Sanitized screenshot showing a fictional guest invitation in Pending acceptance state.
Control Demonstrated: B2B invitation creation and pre-redemption validation
File Name: 18-entra-b2b-guest-invitation-pending_2026-09-14.png
File Format: PNG
Capture Date: 2026-09-14
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/b2b-guests/18-entra-b2b-guest-invitation-pending_2026-09-14.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-14
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Sender, delivery, sponsorship, authentication method, group membership, application access, duration, entitlement management, and review completion are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.23 Evidence Item: Northstar Service-Principal Audit Target

```text
Evidence ID: EVD-2026-AUDIT-002
Evidence Title: Northstar Service-Principal Audit Target
Evidence Type: Audit Record
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal service principal
Identity or Population: Fictional enterprise-application service principal
Description: Sanitized audit-detail screenshot identifying the Northstar service principal as a Core Directory event target.
Control Demonstrated: Application audit traceability and target identification
File Name: 19-entra-northstar-service-principal-audit-target_2026-09-14.png
File Format: PNG
Capture Date: 2026-09-14
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra audit logs
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/audit-logs/19-entra-northstar-service-principal-audit-target_2026-09-14.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-14
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The activity name, initiator, modified properties, token issuance, sign-in, assignment, and complete audit coverage are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.24 Evidence Item: Northstar Service-Principal Update Activity

```text
Evidence ID: EVD-2026-AUDIT-003
Evidence Title: Northstar Service-Principal Update Activity
Evidence Type: Audit Record
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal service principal
Identity or Population: Fictional enterprise-application service principal
Description: Sanitized audit-detail screenshot showing a successful Update service principal ApplicationManagement event.
Control Demonstrated: Application-management logging and change traceability
File Name: 20-entra-northstar-service-principal-update-activity_2026-09-14.png
File Format: PNG
Capture Date: 2026-09-14
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra audit logs
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/audit-logs/20-entra-northstar-service-principal-update-activity_2026-09-14.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-14
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The precise property, reason, initiating individual, assignment activity, API change, token issuance, and complete coverage are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.25 Evidence Item: Northstar Patient Records Portal Direct User Assignments

```text
Evidence ID: EVD-2026-APP-001
Evidence Title: Northstar Patient Records Portal Direct User Assignments
Evidence Type: Application Assignment
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal enterprise application
Identity or Population: Avery Clinical and Casey IT Support
Description: Sanitized screenshot showing two direct user assignments.
Control Demonstrated: Explicit assignment and least-privilege application access
File Name: 21-entra-northstar-direct-user-assignments_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/application-access/21-entra-northstar-direct-user-assignments_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Successful sign-in, effective authorization, group assignment, app roles, SSO, provisioning, Conditional Access, and production use are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.26 Evidence Item: Northstar Patient Records Portal Assignment-Required Configuration

```text
Evidence ID: EVD-2026-APP-002
Evidence Title: Northstar Patient Records Portal Assignment-Required Configuration
Evidence Type: Application Configuration
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal enterprise application
Identity or Population: Users requiring explicit assignment
Description: Sanitized properties screenshot showing Activated, sign-in enabled, Assignment required Yes, and Visible to users No.
Control Demonstrated: Explicit-assignment enforcement and least-privilege application governance
File Name: 22-entra-northstar-assignment-required-properties_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/application-access/22-entra-northstar-assignment-required-properties_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Successful sign-in, in-app authorization, SSO, provisioning, Conditional Access, group assignment, app roles, My Apps visibility, and production use are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.27 Evidence Item: Northstar Patient Records Portal Enterprise Application Overview

```text
Evidence ID: EVD-2026-APP-003
Evidence Title: Northstar Patient Records Portal Enterprise Application Overview
Evidence Type: Application Configuration
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal enterprise application
Identity or Population: Fictional tenant-local service principal
Description: Sanitized overview confirming the tenant-local enterprise application.
Control Demonstrated: Enterprise-application existence and workload-identity traceability
File Name: 23-entra-northstar-enterprise-application-overview_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/application-access/23-entra-northstar-enterprise-application-overview_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Provisioning, Conditional Access, self-service, SSO, successful authentication, direct assignments, assignment required, and production use are not independently demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.28 Evidence Item: Northstar Patient Records Portal Application Registration Overview

```text
Evidence ID: EVD-2026-APP-004
Evidence Title: Northstar Patient Records Portal Application Registration Overview
Evidence Type: Application Registration
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal application registration
Identity or Population: Fictional single-tenant application object
Description: Sanitized overview confirming the single-tenant registration and corresponding managed application.
Control Demonstrated: Application-object registration and workload-identity traceability
File Name: 24-entra-northstar-app-registration-overview_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/application-access/24-entra-northstar-app-registration-overview_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Credential absence outside the visible overview, authentication, token issuance, redirect testing, SSO, provisioning, Conditional Access, authorization, and production use are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.29 Evidence Item: Microsoft Authenticator Selected-Group Targeting

```text
Evidence ID: EVD-2026-AUTH-001
Evidence Title: Microsoft Authenticator Selected-Group Targeting
Evidence Type: Authentication-Method Configuration
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Microsoft Entra Microsoft Authenticator settings
Identity or Population: GRP-IT-Support and GRP-Security-Readers
Description: Sanitized screenshot showing Authenticator enabled and targeted to two groups with optional registration and mode Any.
Control Demonstrated: Selected-group authentication-method targeting
File Name: 25-entra-microsoft-authenticator-target-groups_2026-09-20.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/authentication-methods/25-entra-microsoft-authenticator-target-groups_2026-09-20.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Completed registration, MFA enforcement, passwordless use, push usage, Authentication Strength, Conditional Access, campaigns, and successful events are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

### 5.30 Evidence Item: Northstar Microsoft Graph Delegated Permission

```text
Evidence ID: EVD-2026-GRAPH-001
Evidence Title: Northstar Microsoft Graph Delegated Permission
Evidence Type: Application Permission Configuration
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal
Identity or Population: Fictional single-tenant application
Description: Sanitized screenshot showing delegated Microsoft Graph User.Read configured for sign-in and profile access.
Control Demonstrated: Minimal delegated Microsoft Graph permission
File Name: northstar-microsoft-graph-user-read-permission_2026-09-17.png
File Format: PNG
Capture Date: 2026-09-17
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/graph-permissions/northstar-microsoft-graph-user-read-permission_2026-09-17.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-17
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Token issuance, Graph API execution, tenant-wide admin consent, and additional permissions are not demonstrated.
Outstanding Action: None
Notes: No production data, password, token, secret, authentication code, or write automation is represented by this evidence item.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence title and type are accurate.
- [x] The resource and population are identified.
- [x] The repository path is recorded.
- [x] The sensitivity and redaction status are recorded.
- [x] Personal and unnecessary technical identifiers were excluded from public evidence.
- [x] The implementation status is not overstated.
- [x] The known limitation is documented.
- [x] The evidence received a publication review.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None remaining after sanitization and reconciliation
Corrective Action: Not Applicable
```

## 6. Automation Evidence Summary

```text
Total Automation Evidence Items: 7
Published Automation Evidence Items: 7
Implemented and Validated Automation Items: 5
Partially Implemented Automation Items: 2
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Sensitive Columns Detected: 0
Tenant Modifications: None
Overall Automation Status: Partially Validated
```

Implemented and validated automation items:

- Public user, guest, and account-status inventory
- Security-group inventory
- Public external-vendor membership inventory
- Read-only user and guest inventory screenshot
- Read-only security-group inventory screenshot

Partially implemented automation items:

- Read-only inventory script
- Inventory validation-summary output

The automation remains partially validated because Northstar service-principal discovery returned `Object Not Found`, and administrative-role and Northstar assignment automation were not validated in the short script.

## 7. Automation Evidence Traceability

```text
Tested Local PowerShell Script
    ↓
Interactive Delegated Microsoft Graph Authentication
    ↓
Users and Guests Export
    ↓
Security-Group Export
    ↓
External-Vendor Membership Export
    ↓
Public-Safe Redaction
    ↓
Sensitive-Column Review
    ↓
Validation-Summary Export
    ↓
GitHub Publication
```

```text
Inventory Script: EVD-2026-AUTOMATION-001
Public User and Guest Inventory: EVD-2026-AUTOMATION-002
Security-Group Inventory: EVD-2026-AUTOMATION-003
Public External-Vendor Membership: EVD-2026-AUTOMATION-004
Validation Summary: EVD-2026-AUTOMATION-005
User and Guest Inventory Screenshot: EVD-2026-AUTOMATION-006
Security-Group Inventory Screenshot: EVD-2026-AUTOMATION-007
```

## 8. Privacy Review

The public evidence was reviewed for:

```text
Id
ObjectId
TenantId
AppId
ClientId
UserPrincipalName
Mail
Email
IPAddress
RequestId
CorrelationId
HomeAccountId
AccessToken
Passwords
Secrets
Authentication codes
```

```text
Privacy Review Result: Passed
Sensitive Columns Found in Public CSVs: None
Raw User Export Published: No
Raw External-Vendor Membership Export Published: No
Public-Safe Copies Created: Yes
Reviewed By: Wisdom Kwame Djam
Review Date: 2026-09-20
```

## 9. Outstanding Actions

```text
1. Improve Northstar service-principal discovery without adding sensitive output.
2. Validate read-only administrative-role assignment inventory.
3. Validate read-only Northstar application-assignment inventory.
4. Complete a future remediation-based manual review scenario if required.
5. Reassess premium governance capabilities if appropriate licensing becomes available.
6. Remove any duplicate nested evidence folder left from earlier GitHub uploads.
```

## 10. Control Status

```text
Access-Review Policy: Completed
Administrative-Role Review Simulation: Manually Simulated and Validated
Evidence Register: Active, Version 1.24
Read-Only Microsoft Graph Automation: Partially Validated
Audit Logging: Implemented and Validated for selected activities
B2B Guest Collaboration: Implemented and Validated for the documented states
Application Access: Implemented and Validated for the documented settings
Microsoft Authenticator Targeting: Implemented and Validated
Microsoft Graph User.Read Permission: Implemented and Validated
Native Microsoft Entra Access Reviews: Assessed, Not Deployed
Privileged Identity Management: Assessed, Not Deployed
Lifecycle Workflows: Assessed, Not Deployed
Entitlement Management: Assessed, Not Deployed
Conditional Access: Assessed and Designed, Not Deployed
Tenant Modifications During Automation and Evidence Review: None
```

## 11. Updated Register Totals

```text
Total Evidence Items: 30
Implemented and Validated Items: 21
Manually Simulated Items: 1
Partially Implemented Items: 2
Design Validation Items: 0
Designed, Not Implemented Items: 0
Assessed, Not Deployed Items: 6
Empty Templates Included: 0
Items Approved for Public Repository: 30
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing Evidence Items: 0
Corrected Evidence Items: 0
Items with Known Limitations: 28
```

## 12. Register Update Record

```text
Document: Access Review and Automation Evidence Register
Updated Version: 1.24
Status: Active
Updated By: Wisdom Kwame Djam
Update Date: 2026-09-20
Change Description: Rebuilt and reconciled the complete evidence register, restored missing entries, corrected numbering and Markdown structure, registered Microsoft Graph permission evidence, and aligned totals through the completed screenshot review.
Publication Review: Completed
Privacy Review: Passed
Automation Status: Partially Validated
Screenshot Files Reviewed: 26
Distinct Evidence Screenshots: 25
Duplicate Screenshots: 1
Duplicate Item: Security Reader assignment
Screenshots Remaining: 0
Tenant Modifications: None
Next Scheduled Review: 2027-09-17
```

## 13. Screenshot Review Progress

```text
Screenshot Files Reviewed: 26
Distinct Evidence Screenshots: 25
Duplicate Screenshots: 1
Duplicate Item: Security Reader assignment
Screenshots Remaining: 0
Review Status: Completed
```

1. Helpdesk Administrator assignment
2. Security Reader assignment
3. Northstar Microsoft Graph `User.Read` permission
4. Microsoft Entra audit-log activities
5. Read-only user and guest inventory
6. Read-only security-group inventory
7. Lifecycle Workflows licensing assessment
8. Identity Governance and Entitlement Management assessment
9. PIM Access Reviews licensing assessment
10. PIM premium-feature assessment
11. PIM active and eligible role-interface assessment
12. Conditional Access licensing assessment
13. Disabled Riley Lifecycle identity
14. `GRP-HR-Users` direct membership
15. `GRP-Finance-Users` direct membership
16. `GRP-External-Vendors` public-safe direct membership
17. B2B guest invitation accepted
18. B2B guest invitation pending acceptance
19. Northstar service-principal audit target
20. Northstar service-principal update activity
21. Northstar direct user assignments
22. Northstar assignment-required configuration
23. Northstar enterprise application overview
24. Northstar application registration overview
25. Microsoft Authenticator selected-group targeting

## 14. Register Maintenance

Update this register when:

- A new evidence item is added
- An evidence path is changed
- A file is replaced or corrected
- Redaction or publication approval changes
- A new review, remediation, verification, escalation, or exception is performed
- Premium licensing becomes available and an assessed capability is validated
- Automation validation status changes
- Evidence reaches its retention-review date
- Portfolio wording changes

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Document Control

```text
Document: Access Review and Automation Evidence Register
File: evidence/evidence-register.md
Version: 1.24
Status: Active
Owner: Wisdom Kwame Djam
Created: 2026-09-17
Last Updated: 2026-09-20
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17
```

## Disclaimer

This register is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not contain production access-review evidence, real patient information, real employee records, real vendor records, security-incident evidence, regulatory evidence, access tokens, authentication secrets, or native Microsoft Entra access-review records.
