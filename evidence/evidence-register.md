# Access Review Evidence Register

## Simulation Notice

This register documents fictional and sanitized evidence associated with the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not contain production access-review records, real employee information, real patient information, real vendor records, security-incident evidence, or native Microsoft Entra access-review records.

All identities, organizational responsibilities, review decisions, and business scenarios referenced in this register are fictional.

## 1. Register Information

```text
Register ID: EVR-2026-ACCESS-REVIEW-001
Register Title: Northstar Health Access Review and Automation Evidence Register
Related Project: Microsoft Entra IAM and Zero Trust Governance Lab
Document Owner: Wisdom Kwame Djam
Version: 1.23
Status: Active
Created Date: 2026-09-14
Last Updated Date: 2026-09-20
Review Frequency: Annual and event-driven
Next Review Date: 2027-09-17
Repository Location: evidence/evidence-register.md

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
Total Evidence Items: 21
Implemented and Validated Items: 12
Manually Simulated Items: 1
Partially Implemented Items: 2
Design Validation Items: 0
Designed, Not Implemented Items: 0
Assessed, Not Deployed Items: 6
Empty Templates Included: 0
Items Approved for Public Repository: 21
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing Evidence Items: 0
Corrected Evidence Items: 0
Items with Known Limitations: 19
`
These totals cover the administrative-role review evidence and the partially validated read-only Microsoft Graph automation evidence registered below.

Empty templates are maintained separately and are not counted as evidence that a governance process or technical control was executed.

## 5. Master Evidence Register

### 5.1 Evidence Item: Administrative-Role Assignment Record

```text
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
Identity or Population: Casey IT Support and Morgan Security
Description: Two sanitized screenshots supporting the selected Helpdesk Administrator and Security Reader assignments in the Microsoft Entra lab
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
Retention Review Date: 2029-09-17
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Reviewed for the limited fictional simulation
Known Limitation: The evidence demonstrates active direct role assignments but does not demonstrate Privileged Identity Management, eligible assignments, just-in-time activation, or native Microsoft Entra Access Reviews.
Outstanding Action: None
Notes: This evidence supports the existence of the two selected fictional role assignments. It does not prove deployment of premium privileged-access or automated access-review capabilities.
```

#### Quality Review

- [x] The evidence has a unique identifier.
- [x] The evidence type is accurate.
- [x] The related review and review items are identified.
- [x] The two affected resources are identified.
- [x] The two fictional identities are identified correctly.
- [x] The exact evidence filenames are recorded.
- [x] The repository location is recorded.
- [x] The sensitivity classification is recorded.
- [x] The screenshots received a publication review.
- [x] The licensing and implementation limitations are disclosed.
- [x] The evidence is not described as a native Microsoft Entra Access Review record.

```text
Quality Review Result: Accepted for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-18
Issue Identified: None
Corrective Action: Not Applicable
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
### 5.3 Evidence Item: Read-Only Inventory Script

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
Description: Locally tested PowerShell script that uses delegated read-only Microsoft Graph permissions to generate sanitized identity and access inventory exports
Control Demonstrated: Read-only inventory automation and evidence preparation
File Name: Get-EntraReadOnlyInventory.ps1
File Format: PowerShell
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Locally tested Microsoft Graph PowerShell workflow
Sensitivity Classification: Public
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: scripts/Get-EntraReadOnlyInventory.ps1
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-18
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Partially Validated
Known Limitation: The tested script did not validate Northstar service-principal discovery, administrative-role assignments, or Northstar application assignments.
Outstanding Action: Complete the remaining read-only inventory areas during a future validation phase.
Notes: The script retained Security Defaults, used no embedded credentials, requested no write permissions, disconnected automatically, and made no tenant changes.
```

#### Quality Review

- [x] The script was tested locally.
- [x] Interactive delegated authentication succeeded.
- [x] Only read permissions were requested.
- [x] No embedded credentials were used.
- [x] Security Defaults remained enabled.
- [x] The script disconnected automatically.
- [x] The script generated sanitized CSV exports.
- [x] No tenant changes were performed.
- [x] Pending automation areas are documented.
- [x] The script was uploaded directly from the tested local file.

```text
Quality Review Result: Accepted as Partially Validated
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-18
Issue Identified: Three planned inventory areas remain unvalidated.
Corrective Action: Complete those areas during a future controlled validation phase.
```

### 5.4 Evidence Item: Public User and Guest Inventory

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
Description: Public-safe inventory of fictional user display names, user types, and account-enabled status generated through the tested read-only script
Control Demonstrated: Automated user, guest, and account-status inventory
File Name: entra-users-and-guests-public.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-users-and-guests-public.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-18
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: Personal administrative and guest identities were excluded from the public version.
Outstanding Action: None
Notes: The complete raw local export was retained locally and was not published.
```

#### Quality Review

- [x] The file was generated by the tested read-only script.
- [x] The file contains only approved fictional identities.
- [x] User type and account-enabled status are included.
- [x] User principal names are excluded.
- [x] Email addresses are excluded.
- [x] Tenant and object identifiers are excluded.
- [x] Personal identities were removed from the public version.
- [x] The published columns were reviewed.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-18
Issue Identified: None
Corrective Action: Not Applicable
```

