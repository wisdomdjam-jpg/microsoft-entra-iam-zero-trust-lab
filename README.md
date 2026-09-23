# Microsoft Entra IAM and Zero Trust Governance Lab

A hands-on identity and access management portfolio project demonstrating workforce identity administration, role-based access control, authentication-method targeting, application access governance, B2B collaboration, identity lifecycle management, audit logging, read-only Microsoft Graph automation, and licensing-aware Zero Trust design using Microsoft Entra ID.

## Project Overview

This project implements an identity and access management environment for **Northstar Health Services**, a fictional cross-functional organization.

The lab was created in a personal Microsoft Entra tenant and demonstrates practical identity administration across:

- Clinical Operations
- Finance
- Human Resources
- Information Technology
- Security Operations
- External Vendors

The project applies these Zero Trust principles:

- Verify explicitly
- Use least-privilege access
- Assume breach
- Grant access according to documented business requirements
- Remove obsolete access promptly
- Monitor identity and application-management activity
- Distinguish implemented controls from proposed or licence-restricted controls

## Project Objectives

- Build a structured workforce identity environment
- Organize users through role-aligned security groups
- Delegate limited administrative permissions
- Configure selected authentication-method targeting
- Register and govern a fictional internal application
- Review Microsoft Graph permissions
- Implement external B2B collaboration
- Demonstrate fictional joiner, mover, and leaver states
- Validate selected administrative activity through audit logs
- Develop a manual access-review governance framework
- Build and test a sanitized read-only Microsoft Graph inventory workflow
- Assess premium identity-governance capabilities without overstating deployment

## Lab Environment

- Microsoft Entra ID Free
- Personal test tenant
- Microsoft Entra admin center
- Microsoft Graph PowerShell
- Fictional users, departments, groups, and applications
- No production, employer, school, patient, or customer data
- No paid Azure infrastructure
- Microsoft Entra Security Defaults retained

## Identity Structure

The following fictional identities were used:

- Avery Clinical
- Jordan Finance
- Taylor HR
- Casey IT Support
- Morgan Security
- Vendor Support
- Riley Lifecycle
- Northstar Vendor Guest

The identities were configured with fictional display names, job titles, departments, employee types, and usage locations. No real employee or patient data was used.

## Role-Based Security Groups

Six cloud-based assigned security groups were created:

- `GRP-Clinical-Users`
- `GRP-Finance-Users`
- `GRP-HR-Users`
- `GRP-IT-Support`
- `GRP-Security-Readers`
- `GRP-External-Vendors`

The groups support departmental separation, consistent access assignment, access review, fictional onboarding and transfer scenarios, external-vendor governance, and improved traceability.

## Least-Privilege Administrative Roles

| Fictional identity | Administrative role | Business purpose |
|---|---|---|
| Casey IT Support | Helpdesk Administrator | Perform limited support and password-management activities |
| Morgan Security | Security Reader | Review security information without modifying security controls |

No fictional workforce or external-vendor identity received Global Administrator.

## Authentication-Method Configuration

Microsoft Authenticator was enabled and targeted to:

- `GRP-IT-Support`
- `GRP-Security-Readers`

The visible configuration used:

```text
Target: Selected groups
Registration: Optional
Authentication mode: Any
```

This configuration demonstrates authentication-method availability and group targeting. It does not independently prove completed registration, passwordless use, or MFA enforcement at every sign-in.

## Application Registration and Workload Identity

A fictional internal application named `Northstar Patient Records Portal` was registered as a single-tenant application.

The visible application-registration overview showed:

```text
Display name: Northstar Patient Records Portal
Supported account type: My organization only
Redirect URI: Not configured in the visible overview
Application ID URI: Not configured in the visible overview
Managed application in local directory: Northstar Patient Records Portal
Displayed state: Activated
```

The registration created:

1. An application object under **App registrations**
2. A tenant-local service principal under **Enterprise applications**

The application object represents the application definition. The enterprise application represents the tenant-local service principal and access configuration.

Public evidence excludes application, object, and tenant identifiers.

## Application Access Governance

The enterprise application was visibly configured as:

```text
Activation status: Activated
Enabled for users to sign in: Yes
Assignment required: Yes
Visible to users: No
```

The following fictional users were assigned directly:

- Avery Clinical
- Casey IT Support

Finance, Human Resources, Security Reader, lifecycle, and external guest identities were not shown as directly assigned.

Direct assignments were used in the lab. Group-based enterprise-application assignment was not represented as implemented.

The evidence does not independently demonstrate successful application sign-in, effective in-application authorization, single sign-on, provisioning, Conditional Access, or production use.

## Microsoft Graph Permission Review

The Northstar application was configured with the minimal delegated Microsoft Graph permission visible in the lab:

```text
API: Microsoft Graph
Permission: User.Read
Type: Delegated
Description: Sign in and read user profile
Admin consent required: No
```

Broad directory, mail, file, and application permissions were not added to the Northstar application.

The published evidence confirms permission configuration but does not independently demonstrate token issuance or a completed Graph API call by the application.

## External B2B Guest Lifecycle

Microsoft Entra B2B collaboration was used to demonstrate a fictional external-identity invitation lifecycle.

The documented states included:

1. Guest identity created through invitation
2. User type recorded as `Guest`
3. Invitation state recorded as `Pending acceptance`
4. Invitation later recorded as `Accepted`
5. External-vendor membership documented separately
6. Administrative roles withheld
7. Direct Northstar application access withheld

The published guest screenshots were sanitized to remove personal names, email addresses, user principal names, object identifiers, account details, and tenant information.

## Joiner-Mover-Leaver Lifecycle

The fictional `Riley Lifecycle` identity was used to document separate workforce-lifecycle states.

### Joiner State

Riley appeared as a direct member of `GRP-Finance-Users` together with Jordan Finance.

### Mover State

Riley appeared as a direct member of `GRP-HR-Users` together with Taylor HR.

### Leaver State

A later screenshot showed:

```text
User type: Member
Account status: Disabled
Group memberships: 0
Applications: 0
Assigned roles: 0
Assigned licences: 0
```

The screenshots represent separate observed states. They do not independently prove the exact order, approval, timing, administrator, session-revocation event, or a fully automated lifecycle workflow.

## Audit-Log Validation

Microsoft Entra audit logs were reviewed for selected identity and application-management activities.

Published evidence includes:

- Summary-level identity and application audit activities
- Northstar service-principal target identification
- Successful `Update service principal` activity
- `ApplicationManagement` category
- `Core Directory` service context

The evidence supports selected audit traceability. It does not demonstrate Microsoft Sentinel, continuous monitoring, automated alerting, full audit coverage, or production incident response.

## Emergency-Access Design

A production emergency-access design was documented. The design recommends two dedicated cloud-only accounts separated from daily administration, strongly protected, carefully excluded from lockout-causing policies, monitored for every sign-in, periodically tested, and reviewed after use.

Two additional standing Global Administrator accounts were not created in the personal lab because doing so would unnecessarily increase privileged exposure.

## Premium Feature and Licensing Assessment

The lab used Microsoft Entra ID Free. Premium capabilities were assessed but not represented as deployed.

### Conditional Access

The portal displayed a Microsoft Entra ID P1 or P2 subscription requirement. Proposed production policy designs include:

- `CA-001-Require-MFA-for-Administrators`
- `CA-002-Block-Legacy-Authentication`
- `CA-003-Require-MFA-Northstar-Portal`

**Status:** Assessed and Designed, Not Deployed

### Privileged Identity Management

PIM capabilities for eligible assignment, activation, approval, audit, alerts, and access review were assessed.

The proposed production design would evaluate changing standing administrative access into eligible or time-bound access with MFA, justification, approval, notification, and audit logging.

**Status:** Assessed, Not Deployed

### Lifecycle Workflows

The portal displayed a Microsoft Entra ID Governance licensing requirement for Lifecycle Workflows.

The manual lifecycle exercise documents states that could be governed through automated workflows in an appropriately licensed environment.

**Status:** Assessed, Not Deployed

### Entitlement Management

A time-limited external-vendor access package was designed:

```text
Catalog: Northstar External Collaboration
Access package: AP-External-Vendor-Support
Resource: GRP-External-Vendors
Approval: Vendor sponsor or designated owner
Access duration: 90 days
Expiration: Automatic access removal
Review: Quarterly
```

**Status:** Assessed and Designed, Not Deployed

## Access Review Governance

