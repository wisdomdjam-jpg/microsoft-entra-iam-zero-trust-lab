# Microsoft Entra IAM and Zero Trust Governance Lab

A hands-on identity and access management portfolio project demonstrating workforce identity administration, role-based access control, authentication-method targeting, application access governance, B2B collaboration, identity lifecycle management, audit logging, and Zero Trust security principles using Microsoft Entra ID.

## Project Overview

This project implements an identity and access management environment for **Northstar Health Services**, a fictional cross-functional organization.

The laboratory was created in a personal Microsoft Entra tenant and designed to demonstrate practical identity administration across departments including:

- Clinical Operations
- Finance
- Human Resources
- Information Technology
- Security Operations
- External Vendors

The project applies the following Zero Trust principles:

- Verify explicitly
- Use least-privilege access
- Assume breach
- Grant access based on documented business requirements
- Remove obsolete access promptly
- Monitor identity and application-management activity

## Project Objectives

- Build a structured workforce identity environment
- Organize users through role-based security groups
- Delegate limited administrative permissions
- Configure stronger authentication methods
- Register and govern an internal application
- Review Microsoft Graph permissions
- Implement external B2B collaboration
- Demonstrate a joiner-mover-leaver lifecycle
- Validate administrative activity through audit logs
- Assess premium identity-governance capabilities
- Separate configured controls from licence-restricted designs

## Lab Environment

- Microsoft Entra ID Free
- Personal test tenant
- Microsoft Entra admin center
- Microsoft Graph permissions interface
- Fictional users, departments, groups, and applications
- No production, employer, school, patient, or customer data
- No paid Azure infrastructure deployed

## Identity Structure

The following fictional workforce identities were created:

- Avery Clinical
- Jordan Finance
- Taylor HR
- Casey IT Support
- Morgan Security
- Vendor Support
- Riley Lifecycle

The identities were configured with fictional display names, job titles, departments, employee identifiers, employee types, and usage locations. No real employee or patient data was used.

## Role-Based Security Groups

Six cloud-based assigned security groups were created:

- `GRP-Clinical-Users`
- `GRP-Finance-Users`
- `GRP-HR-Users`
- `GRP-IT-Support`
- `GRP-Security-Readers`
- `GRP-External-Vendors`

Each workforce identity was assigned to the security group corresponding to the identity's approved business function. This structure supports consistent access assignment, departmental separation, simplified onboarding, controlled transfers, offboarding, and improved access traceability.

## Least-Privilege Administrative Roles

| Identity | Administrative role | Business purpose |
|---|---|---|
| Casey IT Support | Helpdesk Administrator | Perform limited support and password-management activities |
| Morgan Security | Security Reader | Review security information without modifying security controls |

All other fictional workforce and external-vendor identities received no administrative role. Global Administrator was not assigned to any fictional identity.

## Authentication-Method Configuration

Microsoft Authenticator was enabled as an approved authentication method for:

- `GRP-IT-Support`
- `GRP-Security-Readers`

The configuration used selected group targeting, optional registration, and authentication mode `Any`.

This makes Microsoft Authenticator available to the targeted identities. It does not independently prove that MFA was enforced at every sign-in. Conditional Access enforcement remained design-specified because the lab used Microsoft Entra ID Free.

## Application Registration and Workload Identity

A fictional internal application named `Northstar Patient Records Portal` was registered as a single-tenant application.

The application was configured with:

- No redirect URI
- No client secret
- No uploaded certificate
- No broad application permissions

The registration created:

1. An application object under **App registrations**
2. A service principal under **Enterprise applications**

The application object represents the application's definition. The service principal represents its identity and access configuration in the local tenant.

## Application Access Governance

The enterprise application was configured with:

```text
Assignment required: Yes
```

The following users were assigned directly:

- Avery Clinical
- Casey IT Support

Finance, Human Resources, Security Reader, contractor, and external guest identities were intentionally not assigned because no business requirement was documented.

Direct user assignments were used because group-based enterprise-application assignment requires additional Microsoft Entra licensing.

## Microsoft Graph Permission Review

The application's configured Microsoft Graph permission was reviewed:

```text
API: Microsoft Graph
Permission: User.Read
Type: Delegated
Description: Sign in and read user profile
Admin consent required: No
```

The default `User.Read` delegated permission was retained. Broad directory, mail, file, and application permissions were not added, supporting least privilege and reducing consent risk.

## External B2B Guest Lifecycle

Microsoft Entra B2B collaboration was used to invite an external identity into the lab.

The lifecycle included:

1. Creating the guest invitation
2. Verifying the `Guest` user type
3. Confirming the `Pending acceptance` state
4. Redeeming the invitation through the external account
5. Confirming the `Accepted` state
6. Adding the accepted guest to `GRP-External-Vendors`
7. Withholding administrative roles
8. Withholding direct access to the patient-record application

The vendor group contains an internally provisioned contractor Member account and an externally authenticated B2B Guest account.

## Joiner-Mover-Leaver Lifecycle

A fictional identity named `Riley Lifecycle` was used to demonstrate workforce lifecycle management.

### Joiner

Riley was created as a Junior Financial Analyst in Finance. The account was created without automatic group, application, licence, or administrative-role assignments. After the business requirement was established, Riley was added to `GRP-Finance-Users`.

### Mover

Riley transferred from Finance to Human Resources. The job title and department were updated, Finance access was removed, and HR access was assigned through `GRP-HR-Users`. The employee identifier was preserved, and simultaneous Finance and HR access was avoided.

### Leaver

Riley's offboarding included:

- Removal from `GRP-HR-Users`
- Zero group memberships
- Zero application assignments
- Zero administrative roles
- Zero assigned licences
- Active-session revocation
- Account disabling
- Temporary identity retention for audit evidence

## Audit-Log Validation

Microsoft Entra audit logs were reviewed to validate identity and application-management activity.

Observed successful activities included user creation, password-profile updates, authentication validation, application and service-principal activity, and access-assignment changes.

A detailed event identified `Northstar Patient Records Portal` as the target service principal of an application-management activity.

The project reviewed logs through the Microsoft Entra admin center. Microsoft Sentinel, Azure Monitor, Log Analytics, event-hub streaming, and external SIEM integration were not configured.

## Emergency-Access Design

A production emergency-access design was developed. It recommends two dedicated cloud-only emergency-access accounts that are separate from daily administration, tightly protected, excluded carefully from lockout-causing policies, monitored for every sign-in, tested periodically, and reviewed after use.

Two additional standing Global Administrator accounts were not created in the personal lab because doing so would unnecessarily increase the privileged attack surface.

## Premium Feature and Licensing Assessment

The lab used Microsoft Entra ID Free. Premium controls were assessed but not described as implemented.

### Conditional Access

Conditional Access required Microsoft Entra ID P1 or P2. The following report-only policy designs were documented:

- `CA-001-Require-MFA-for-Administrators`
- `CA-002-Block-Legacy-Authentication`
- `CA-003-Require-MFA-Northstar-Portal`

### Privileged Identity Management

Privileged Identity Management was assessed as a premium capability. The production design would convert Casey IT Support's standing Helpdesk Administrator role into an eligible, time-limited assignment requiring MFA, justification, notification, and audit logging.
## Access Reviews

A risk-based access-review framework was designed for:

- Helpdesk Administrator assignments
- Security Reader assignments
- Security-group memberships
- Northstar Patient Records Portal assignments
- Microsoft Entra B2B guest identities
- `GRP-External-Vendors` membership
- Direct user assignments
- Temporary access exceptions

The framework defines:

- Monthly reviews for privileged roles, B2B guests, external-vendor membership, privileged direct assignments, and active exceptions
- Quarterly reviews for standard security groups, authentication-method targeting groups, Northstar Portal assignments, and standard direct assignments
- Resource owners, primary reviewers, backup reviewers, remediation owners, and verification owners
- Approve, remove, modify, escalate, and temporary-exception decisions
- Escalation, exception, remediation, verification, evidence-retention, and review-closure procedures

The proposed external-vendor review is:

```text
Review Name: AR-External-Vendor-Access-Monthly
Resource: GRP-External-Vendors
Scope: All members
Frequency: Monthly
Decision: Approve, remove, modify, escalate, or temporarily retain through an approved exception
Missing Response: Transfer to backup review and escalate; do not treat as approval

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

## Manual Access-Review Validation A limited fictional manual access review was completed for: | Fictional identity | Administrative role | Decision | |---|---|---| | Casey IT Support | Helpdesk Administrator | Approved | | Morgan Security | Security Reader | Approved | Both assignments remained aligned with the fictional responsibilities defined in the lab. The simulation included: - Defined review scope and criteria - Initial access-state evidence - Explicit reviewer assessments and decisions - Escalation and exception assessments - Findings and implementation limitations - Evidence traceability - Formal review closure No remediation was required because neither assignment was removed or modified. The simulation used one participant, so independent separation among the preparer, reviewer, and verifier could not be demonstrated. This limitation is disclosed in the review record. **Status:** Manually Simulated and Validated for the limited two-role review.
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
- Excluded personal and technical identifiers from public exports
- Disconnected automatically
- Made no tenant changes

The following automation areas remain pending:

- Northstar service-principal discovery in the tested short script
- Administrative-role assignment inventory
- Northstar application-assignment inventory

```text
Access-review policy: Completed
Administrative-role review simulation: Manually Simulated and Validated
Evidence register: Active, Version 1.1
Read-only Microsoft Graph automation: Partially Validated
Native Microsoft Entra Access Reviews: Assessed, Not Deployed
Entitlement Management: Assessed and Designed, Not Deployed
Privileged Identity Management: Assessed, Not Deployed
Conditional Access: Designed, Not Implemented
Tenant modifications during automation: None


### Lifecycle Workflows

The portal confirmed that Lifecycle Workflows requires Microsoft Entra ID Governance licensing. The manual Riley lifecycle exercise demonstrated the processes that could be automated in a licensed environment.

## Configured Versus Design-Specified Controls

### Configured and Validated

- Fictional workforce identities
- Assigned security groups
- Helpdesk Administrator role
- Security Reader role
- Microsoft Authenticator group targeting
- Single-tenant application registration
- Enterprise application and service principal
- Assignment-required application access
- Direct application-user assignments
- Minimal Microsoft Graph delegated permission
- Audit-log validation
- B2B guest invitation and redemption
- External-vendor group membership
- Manual joiner-mover-leaver lifecycle
- Session revocation
- Account disabling

### Designed but Licence-Restricted

- Conditional Access
- Risk-based authentication policies
- Privileged Identity Management
- Access Reviews
- Entitlement Management
- Access packages
- Lifecycle Workflows
- Automated identity-governance processes
- Group-based enterprise-application assignment

## Evidence

Sanitized project evidence is stored in the `screenshots` folder. Screenshots numbered `01` and `02` are intentionally omitted because they were not retained.

Available evidence covers:

- Least-privilege role assignments
- Microsoft Authenticator targeting
- Application registration and enterprise application
- Assignment-required access
- Direct application-user assignments
- Microsoft Graph delegated permission
- Audit-log validation
- B2B guest lifecycle
- External-vendor group membership
- Joiner, mover, and leaver states
- Premium-feature licensing assessments

## Security and Privacy

Public evidence must remove or obscure:

- Tenant, subscription, object, application, service-principal, session, and correlation IDs
- Private tenant domains
- Administrator and guest sign-in addresses
- User principal names
- Invitation links
- IP addresses
- Passwords, tokens, secrets, and authentication QR codes
- Browser URLs containing identifiers

Fictional names, group names, application names, settings, and licensing messages may remain visible. No secrets, passwords, access tokens, or production data are stored in this repository.

See `SECURITY.md` for additional guidance.
## Access Review Governance

A risk-based access-review framework was developed for:

- Helpdesk Administrator assignments
- Security Reader assignments
- Security-group memberships
- Northstar Patient Records Portal assignments
- Microsoft Entra B2B guest identities
- `GRP-External-Vendors` membership
- Direct user assignments
- Temporary access exceptions

The framework documents:

- Monthly and quarterly review schedules
- Resource owners and designated reviewers
- Explicit approval, removal, modification, and escalation decisions
- Exception-management requirements
- Remediation deadlines
- Post-remediation verification
- Evidence retention and audit traceability
- Free-tier manual review procedures
- Licensing-aware production recommendations

Because the lab uses Microsoft Entra ID Free, native Microsoft Entra Access Reviews were not deployed. A structured manual process was documented as a Free-tier governance alternative.

### Manual Review Simulation

A limited fictional manual review was completed for:

| Fictional identity | Administrative role | Review decision |
|---|---|---|
| Casey IT Support | Helpdesk Administrator | Approved |
| Morgan Security | Security Reader | Approved |

Both assignments were approved because they remained aligned with the fictional responsibilities defined in the lab.

The simulation included:

- A defined review scope
- An initial access-state reference
- Explicit reviewer assessments
- Documented approval decisions
- Escalation and exception assessments
- Review metrics
- Findings and limitations
- An active evidence register
- Formal review closure

No remediation was required because neither assignment was removed or modified.

The simulation used one participant, so independent separation among the preparer, reviewer, and verifier could not be demonstrated. This limitation is disclosed in the review record.

### Current Access-Review Status

```text
Access-review policy: Completed
Reusable review templates: Completed
Limited administrative-role review: Manually Simulated and Validated
Evidence register: Active
Native Microsoft Entra Access Reviews: Assessed, Not Deployed
Privileged Identity Management: Assessed, Not Deployed
Automated review remediation: Assessed, Not Deployed

## Repository Structure

```text
microsoft-entra-iam-zero-trust-lab/
├── documentation/
│   ├── access-control-matrix.md
│   ├── emergency-access-runbook.md
│   ├── joiner-mover-leaver.md
│   └── licensing-assessment.md
├── policies/
│   ├── conditional-access-design.md
│   ├── external-vendor-governance.md
│   └── privileged-access-design.md
├── screenshots/
│   └── sanitized project evidence
├── README.md
├── SECURITY.md
└── LICENSE
```

## Future Enhancements

- Read-only Microsoft Graph PowerShell inventory reporting
- Group-membership and administrative-role reporting
- Conditional Access implementation in a licensed environment
- Privileged Identity Management activation testing
- Automated Access Reviews
- Entitlement Management access packages
- Lifecycle Workflow automation
- SIEM integration and KQL-based identity monitoring
- Passwordless authentication, passkey, and Temporary Access Pass validation

Future enhancements are not presented as completed implementations.

## Skills Demonstrated

- Microsoft Entra ID
- Identity and Access Management
- Role-Based Access Control
- Least Privilege
- Microsoft Authenticator
- Multifactor Authentication concepts
- B2B Guest Identities
- Application Registrations
- Enterprise Applications
- Service Principals
- Microsoft Graph Permissions
- Application Access Governance
- Identity Lifecycle Management
- Audit Logging
- External Identity Governance
- Zero Trust
- Security Documentation
- Technology Risk
- Privacy-Aware Administration
- Licensing Assessment

## Key Lessons

- Identity creation does not automatically justify access.
- Administrative roles should match business responsibilities.
- Authentication-method availability differs from MFA enforcement.
- App registrations and enterprise applications represent different identity objects.
- Delegated and application permissions carry different risks.
- Guest invitation acceptance does not automatically authorize resource access.
- Mover processes must remove obsolete access before replacement access is granted.
- Leaver processes should remove access, revoke sessions, and disable accounts.
- Premium features must not be described as implemented when licensing prevents deployment.
- Strong portfolio documentation distinguishes tested controls from production recommendations.

## Disclaimer

Northstar Health Services and all workforce identities, groups, departments, employee identifiers, and applications in this repository are fictional.

This repository is an educational and portfolio project. It does not represent a production deployment, employer environment, medical system, or security guarantee.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management  
Toronto, Ontario, Canada

- GitHub: https://github.com/wisdomdjam-jpg
- LinkedIn: https://www.linkedin.com/in/wisdom-kwame-djam-680711266

## Licence

This project is licensed under the **MIT License**.

See the LICENSE file for the complete licence terms.

Copyright © 2026 **Wisdom Kwame Djam**.