### 5.5 Evidence Item: Security-Group Inventory

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
Description: Read-only inventory of security-group display names, security-enabled status, and group types
Control Demonstrated: Automated security-group inventory
File Name: entra-security-groups.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-security-groups.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-18
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The export records group inventory but does not demonstrate every effective access path or every group membership.
Outstanding Action: None
Notes: Object identifiers, tenant information, and ownership details were excluded.
```

#### Quality Review

- [x] Six intended security groups were retrieved.
- [x] Security-enabled status was included.
- [x] Group type information was included.
- [x] Object identifiers were excluded.
- [x] Tenant identifiers were excluded.
- [x] No personal account information was included.
- [x] The file was reviewed before publication.
- [x] The limitation concerning effective access was documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-18
Issue Identified: None
Corrective Action: Not Applicable
```

### 5.6 Evidence Item: Public External-Vendor Membership

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
Description: Public-safe export of selected external-vendor group membership generated through the tested read-only script
Control Demonstrated: Automated external-vendor membership inventory
File Name: entra-external-vendor-membership-public.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-external-vendor-membership-public.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-18
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: A personal guest identity present in the complete raw local export was excluded from the public version.
Outstanding Action: None
Notes: The complete raw membership export was retained locally and was not published.
```

#### Quality Review

- [x] The group name is recorded.
- [x] The fictional vendor display name is recorded.
- [x] The object type is recorded.
- [x] The personal guest identity was excluded.
- [x] User principal names are excluded.
- [x] Object and tenant identifiers are excluded.
- [x] The public version was reviewed.
- [x] The raw local file was not published.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-18
Issue Identified: None
Corrective Action: Not Applicable
```

### 5.7 Evidence Item: Inventory Validation Summary

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
Description: Validation-status summary generated by the tested read-only PowerShell inventory script
Control Demonstrated: Transparent tracking of validated and pending automation areas
File Name: entra-inventory-validation-summary.csv
File Format: CSV
Capture Date: 2026-09-18
Captured By: Wisdom Kwame Djam
Source: Microsoft Graph PowerShell
Sensitivity Classification: Public
Redaction Status: Not Required
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/automation/entra-inventory-validation-summary.csv
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-18
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Partially Validated
Known Limitation: Northstar service-principal discovery returned Object Not Found. Administrative-role and Northstar application-assignment automation remained Not Yet Validated.
Outstanding Action: Complete the three pending inventory areas during a future controlled validation phase.
Notes: The summary explicitly records that no tenant modifications occurred.
```

#### Quality Review

- [x] Successfully validated inventory areas are identified.
- [x] Pending automation areas are identified.
- [x] Northstar discovery is not incorrectly represented as successful.
- [x] Administrative-role automation is not represented as successful.
- [x] Northstar assignment automation is not represented as successful.
- [x] The absence of tenant modifications is recorded.
- [x] No personal or technical identifiers are included.
- [x] The overall status remains Partially Validated.

```text
Quality Review Result: Accepted as Partially Validated
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-18
Issue Identified: Three inventory areas remain pending.
Corrective Action: Complete a future controlled validation without weakening Security Defaults.
```
## 5.8 Evidence Item: Microsoft Entra Audit-Log Activities
Evidence ID: EVD-2026-AUDIT-001
Evidence Title: Microsoft Entra Identity and Application Audit Activities
Evidence Type: Audit Record
Evidence Status: Implemented and Validated
Resource: Microsoft Entra audit logs
Description: Sanitized Microsoft Entra screenshot showing successful identity-management, authentication, directory-management, and application-management audit activities
Control Demonstrated: Administrative activity logging and audit traceability
File Name: entra-audit-log-identity-and-application-activities_2026-09-13.png
File Format: PNG
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Repository Location: evidence/audit-logs/
Known Limitation: The screenshot provides summary-level events and does not independently display every target resource, initiating identity, or modified property
### 5.9 Evidence Item: Read-Only User and Guest Inventory Screenshot

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
Description: Sanitized PowerShell screenshot showing delegated Microsoft Graph authentication with User.Read.All and successful read-only retrieval of fictional directory display names and user types
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
Version: 1.7
Integrity Check: Git commit history
Retention Start Date: 2026-09-18
Retention Review Date: 2029-09-18
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The screenshot shows only the first ten returned identities and does not demonstrate account-enabled status, effective access, group membership, or complete tenant inventory coverage.
Outstanding Action: None
Notes: The tenant domain and non-fictional identity entries were removed from the public version. The screenshot demonstrates read-only retrieval and does not show a tenant modification.
```

#### Quality Review

- [x] Delegated Microsoft Graph authentication is visible.
- [x] The `User.Read.All` delegated permission is visible.
- [x] The read-only `Get-MgUser` command is visible.
- [x] Fictional member and guest identities are visible.
- [x] The tenant domain was permanently removed or redacted.
- [x] Personal and administrative identity entries were permanently removed or redacted.
- [x] User principal names and email addresses are not visible.
- [x] Tenant, object, and application identifiers are not visible.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] The screenshot does not imply complete access or membership analysis.
- [x] The evidence limitation is documented.
- [x] The screenshot shows no tenant modification.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```

### 5.10 Evidence Item: Read-Only Security-Group Inventory Screenshot

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
Description: Sanitized PowerShell screenshot showing successful read-only retrieval of the six fictional Microsoft Entra security groups and their security-enabled status
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
Retention Review Date: 2029-09-18
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The screenshot confirms group discovery and security-enabled status but does not demonstrate complete membership, ownership, effective access, dynamic membership rules, licensing assignments, or application assignments.
Outstanding Action: None
Notes: The screenshot demonstrates a read-only Microsoft Graph query and does not show a tenant modification.
```

#### Quality Review

