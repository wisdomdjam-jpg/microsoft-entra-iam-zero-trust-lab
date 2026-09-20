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
Version: 1.5
Status: Active
Created Date: 2026-09-20
Last Updated Date: 2026-09-18
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
Total Evidence Items: 12
Implemented and Validated Items: 7
Manually Simulated Items: 1
Partially Implemented Items: 2
Design Validation Items: 0
Designed, Not Implemented Items: 0
Assessed, Not Deployed Items: 0
Empty Templates Included: 0
Items Approved for Public Repository: 12
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing Evidence Items: 0
Corrected Evidence Items: 0
Items with Known Limitations: 10
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
Version: 1.0
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
## 6. Automation Evidence Summary

```text
Total Automation Evidence Items: 5
Published Automation Evidence Items: 5
Implemented and Validated Automation Items: 3
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
Total Evidence Items: 12
Implemented and Validated Items: 7
Manually Simulated Items: 1
Partially Implemented Items: 2
Design Validation Items: 0
Designed, Not Implemented Items: 0
Assessed, Not Deployed Items: 2
Empty Templates Included: 0
Items Approved for Public Repository: 12
Items Pending Redaction: 0
Items Not Approved for Publication: 0
Missing Evidence Items: 0
Corrected Evidence Items: 0
Items with Known Limitations: 10
```

## 12. Register Update Record

```text
Document: Access Review Evidence Register
Updated Version: 1.6
Status: Active
Updated By: Wisdom Kwame Djam
Update Date: 2026-09-18
Change Description: Added the tested read-only inventory script and four public-safe Microsoft Graph automation outputs
Publication Review: Completed
Privacy Review: Passed
Automation Status: Partially Validated
Tenant Modifications: None
Next Scheduled Review: 2027-09-17
```



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
Document: Access Review and Automation Evidence Register
File: evidence/evidence-register.md
Version: 1.6
Status: Active
Owner: Wisdom Kwame Djam
Created: 2026-09-20
Last Updated: 2026-09-18
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-20
```

## Disclaimer

This register is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not contain production access-review evidence, real patient information, real employee records, real vendor records, security-incident evidence, regulatory evidence, or native Microsoft Entra access-review records.
