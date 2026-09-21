# Microsoft Entra Audit-Log Evidence

This folder contains sanitized evidence showing identity-management and application-management activities recorded in the fictional Microsoft Entra IAM and Zero Trust Governance Lab.

The evidence demonstrates that selected Microsoft Entra administrative activities generated audit records that could be reviewed for governance, investigation, and control-validation purposes.

## Evidence Summary

```text
Total Audit Evidence Items: 3
Implemented and Validated Items: 3
Items Approved for Public Repository: 3
Items Pending Redaction: 0
Tenant Modifications During Evidence Review: None
```

## Evidence Item 1: Identity and Application Audit Activities

**Evidence ID:** `EVD-2026-AUDIT-001`  
**Evidence type:** Audit Record  
**Control demonstrated:** Administrative activity logging  
**Date represented:** September 13, 2026  
**Status:** Implemented and Validated  

The sanitized screenshot shows successful Microsoft Entra audit events associated with identity, authentication, directory, and application-management activities.

### Visible Activities

The visible audit-log summary includes successful events associated with:

- User creation
- Password-profile updates
- Password validation
- Authentication validation
- Service-principal creation

### Evidence File

```text
entra-audit-log-identity-and-application-activities_2026-09-13.png
```

### Limitation

The screenshot provides summary-level audit events. It does not independently display every target resource, initiating identity, modified property, IP address, or detailed event result.

The evidence must not be represented as Microsoft Sentinel monitoring, production incident detection, or proof that every project activity generated an audit record.

---

## Evidence Item 2: Northstar Service-Principal Audit Target

**Evidence ID:** `EVD-2026-AUDIT-002`  
**Evidence type:** Audit Record  
**Target type:** Service Principal  
**Target display name:** Northstar Patient Records Portal  
**Service:** Core Directory  
**Status:** Implemented and Validated  

The sanitized screenshot shows the target-details panel for a selected Microsoft Entra audit event.

The visible target is:

```text
Type: ServicePrincipal
Display Name: Northstar Patient Records Portal
```

### Control Demonstrated

The evidence supports:

- Application-management audit traceability
- Service-principal target identification
- Workload-identity governance evidence
- Audit-record investigation
- Evidence-based application governance

### Evidence File

```text
19-entra-northstar-service-principal-audit-target_2026-09-14.png
```

### Limitation

The screenshot identifies the target of a selected audit event but does not independently show:

- The complete activity name
- The initiating administrator
- Every modified property
- Application token issuance
- Application sign-in
- Enterprise-application assignment
- A security incident
- Microsoft Sentinel integration
- Complete audit-log coverage

The screenshot must not be represented as proof of an activity that is not visible in the published image.

---

## Evidence Item 3: Northstar Service-Principal Update Activity

**Evidence ID:** `EVD-2026-AUDIT-003`  
**Evidence type:** Audit Record  
**Activity type:** Update service principal  
**Category:** ApplicationManagement  
**Service:** Core Directory  
**Status:** Success  
**Initiating actor type:** User  
**Date:** September 14, 2026  
**Status:** Implemented and Validated  

The sanitized screenshot shows the activity-details panel for a selected Microsoft Entra audit event.

The visible activity details are:

```text
Activity Type: Update service principal
Category: ApplicationManagement
Status: Success
Initiated By Type: User
```

### Control Demonstrated

The evidence supports:

- Application-management activity logging
- Successful service-principal update logging
- Workload-identity governance evidence
- Administrative-activity review
- Audit-event investigation readiness

### Evidence File

```text
20-entra-northstar-service-principal-update-activity_2026-09-14.png
```

### Limitation

The screenshot does not independently show:

- The precise property changed
- The reason for the update
- The initiating individual
- Every modified property
- User or group assignment activity
- API-permission changes
- Token issuance or application sign-in
- A security incident
- Microsoft Sentinel integration
- Complete audit-log coverage

The evidence must not be represented as proof of a property change or related activity that is not visible in the published screenshot.

---

## Related Evidence

The two Northstar audit-detail screenshots provide complementary information:

```text
EVD-2026-AUDIT-002
Target Type: ServicePrincipal
Target Display Name: Northstar Patient Records Portal

EVD-2026-AUDIT-003
Activity Type: Update service principal
Category: ApplicationManagement
Status: Success
```

Together, the screenshots demonstrate that a selected successful service-principal update audit event was associated with the fictional Northstar Patient Records Portal service principal.

The screenshots do not independently identify the precise property changed or the individual who initiated the update.

## Overall Control Purpose

The audit-log evidence demonstrates that selected identity and application administration activities generated Microsoft Entra audit records.

The evidence supports:

- Administrative-activity traceability
- Identity-lifecycle evidence
- Application-management evidence
- Service-principal governance
- Audit and governance documentation
- Investigation and review readiness
- Evidence-based control validation

## Evidence Files

```text
entra-audit-log-identity-and-application-activities_2026-09-13.png
19-entra-northstar-service-principal-audit-target_2026-09-14.png
20-entra-northstar-service-principal-update-activity_2026-09-14.png
```

## Privacy Review

The published screenshots were sanitized to remove or permanently redact:

- Personal account information
- Tenant and directory details
- Browser-address information
- Object identifiers
- Correlation identifiers
- Initiating-actor identifiers
- Tenant identifiers
- User principal names
- Email addresses
- Authentication details
- Unnecessary browser and device information

```text
Privacy Review Result: Passed
Redaction Status: Verified Redacted
Reviewed By: Wisdom Kwame Djam
Review Date: 2026-09-20
```

## Implementation Boundaries

The published evidence demonstrates Microsoft Entra audit logging for selected lab activities.

The evidence does not demonstrate:

- Microsoft Sentinel implementation
- Security information and event management integration
- Production incident detection
- Automated alerting
- Complete audit-log retention
- Continuous monitoring
- Every target resource or modified property
- Production security-incident response
- Regulatory compliance certification

## Ownership

```text
Project Owner: Wisdom Kwame Djam
Project: Microsoft Entra IAM and Zero Trust Governance Lab
Evidence Classification: Public after sanitization
Audit Evidence Status: Implemented and Validated
Tenant Modifications During Evidence Review: None
```

## Disclaimer

This folder contains educational audit evidence from a fictional Microsoft Entra environment.

The evidence does not contain production tenant information, real employee records, real patient information, access tokens, authentication secrets, or production security-incident evidence.