- [x] The read-only `Get-MgGroup` command is visible.
- [x] The six expected fictional security groups are visible.
- [x] Security-enabled status is visible.
- [x] Personal identity rows were excluded through cropping.
- [x] The unfinished external-vendor membership query was excluded through cropping.
- [x] Tenant and object identifiers are not visible.
- [x] User principal names and email addresses are not visible.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] The evidence is limited to security-group discovery and status.
- [x] The screenshot does not imply complete group-membership validation.
- [x] The evidence limitation is documented.
- [x] The screenshot shows no tenant modification.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.11 Evidence Item: Lifecycle Workflows Licensing Assessment

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
Description: Sanitized Microsoft Entra screenshot showing access denied to Lifecycle Workflows and identifying Microsoft Entra ID Governance licensing as a requirement
Control Demonstrated: Licensing-aware assessment of automated identity-lifecycle capabilities
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
Known Limitation: The screenshot records the visible licensing requirement but does not demonstrate a configured workflow, production deployment, successful automation, or complete licensing analysis for every Microsoft Entra governance capability.
Outstanding Action: Reassess Lifecycle Workflows if appropriate Microsoft Entra ID Governance licensing becomes available.
Notes: Lifecycle Workflows remained unavailable and no tenant change was made. Manual joiner-mover-leaver procedures remain the documented Free-tier alternative.
```

#### Quality Review

- [x] The Lifecycle Workflows page is visible.
- [x] The access-denied result is visible.
- [x] The Microsoft Entra ID Governance licensing requirement is visible.
- [x] Error code 403 is visible.
- [x] Personal account information was removed or permanently redacted.
- [x] The tenant or directory name was removed.
- [x] The browser address was removed.
- [x] Session information was permanently redacted.
- [x] No password, token, secret, or authentication code is visible.
- [x] The evidence is classified as assessed rather than implemented.
- [x] No workflow deployment is claimed.
- [x] No tenant modification is claimed.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.13 Evidence Item: PIM Access Reviews Licensing Assessment

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
Resource: Microsoft Entra Privileged Identity Management Access Reviews
Identity or Population: Microsoft Entra administrative-role assignments
Description: Sanitized Microsoft Entra screenshot showing access denied to administrative-role Access Reviews and identifying EMS E5 or Microsoft Entra ID P2 as the displayed licensing requirement
Control Demonstrated: Licensing-aware assessment of privileged administrative-role access reviews
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
Known Limitation: The screenshot records the displayed access and licensing message but does not demonstrate PIM deployment, eligible role assignment, just-in-time activation, a configured native Access Review, reviewer decisions, or automated remediation.
Outstanding Action: Reassess PIM-based administrative-role Access Reviews if appropriate licensing becomes available.
Notes: Native administrative-role Access Reviews remained unavailable. The lab used a documented manual review procedure and completed a limited fictional review of the Helpdesk Administrator and Security Reader assignments.
### 5.14 Evidence Item: Privileged Identity Management Premium-Feature Assessment

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
Identity or Population: Proposed governance of Microsoft Entra administrative-role assignments
Description: Sanitized Microsoft Entra screenshot showing the Privileged Identity Management quick-start page and premium capabilities for eligible assignment, activation, approval, auditing, alerts, and access review
Control Demonstrated: Licensing-aware assessment of privileged-access governance capabilities
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
Known Limitation: The screenshot documents visible PIM capabilities but does not demonstrate licensing entitlement, PIM deployment, eligible assignments, role activation, approval workflows, activation history, privileged-role remediation, or native Access Reviews.
Outstanding Action: Reassess PIM if appropriate Microsoft Entra licensing becomes available.
Notes: The fictional Helpdesk Administrator and Security Reader assignments remained active direct assignments. PIM was evaluated as a proposed production enhancement and was not deployed.
```

#### Quality Review

- [x] The Microsoft Entra PIM context is visible.
- [x] PIM is visibly identified as a premium feature.
- [x] Assignment capability is visible.
- [x] Activation capability is visible.
- [x] Approval capability is visible.
- [x] Audit capability is visible.
- [x] Roles, assignments, alerts, and access-review navigation are visible.
- [x] Personal account information was removed or permanently redacted.
- [x] The directory name was removed.
- [x] The browser address was removed.
- [x] No password, token, secret, session ID, or authentication code is visible.
- [x] The capability is classified as assessed rather than implemented.
- [x] No eligible assignment or role activation is claimed.
- [x] No tenant modification is claimed.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.15 Evidence Item: PIM Active and Eligible Role Interface Assessment

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
Resource: Microsoft Entra Privileged Identity Management role catalogue
Identity or Population: Visible Microsoft Entra administrative-role definitions
Description: Sanitized Microsoft Entra screenshot showing the Privileged Identity Management role catalogue and separate columns for active and eligible role assignments
Control Demonstrated: Licensing-aware assessment of active, eligible, and just-in-time privileged-role governance
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
Known Limitation: The screenshot shows only the visible portion of the role catalogue and does not demonstrate PIM licensing, complete tenant-wide role coverage, an eligible assignment, an active PIM-managed assignment, just-in-time activation, approval, expiration, or remediation.
Outstanding Action: Reassess active and eligible privileged-role assignments if appropriate Microsoft Entra licensing becomes available.
Notes: The interface was reviewed without using Add assignments or changing any tenant configuration. The fictional Helpdesk Administrator and Security Reader roles remained active direct assignments outside PIM.
```

#### Quality Review

- [x] The Microsoft Entra PIM context is visible.
- [x] The PIM role catalogue is visible.
- [x] The `Active` column is visible.
- [x] The `Eligible` column is visible.
- [x] The visible role rows and descriptions are readable.
- [x] Roles, assignments, alerts, access reviews, and audit navigation are visible.
- [x] Personal account information was removed or permanently redacted.
- [x] The directory name was removed.
- [x] The browser address was removed.
- [x] No passwords, tokens, secrets, session IDs, or authentication codes are visible.
- [x] The evidence is classified as assessed rather than implemented.
- [x] No eligible assignment or role activation is claimed.
- [x] No complete tenant-wide role conclusion is claimed.
- [x] No tenant modification is claimed.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.16 Evidence Item: Conditional Access Licensing Assessment

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
Description: Sanitized Microsoft Entra screenshot showing access denied to Conditional Access and identifying Microsoft Entra ID P1 or P2 as the displayed subscription requirement
Control Demonstrated: Licensing-aware assessment of Conditional Access security capabilities
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
Known Limitation: The screenshot records the visible access and licensing message but does not demonstrate a configured Conditional Access policy, report-only testing, MFA enforcement through Conditional Access, legacy-authentication blocking, application-specific conditions, or production monitoring.
Outstanding Action: Reassess Conditional Access if appropriate Microsoft Entra ID P1 or P2 licensing becomes available.
Notes: Conditional Access remained assessed and design-specified but not deployed. Microsoft Entra Security Defaults remained enabled and must not be represented as a custom Conditional Access implementation.
```