A risk-based access-review framework was developed for:

- Helpdesk Administrator assignments
- Security Reader assignments
- Security-group memberships
- Northstar Patient Records Portal assignments
- Microsoft Entra B2B guests
- `GRP-External-Vendors` membership
- Direct user assignments
- Temporary access exceptions

The framework defines:

- Monthly and quarterly review schedules
- Resource owners and designated reviewers
- Approve, remove, modify, escalate, and temporary-exception decisions
- Escalation and exception procedures
- Remediation deadlines
- Post-remediation verification
- Evidence retention and audit traceability
- Free-tier manual review procedures
- Licensing-aware production recommendations

### Manual Administrative-Role Review

A limited fictional manual review was completed:

| Fictional identity | Administrative role | Decision |
|---|---|---|
| Casey IT Support | Helpdesk Administrator | Approved |
| Morgan Security | Security Reader | Approved |

No remediation was required because neither assignment was removed or modified.

The simulation used one participant, so independent separation among preparer, reviewer, and verifier was not demonstrated.

```text
Access-review policy: Completed
Reusable review templates: Completed
Limited administrative-role review: Manually Simulated and Validated
Native Microsoft Entra Access Reviews: Assessed, Not Deployed
Automated review remediation: Assessed, Not Deployed
```

## Read-Only Microsoft Graph Automation

A short PowerShell inventory script was developed and tested using delegated read-only Microsoft Graph permissions.

The validated workflow retrieved and exported:

- Fictional users and guests
- Account-enabled status
- Six security groups
- `GRP-External-Vendors` membership
- An inventory validation summary

The workflow:

- Retained Microsoft Entra Security Defaults
- Used interactive delegated authentication
- Used no embedded credentials
- Requested no write permissions
- Created sanitized CSV evidence
- Excluded sensitive identifiers from public exports
- Disconnected automatically
- Made no tenant changes

Pending automation areas:

- Northstar service-principal discovery in the tested short script
- Administrative-role assignment inventory
- Northstar application-assignment inventory

**Overall automation status:** Partially Validated

## Configured and Assessed Controls

### Implemented and Validated

- Fictional workforce and external identities
- Six assigned security groups
- Helpdesk Administrator role
- Security Reader role
- Microsoft Authenticator selected-group targeting
- Single-tenant application registration
- Enterprise application and service principal
- Assignment-required application access
- Direct application-user assignments
- Minimal delegated Microsoft Graph `User.Read` permission
- Selected audit-log validation
- B2B guest invitation states
- External-vendor membership
- Lifecycle-state evidence
- Account disablement
- Public-safe read-only inventory exports

### Manually Simulated

- Limited administrative-role access review

### Partially Validated

- Read-only Microsoft Graph inventory automation

### Assessed or Designed, Not Deployed

- Conditional Access
- Privileged Identity Management
- Native Access Reviews
- Entitlement Management
- Access packages
- Lifecycle Workflows
- Automated identity-governance processes
- Group-based enterprise-application assignment

## Evidence Package Status

The repository includes a sanitized, traceable evidence package covering administrative roles, manual access review, automation, audit logs, licensing assessments, identity lifecycle, group memberships, B2B collaboration, application access, authentication-method targeting, and Microsoft Graph permission configuration.