#### Quality Review

- [x] The Microsoft Entra Conditional Access context is visible.
- [x] The access-denied result is visible.
- [x] Error code 401 is visible.
- [x] The displayed Microsoft Entra ID P1 or P2 licensing requirement is visible.
- [x] Personal account information was removed or permanently redacted.
- [x] The directory or tenant name was removed.
- [x] The browser address was removed.
- [x] Session and resource identifiers were removed or permanently redacted.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] The capability is classified as assessed rather than implemented.
- [x] Security Defaults are not described as a custom Conditional Access policy.
- [x] No Conditional Access enforcement or testing is claimed.
- [x] No tenant modification is claimed.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable


```
### 5.17 Evidence Item: Disabled Lifecycle Identity

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
Description: Sanitized Microsoft Entra screenshot showing the fictional Riley Lifecycle member identity in a disabled account state with no visible group memberships, application assignments, administrative roles, or assigned licences
Control Demonstrated: Manual leaver-style account disablement and identity-state verification
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
Known Limitation: The screenshot shows the observed disabled state but does not independently demonstrate the administrator or process responsible, disablement time, session revocation, credential invalidation, automated offboarding, retention actions, or removal from every indirect access path.
Outstanding Action: None
Notes: The evidence supports a fictional manual leaver-style identity state. Lifecycle Workflows remained assessed but not deployed, and no automated offboarding claim is made.
```

#### Quality Review

- [x] The fictional identity display name is visible.
- [x] User type `Member` is visible.
- [x] Account status `Disabled` is visible.
- [x] Zero visible group memberships are recorded.
- [x] Zero visible application assignments are recorded.
- [x] Zero assigned roles are recorded.
- [x] Zero assigned licences are recorded.
- [x] The user principal name was removed or permanently redacted.
- [x] The object ID was removed or permanently redacted.

- ### 5.18 Evidence Item: HR Security-Group Direct Membership

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
Description: Sanitized Microsoft Entra screenshot showing the fictional Riley Lifecycle and Taylor HR identities as direct members of GRP-HR-Users
Control Demonstrated: Role-aligned security-group membership and lifecycle-state documentation
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
Verification Status: Validated for the visible membership state
Known Limitation: The screenshot confirms the visible direct-membership state but does not independently establish assignment timing, approval, a completed mover event, removal timing, dynamic membership, or effective application access.
Outstanding Action: Reconcile the screenshot sequence with the later disabled-account evidence and retain the lifecycle interpretation as a staged fictional scenario unless removal evidence is available.
Notes: A separate screenshot shows Riley Lifecycle disabled with zero visible group memberships. The artifacts must be described as different lifecycle states rather than simultaneous conditions.
```

#### Quality Review

- [x] The `GRP-HR-Users` group name is visible.
- [x] The direct-membership view is visible.
- [x] Two group members are visible.
- [x] Riley Lifecycle is visible.
- [x] Taylor HR is visible.
- [x] Object type `User` is visible.
- [x] Personal account information was removed.
- [x] The directory or tenant name was removed.
- [x] The browser address and group identifier were removed.
- [x] No user principal names or email addresses are visible.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] The screenshot is not represented as proof of automated lifecycle management.
- [x] The relationship with the disabled-account evidence is documented.
- [x] The evidence limitation is recorded.

```text
Quality Review Result: Approved with Lifecycle Context
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: Riley Lifecycle appears in this group-membership state but appears with zero group memberships in later disabled-account evidence.
Corrective Action: Preserve both artifacts as different stages of the fictional lifecycle scenario and avoid claiming a fully evidenced mover or leaver sequence without removal evidence.
```
### 5.19 Evidence Item: Finance Security-Group Direct Membership

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
Description: Sanitized Microsoft Entra screenshot showing the fictional Jordan Finance and Riley Lifecycle identities as direct members of GRP-Finance-Users
Control Demonstrated: Role-aligned security-group membership and lifecycle-state documentation
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
Verification Status: Validated for the visible membership state
Known Limitation: The screenshot confirms the visible direct-membership state but does not independently establish assignment timing, approval, removal from GRP-HR-Users, a completed mover event, dynamic membership, or effective application access.
Outstanding Action: Preserve the evidence as one observed lifecycle state and avoid claiming a fully validated mover sequence unless removal or audit evidence establishes the transition.
Notes: Separate evidence shows Riley Lifecycle in GRP-HR-Users and in a later disabled state with zero visible group memberships. These artifacts represent different fictional lifecycle states and must not be presented as simultaneous conditions.
```

#### Quality Review

- [x] The `GRP-Finance-Users` group name is visible.
- [x] The direct-membership view is visible.
- [x] Two group members are visible.
- [x] Jordan Finance is visible.
- [x] Riley Lifecycle is visible.
- [x] Object type `User` is visible.
- [x] Personal account information was removed.
- [x] The directory or tenant name was removed.
- [x] The browser address and group identifier were removed.
- [x] No user principal names or email addresses are visible.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] Automated lifecycle management is not claimed.
- [x] A completed mover sequence is not claimed.
- [x] The relationship with the HR-group and disabled-account evidence is documented.
- [x] The evidence limitation is recorded.

```text
Quality Review Result: Approved with Lifecycle Context
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: Riley Lifecycle appears in multiple group-membership and disabled-account states across separate evidence artifacts.
Corrective Action: Preserve the artifacts as different stages of the fictional lifecycle scenario and avoid claiming a fully validated mover sequence without transition evidence.
```
### 5.20 Evidence Item: Public External-Vendor Group Membership

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
Description: Public-safe Microsoft Entra screenshot showing the fictional Vendor Support identity as a direct member of GRP-External-Vendors
Control Demonstrated: External-vendor security-group membership and privacy-conscious evidence publication
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
Verification Status: Validated for the published fictional membership state
Known Limitation: The public screenshot excludes a personal guest identity and does not demonstrate invitation redemption, sponsorship, membership duration, effective application access, access-review completion, entitlement management, or automatic expiration.
Outstanding Action: None
Notes: The complete raw membership evidence remains local. The published screenshot and CSV contain only the fictional Vendor Support identity.
```

#### Quality Review

- [x] The `GRP-External-Vendors` group name is visible.
- [x] The direct-membership view is visible.
- [x] The fictional Vendor Support identity is visible.
- [x] Object type `User` is visible.
- [x] The personal guest-membership row was permanently removed or redacted.
- [x] The personal email address was permanently removed or redacted.
- [x] Signed-in account and tenant information were removed.
- [x] The browser address and group identifier were removed.
- [x] No user principal names are visible.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] Access-review completion is not claimed.
- [x] Entitlement Management is not claimed as deployed.
- [x] Automatic access expiration is not claimed.
- [x] The evidence limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: The original screenshot displayed a personal guest identity and school email address.
Corrective Action: Remove the complete personal membership row from the public screenshot and retain the unsanitized source only in private local storage.
```
### 5.21 Evidence Item: B2B Guest Invitation Acceptance

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
Description: Sanitized Microsoft Entra screenshot showing a guest identity created through invitation and reaching the Accepted invitation state
Control Demonstrated: B2B guest invitation, acceptance, and external-identity lifecycle validation
File Name: entra-b2b-guest-invitation-accepted_2026-09-14.png
File Format: PNG
Capture Date: 2026-09-20
Captured By: Wisdom Kwame Djam
Source: Microsoft Entra admin center
Sensitivity Classification: Public after sanitization
Redaction Status: Verified Redacted
Redaction Verified By: Wisdom Kwame Djam
Publication Status: Published
Repository Location: evidence/b2b-guests/entra-b2b-guest-invitation-accepted_2026-09-14.png
Version: 1.0
Integrity Check: Git commit history
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The screenshot confirms the observed guest type, invitation creation type, and accepted state but does not independently demonstrate invitation sender, sponsorship, authentication method, group membership, application access, access duration, entitlement management, or access-review completion.
Outstanding Action: None
Notes: All personal display names, email addresses, user principal names, object identifiers, and tenant details were removed from the public version. The complete source evidence remains private.
```

#### Quality Review

- [x] User type `Guest` is visible.
- [x] Creation type `Invitation` is visible.
- [x] Invitation state `Accepted` is visible.
- [x] Creation date and state-change date are visible.
- [x] Personal display names were permanently removed or redacted.
- [x] Personal email addresses were permanently removed or redacted.
- [x] The user principal name was removed or permanently redacted.
- [x] The object ID was removed or permanently redacted.
- [x] Signed-in account and tenant details were removed.
- [x] The browser address and embedded object identifier were removed.
- [x] No password, token, secret, or authentication code is visible.
- [x] Group membership is not claimed from this screenshot.
- [x] Application access is not claimed from this screenshot.
- [x] Entitlement Management is not claimed as deployed.
- [x] The evidence limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: The original screenshot exposed a personal display name, email address, guest user principal name, object identifier, and tenant details.
Corrective Action: Permanently remove the exposed personal and technical identifiers from the public screenshot and retain the complete source only in private storage.
```
### 5.22 Evidence Item: B2B Guest Invitation Pending Acceptance

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
Description: Sanitized Microsoft Entra screenshot showing the fictional Northstar Vendor Guest identity created through invitation and remaining in the Pending acceptance state
Control Demonstrated: B2B guest invitation creation and pre-redemption lifecycle validation
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
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The screenshot confirms the observed guest type, invitation creation type, and pending-acceptance state but does not independently demonstrate invitation sender, delivery, sponsorship, authentication method, group membership, application access, access duration, entitlement management, or review completion.
Outstanding Action: None
Notes: Separate sanitized evidence shows the invitation in an Accepted state. Together, the two screenshots demonstrate separate stages of the fictional B2B invitation lifecycle.
```

#### Quality Review

- [x] The fictional display name is visible.
- [x] User type `Guest` is visible.
- [x] Creation type `Invitation` is visible.
- [x] Invitation state `Pending acceptance` is visible.
- [x] Creation and state-change timestamps are visible.
- [x] Personal email addresses were permanently removed or redacted.
- [x] The guest user principal name was permanently removed or redacted.
- [x] The object ID was permanently removed or redacted.
- [x] Signed-in account and tenant details were removed.
- [x] The browser address and embedded object identifier were removed.
- [x] No password, token, secret, or authentication code is visible.
- [x] Group membership is not claimed from this screenshot.
- [x] Application access is not claimed from this screenshot.
- [x] Entitlement Management is not claimed as deployed.
- [x] The evidence limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: The original screenshot exposed personal and tenant-related identity information.
Corrective Action: Permanently remove personal and technical identifiers from the public screenshot and retain the complete source only in private storage.
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
Description: Sanitized Microsoft Entra screenshot identifying the Northstar Patient Records Portal service principal as the target of a selected Core Directory audit event
Control Demonstrated: Application-management audit traceability and service-principal target identification
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
Retention Start Date: 2026-09-20
Retention Review Date: 2029-09-20
Disposal Date: Not Applicable
Evidence Owner: Wisdom Kwame Djam
Verification Status: Validated
Known Limitation: The screenshot identifies the service-principal target but does not independently display the complete activity name, initiating identity, modified properties, token issuance, application sign-in, assignment activity, or complete audit coverage.
Outstanding Action: None
Notes: The screenshot demonstrates that the Northstar Patient Records Portal service principal was identified as the target of a selected Core Directory audit event. No security incident or Microsoft Sentinel integration is claimed.
```