```text
Registered Evidence Items: 30
Implemented and Validated Items: 21
Manually Simulated Items: 1
Partially Implemented Items: 2
Assessed, Not Deployed Items: 6
Evidence Register Version: 1.24
Screenshot Files Reviewed: 26
Distinct Evidence Screenshots: 25
Duplicate Screenshots: 1
Screenshots Remaining: 0
Privacy Review: Passed
Tenant Modifications During Automation and Evidence Review: None
```
The complete evidence index is available in the evidence/evidence-register.md.
```
So the corrected section should look exactly like:
````markdown
## Evidence Package Status

The repository includes a sanitized, traceable evidence package covering administrative roles, manual access review, automation, audit logs, licensing assessments, identity lifecycle, group memberships, B2B collaboration, application access, authentication-method targeting, and Microsoft Graph permission configuration.

```text
Registered Evidence Items: 30
Implemented and Validated Items: 21
Manually Simulated Items: 1
Partially Implemented Items: 2
Assessed, Not Deployed Items: 6
Evidence Register Version: 1.24
Screenshot Files Reviewed: 26
Distinct Evidence Screenshots: 25
Duplicate Screenshots: 1
Screenshots Remaining: 0
Privacy Review: Passed
Tenant Modifications During Automation and Evidence Review: None
```

The complete evidence index is available in the evidence/evidence-register.md.

## Evidence Organization

```text
evidence/
├── access-reviews/
│   └── administrative-roles/
├── application-access/
├── audit-logs/
├── authentication-methods/
├── automation/
├── b2b-guests/
├── graph-permissions/
├── identities/
├── licensing-assessments/
├── security-groups/
├── templates/
└── evidence-register.md
```

Public evidence was reviewed to exclude unnecessary personal, account, tenant, object, application, session, request, correlation, authentication, and browser identifiers.

Raw user and external-vendor CSV exports remain private. Public-safe copies are used in the repository.

See `SECURITY.md` for additional evidence-handling guidance.

## Repository Structure

```text
microsoft-entra-iam-zero-trust-lab/
├── documentation/
│   ├── access-control-matrix.md
│   ├── emergency-access-runbook.md
│   ├── joiner-mover-leaver.md
│   └── licensing-assessment.md
├── policies/
│   ├── access-review-design.md
│   ├── conditional-access-design.md
│   ├── external-vendor-governance.md
│   └── privileged-access-design.md
├── scripts/
│   └── Get-EntraReadOnlyInventory.ps1
├── evidence/
│   ├── access-reviews/
│   ├── application-access/
│   ├── audit-logs/
│   ├── authentication-methods/
│   ├── automation/
│   ├── b2b-guests/
│   ├── graph-permissions/
│   ├── identities/
│   ├── licensing-assessments/
│   ├── security-groups/
│   ├── templates/
│   └── evidence-register.md
├── README.md
├── SECURITY.md
└── LICENSE
```

## Future Enhancements

- Validate safe Northstar service-principal discovery in the short script
- Validate read-only administrative-role assignment reporting
- Validate read-only Northstar application-assignment reporting
- Implement Conditional Access in an appropriately licensed environment
- Test eligible and time-bound PIM assignments
- Deploy native Access Reviews where licensing permits
- Configure Entitlement Management access packages
- Test Lifecycle Workflow automation
- Integrate identity logs with a SIEM and KQL-based monitoring
- Validate passwordless authentication, passkeys, and Temporary Access Pass
- Complete a remediation-based fictional access-review scenario

Future enhancements are not represented as completed implementations.

## Skills Demonstrated

- Microsoft Entra ID
- Identity and Access Management
- Role-Based Access Control
- Least Privilege
- Microsoft Authenticator
- B2B Guest Identities
- Application Registrations
- Enterprise Applications
- Service Principals
- Microsoft Graph Permissions
- Microsoft Graph PowerShell
- Application Access Governance
- Identity Lifecycle Management
- Audit Logging
- External Identity Governance
- Zero Trust
- Security Documentation
- Technology Risk
- Privacy-Aware Administration
- Licensing Assessment
- Evidence Management

## Key Lessons

- Identity creation does not automatically justify access.
- Administrative roles should match documented responsibilities.
- Authentication-method availability is different from MFA enforcement.
- App registrations and enterprise applications represent different identity objects.
- Delegated and application permissions carry different risks.
- Guest invitation acceptance does not automatically authorize resource access.
- Lifecycle evidence must distinguish observed states from a fully evidenced automated sequence.
- Premium capabilities must not be described as implemented when licensing prevents deployment.
- Public evidence requires deliberate sanitization and traceability.
- Strong portfolio documentation distinguishes tested controls from proposed production recommendations.

## Disclaimer

Northstar Health Services and all workforce identities, groups, departments, scenarios, and applications in this repository are fictional.

This repository is an educational and portfolio project. It does not represent a production deployment, employer environment, medical system, compliance certification, or security guarantee.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management  
Toronto, Ontario, Canada

- [GitHub Profile](https://github.com/wisdomdjam-jpg)
- [LinkedIn Profile](https://www.linkedin.com/in/wisdom-kwame-djam-680711266)

## Licence

This project is licensed under the **MIT License**.

See `LICENSE` for the complete licence terms.

Copyright © 2026 **Wisdom Kwame Djam**.