#### Quality Review

- [x] The Microsoft Entra audit-log context is visible.
- [x] The Audit Log Details panel is visible.
- [x] The `Target(s)` tab is visible.
- [x] Target type `ServicePrincipal` is visible.
- [x] Display name `Northstar Patient Records Portal` is visible.
- [x] The Core Directory service context is visible.
- [x] The target object ID was permanently removed or redacted.
- [x] Personal account and tenant information were removed.
- [x] The browser address was removed.
- [x] No password, token, secret, or authentication code is visible.
- [x] The complete activity is not inferred from the target tab.
- [x] A security incident is not claimed.
- [x] Microsoft Sentinel integration is not claimed.
- [x] The evidence limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: The original screenshot exposed the target object identifier and account or tenant context.
Corrective Action: Permanently remove the technical and account identifiers from the public screenshot while retaining the target type and fictional display name.
```
### 5.25 Evidence Item: Northstar Direct User Assignments

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
Description: Sanitized Microsoft Entra screenshot showing Avery Clinical and Casey IT Support directly assigned to the Northstar Patient Records Portal enterprise application
Control Demonstrated: Explicit direct user assignment and least-privilege enterprise-application access governance
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
Known Limitation: The screenshot confirms direct assignment records but does not independently demonstrate successful sign-in, effective in-application authorization, assignment-required configuration, group-based assignment, application-role enforcement, single sign-on, provisioning, Conditional Access, or production use.
Outstanding Action: None
Notes: The interface states that the application will not appear in My Apps unless the Visible to users property is enabled. The screenshot documents direct assignment only and does not claim group-based access.
```

#### Quality Review

- [x] The Northstar Patient Records Portal name is visible.
- [x] The Enterprise Application context is visible.
- [x] The Users and groups page is visible.
- [x] Avery Clinical is visible.
- [x] Casey IT Support is visible.
- [x] Object type `User` is visible for both assignments.
- [x] The My Apps visibility notice is visible.
- [x] Browser-address information was removed.
- [x] Object and application identifiers were removed.
- [x] Signed-in account and tenant information were removed.
- [x] No user principal names or personal email addresses are visible.
- [x] No passwords, secrets, tokens, or authentication codes are visible.
- [x] Group-based assignment is not claimed.
- [x] Successful application sign-in is not claimed.
- [x] Assignment-required configuration is not claimed from this screenshot.
- [x] The evidence limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.26 Evidence Item: Northstar Assignment-Required Configuration

```text
Evidence ID: EVD-2026-APP-002
Evidence Title: Northstar Patient Records Portal Assignment-Required Configuration
Evidence Type: Application Assignment
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal enterprise application
Identity or Population: Users requiring explicit assignment
Description: Sanitized Microsoft Entra screenshot showing the Northstar Patient Records Portal activated, enabled for user sign-in, and configured with Assignment required set to Yes and Visible to users set to No
Control Demonstrated: Explicit-assignment enforcement and least-privilege enterprise-application access governance
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
Known Limitation: The screenshot confirms the visible enterprise-application properties but does not independently demonstrate successful sign-in, effective in-application authorization, single sign-on, provisioning, Conditional Access, group-based assignment, app-role enforcement, My Apps visibility, or production use.
Outstanding Action: None
Notes: Related evidence EVD-2026-APP-001 shows Avery Clinical and Casey IT Support directly assigned to the enterprise application. Visible to users remained set to No.
```

#### Quality Review

- [x] The Northstar Patient Records Portal name is visible.
- [x] The Enterprise Application context is visible.
- [x] Activation status `Activated` is visible.
- [x] Enabled for users to sign in is set to `Yes`.
- [x] Assignment required is set to `Yes`.
- [x] Visible to users is set to `No`.
- [x] The Application ID was permanently removed or redacted.
- [x] The Object ID was permanently removed or redacted.
- [x] Browser-address information was removed.
- [x] Signed-in account and tenant information were removed.
- [x] The Windows taskbar was removed.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] Successful application sign-in is not claimed.
- [x] Group-based assignment is not claimed.
- [x] Conditional Access is not claimed.
- [x] The application-visibility distinction is documented.
- [x] The evidence limitation is recorded.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.27 Evidence Item: Northstar Enterprise Application Overview

```text
Evidence ID: EVD-2026-APP-003
Evidence Title: Northstar Patient Records Portal Enterprise Application Overview
Evidence Type: Application Assignment
Evidence Status: Implemented and Validated
Related Review ID: Not Applicable
Related Review Item ID: Not Applicable
Related Escalation ID: Not Applicable
Related Exception ID: Not Applicable
Related Remediation ID: Not Applicable
Related Verification ID: Not Applicable
Resource: Northstar Patient Records Portal enterprise application
Identity or Population: Fictional tenant-local service principal
Description: Sanitized Microsoft Entra screenshot confirming the tenant-local enterprise application for the fictional Northstar Patient Records Portal
Control Demonstrated: Enterprise-application existence, workload-identity documentation, and application-governance traceability
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
Known Limitation: The screenshot confirms the enterprise-application overview but does not independently demonstrate provisioning, Conditional Access, self-service access, single sign-on, successful authentication, effective authorization, direct assignments, assignment-required configuration, or production use.
Outstanding Action: None
Notes: Related evidence EVD-2026-APP-001 documents direct user assignments and EVD-2026-APP-002 documents assignment-required configuration. Conditional Access remained assessed and designed but not deployed.
```

#### Quality Review

- [x] The Northstar Patient Records Portal name is visible.
- [x] The Enterprise Application context is visible.
- [x] The Overview page is visible.
- [x] The application-management options are visible.
- [x] The Application ID was permanently removed or redacted.
- [x] The Object ID was permanently removed or redacted.
- [x] Browser-address information was removed.
- [x] Signed-in account and tenant information were removed.
- [x] The Windows taskbar was removed.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] Provisioning is not claimed as configured.
- [x] Conditional Access is not claimed as implemented.
- [x] Self-service access is not claimed as configured.
- [x] Successful application authentication is not claimed.
- [x] The evidence limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.28 Evidence Item: Northstar Application Registration Overview

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
Description: Sanitized Microsoft Entra screenshot confirming the single-tenant application registration for the fictional Northstar Patient Records Portal and its corresponding managed application in the local directory
Control Demonstrated: Application-object registration, single-tenant scope, workload-identity documentation, and application-governance traceability
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
Known Limitation: The screenshot confirms the visible application-registration overview but does not independently demonstrate credential absence outside the visible overview, successful authentication, token issuance, redirect-URI testing, single sign-on, provisioning, Conditional Access, effective authorization, or production use.
Outstanding Action: None
Notes: The application client ID, object ID, and directory tenant ID were excluded from the public version. The visible account type is My organization only, and the overview links to the corresponding Northstar managed application in the local directory.
```

#### Quality Review

- [x] The Northstar Patient Records Portal display name is visible.
- [x] The App registrations context is visible.
- [x] The application overview is visible.
- [x] Supported account type `My organization only` is visible.
- [x] The corresponding managed application is visible.
- [x] State `Activated` is visible.
- [x] The Application client ID was permanently removed or redacted.
- [x] The Object ID was permanently removed or redacted.
- [x] The Directory tenant ID was permanently removed or redacted.
- [x] Browser-address information was removed.
- [x] Signed-in account and directory information were removed.
- [x] The Windows taskbar was removed.
- [x] No password, token, secret, or authentication code is visible.
- [x] Successful application authentication is not claimed.
- [x] Credential absence outside the visible overview is not claimed.
- [x] Production application use is not claimed.
- [x] The evidence limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
### 5.29 Evidence Item: Microsoft Authenticator Target Groups

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
Description: Sanitized Microsoft Entra screenshot showing Microsoft Authenticator enabled and targeted to GRP-IT-Support and GRP-Security-Readers with optional registration and authentication mode set to Any
Control Demonstrated: Selected-group authentication-method targeting and role-aligned authentication governance
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
Known Limitation: The screenshot demonstrates authentication-method enablement and selected-group targeting but does not independently demonstrate completed registration, MFA enforcement, passwordless authentication, push-notification use, Authentication Strength, Conditional Access enforcement, registration-campaign deployment, or successful authentication events.
Outstanding Action: None
Notes: Microsoft Authenticator was targeted to GRP-IT-Support and GRP-Security-Readers with optional registration and authentication mode set to Any. Conditional Access remained assessed and designed but not deployed.
```

#### Quality Review

- [x] The Microsoft Authenticator settings page is visible.
- [x] The Enable and Target tab is visible.
- [x] Microsoft Authenticator is visibly enabled.
- [x] Selected-group targeting is visible.
- [x] `GRP-IT-Support` is visible.
- [x] `GRP-Security-Readers` is visible.
- [x] Object type `Group` is visible.
- [x] Registration `Optional` is visible.
- [x] Authentication mode `Any` is visible.
- [x] Browser-address information was removed.
- [x] Signed-in account and tenant information were removed.
- [x] The Windows taskbar was removed.
- [x] No passwords, tokens, secrets, or authentication codes are visible.
- [x] Completed Authenticator registration is not claimed.
- [x] MFA enforcement is not claimed.
- [x] Conditional Access implementation is not claimed.
- [x] The enforcement limitation is documented.

```text
Quality Review Result: Approved for Public Repository
Quality Reviewed By: Wisdom Kwame Djam
Quality Review Date: 2026-09-20
Issue Identified: None
Corrective Action: Not Applicable
```
## 6. Automation Evidence Summary

```text
Total Automation Evidence Items: 7
Published Automation Evidence Items: 57
Implemented and Validated Automation Items: 5
Partially Implemented Automation Items: 2
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Sensitive Columns Detected: 0
Tenant Modifications: None
Overall Automation Status: Partially Validated
```

The implemented and validated automation items are:

- Public user, guest, and account-status inventory
- Security-group inventory
- Public external-vendor membership inventory

The partially implemented items are:

- Read-only inventory script
- Validation-summary output

The overall automation remains partially validated because:

- Northstar service-principal discovery returned `Object Not Found` in the tested short script.
- Administrative-role assignment automation was excluded from the tested short script.
- Northstar application-assignment automation was excluded from the tested short script.
## Screenshots Reviewed: 25

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

Related evidence:

```text
Inventory Script: EVD-2026-AUTOMATION-001
Public User and Guest Inventory: EVD-2026-AUTOMATION-002
Security-Group Inventory: EVD-2026-AUTOMATION-003
Public External-Vendor Membership: EVD-2026-AUTOMATION-004
Validation Summary: EVD-2026-AUTOMATION-005
```

## 8. Automation Privacy Review

The published automation evidence was reviewed for the following sensitive fields:

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
```

```text
Privacy Review Result: Passed
Sensitive Columns Found: None
Raw User Export Published: No
Raw External-Vendor Membership Export Published: No
Public-Safe Copies Created: Yes
Reviewed By: Wisdom Kwame Djam
Review Date: 2026-09-18
```

The complete raw exports remain local and are not part of the public repository.

## 9. Automation Outstanding Actions

### Outstanding Action 1

```text
Action: Improve Northstar service-principal discovery without adding sensitive output
Related Evidence: EVD-2026-AUTOMATION-001 and EVD-2026-AUTOMATION-005
Risk: The short script does not currently validate Northstar service-principal discovery
Action Owner: Wisdom Kwame Djam
Target Date: Future automation phase
Current Status: Planned
Required Evidence: Sanitized service-principal export and updated validation summary
```

### Outstanding Action 2

```text
Action: Validate read-only administrative-role assignment inventory
Related Evidence: EVD-2026-AUTOMATION-001 and EVD-2026-AUTOMATION-005
Risk: Administrative-role automation remains unvalidated
Action Owner: Wisdom Kwame Djam
Target Date: Future automation phase
Current Status: Planned
Required Evidence: Sanitized output for Helpdesk Administrator and Security Reader assignments
```

### Outstanding Action 3

```text
Action: Validate read-only Northstar application-assignment inventory
Related Evidence: EVD-2026-AUTOMATION-001 and EVD-2026-AUTOMATION-005
Risk: Northstar direct assignment automation remains unvalidated
Action Owner: Wisdom Kwame Djam
Target Date: Future automation phase
Current Status: Planned
Required Evidence: Sanitized output showing validated fictional application assignments
```

## 10. Automation Control Status

```text
Selected Status: Partially Validated
Status Justification: The tested short PowerShell script successfully authenticated through Microsoft Graph, exported users, guests, account status, security groups, and external-vendor membership, generated a validation summary, disconnected automatically, and made no tenant changes. Northstar discovery and two advanced assignment-inventory areas remain pending.
Supporting Evidence: EVD-2026-AUTOMATION-001 through EVD-2026-AUTOMATION-005
```

This status does not mean that:

- Every Microsoft Entra resource was inventoried.
- Administrative-role assignment automation was completed.
- Northstar application-assignment automation was completed.
- Native Microsoft Entra Access Reviews were deployed.
- Privileged Identity Management was deployed.
- Conditional Access was deployed.
- Write automation was implemented.
- Any tenant object was changed.

## 11. Updated Register Totals

```text
Total Evidence Items: 29
Implemented and Validated Items: 20
Manually Simulated Items: 1
Partially Implemented Items: 2
Design Validation Items: 0
Designed, Not Implemented Items: 0
Assessed, Not Deployed Items: 6
Empty Templates Included: 0
Items Approved for Public Repository: 28
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing Evidence Items: 0
Corrected Evidence Items: 0
Items with Known Limitations: 27
```

## 12. Register Update Record

Document: Access Review and Automation Evidence Register
Updated Version: 1.23
Status: Active
Updated By: Wisdom Kwame Djam
Update Date: 2026-09-20
Updated Version: 1.23
Update Date: 2026-09-20
Change Description: Completed review and registration of 24 sanitized screenshot evidence items, including the Northstar application registration and enterprise application evidence
Screenshot Review Status: Completed
Screenshots Reviewed: 25
Screenshots Remaining: 0
Tenant Modifications: None
Next Scheduled Review: 2027-09-17



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
## Screenshot Review Progress

```text
Original Screenshot Package: Approximately 23 screenshots
Screenshots Reviewed: 18
Screenshots Remaining: Approximately 5
Review Status: In Progress
## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Document Control
Document: Access Review and Automation Evidence Register
File: evidence/evidence-register.md
Version: 1.20
Status: Active
Owner: Wisdom Kwame Djam
Created: 2026-09-17
Last Updated: 2026-09-20
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17


## Disclaimer

This register is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not contain production access-review evidence, real patient information, real employee records, real vendor records, security-incident evidence, regulatory evidence, or native Microsoft Entra access-review records.
