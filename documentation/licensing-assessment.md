# Microsoft Entra Licensing Assessment

## Purpose

This document assesses the Microsoft Entra licensing requirements relevant to the Northstar Health Services IAM and Zero Trust Governance Lab. It distinguishes controls that were configured and validated in the personal lab from premium capabilities that were assessed or designed but not deployed.

Northstar Health Services, its identities, departments, groups, applications, and access scenarios are fictional. Licensing availability can change, so production teams should verify current Microsoft product terms before implementation.

## Lab Environment

| Item | Lab Position |
|---|---|
| Platform | Microsoft Entra ID |
| Tenant type | Personal educational lab tenant |
| Primary licence level | Microsoft Entra ID Free |
| Production data | None |
| Real employee or patient data | None |
| Premium licences purchased for this project | None |
| Premium controls represented as implemented | None |

## Licensing Interpretation Principles

The project uses the following rules when describing controls:

- A feature is described as **configured** only when it was saved successfully in the lab.
- A feature is described as **validated** only when evidence confirmed the expected state or result.
- A feature is described as **assessed** when the relevant portal, workflow, or licensing requirement was reviewed.
- A feature is described as **design-specified** when a production-ready approach was documented without deployment.
- A feature is described as **licence-restricted** when the lab licence did not permit implementation.
- Portal visibility does not prove that a feature is licensed, configured, or enforced.
- A group, role, authentication method, or application assignment is not described as automated unless automation was executed and validated.

## Capability Assessment Matrix

| Capability | Lab Status | Licensing Position Used in This Project | Evidence or Treatment |
|---|---|---|---|
| Workforce user administration | Configured and validated | Available in the lab | Fictional Member identities created and managed |
| Assigned security groups | Configured and validated | Available in the lab | Six role-aligned security groups and direct memberships |
| Directory role assignment | Configured and validated | Available in the lab | Helpdesk Administrator and Security Reader assigned |
| Microsoft Authenticator targeting | Configured | Available through authentication-method policy settings used in the lab | Targeted to IT Support and Security Readers; sign-in enforcement not independently claimed |
| App registration | Configured and validated | Available in the lab | Northstar Patient Records Portal registered |
| Enterprise application and service principal | Configured and validated | Available in the lab | Enterprise application object reviewed |
| Assignment-required application access | Configured and validated | Available in the lab | Direct access assigned only to approved fictional users |
| Microsoft Graph delegated permission | Configured and validated | Available in the lab | Minimal `User.Read` delegated permission retained |
| Audit-log review | Configured and validated | Basic audit evidence available in the lab | Relevant actions reviewed and sanitized evidence prepared |
| B2B guest collaboration | Configured and validated | Available in the lab | Invitation, redemption, and vendor-group membership completed |
| Manual joiner-mover-leaver process | Configured and validated | Performed manually without premium automation | Finance-to-HR transfer and offboarding completed |
| Conditional Access | Assessed and design-specified | Premium licensing required for the intended policies | Not deployed or claimed as enforced |
| Privileged Identity Management | Assessed and design-specified | Microsoft Entra ID P2 or an eligible governance licence generally required | No eligible or time-bound activation implemented |
| Access Reviews | Assessed and design-specified | Premium governance licensing generally required | Review cadence and ownership documented only |
| Entitlement Management | Assessed and design-specified | Microsoft Entra ID Governance licensing generally required | Access-package design documented only |
| Lifecycle Workflows | Assessed and design-specified | Microsoft Entra ID Governance licensing generally required | Manual lifecycle process completed; workflow automation not deployed |
| Group-based application assignment | Design-specified | Premium licensing may be required depending on the assignment scenario | Direct user assignment used in the lab |
| Risk-based identity protection | Design-specified | Microsoft Entra ID P2 generally required | No user-risk or sign-in-risk policy implemented |

## Controls Implemented in the Lab

### Workforce Identity Administration

The lab created and managed fictional workforce identities with attributes such as department, job title, employee type, and usage location. Identity creation was kept separate from access authorization.

### Role-Based Security Groups

Assigned security groups were used to classify users by business function:

```text
GRP-Clinical-Users
GRP-Finance-Users
GRP-HR-Users
GRP-IT-Support
GRP-Security-Readers
GRP-External-Vendors
```

Group membership was granted directly and reviewed manually.

### Least-Privilege Administrative Roles

The following built-in roles were assigned to fictional identities:

```text
Helpdesk Administrator
Security Reader
```

No fictional workforce user, contractor, or guest received Global Administrator.

### Authentication-Method Targeting

Microsoft Authenticator availability was targeted to the IT Support and Security Readers groups. This demonstrates method-policy targeting, but the project does not claim that Conditional Access or another premium policy independently enforced MFA at every sign-in.

### Application Governance

The Northstar Patient Records Portal app registration and corresponding enterprise application were configured. Assignment was required, and direct application access was limited to approved fictional users.

The project retained the minimal delegated Microsoft Graph permission:

```text
User.Read
```

Broader directory, mail, file, site, or application permissions were not added.

### B2B Collaboration

A fictional external collaboration scenario was completed through invitation, acceptance, and membership in `GRP-External-Vendors`. Guest acceptance and vendor-group membership did not automatically grant administrative or application access.

### Manual Joiner-Mover-Leaver Governance

Riley Lifecycle was processed manually through three stages:

1. Joiner access to Finance
2. Mover transition from Finance to Human Resources
3. Leaver access removal, session revocation, and account disabling

This demonstrates lifecycle governance without claiming that Lifecycle Workflows automated the process.

## Premium Capability Assessments

### Conditional Access

The production design recommends Conditional Access policies for scenarios such as:

- Requiring MFA for administrative roles
- Requiring MFA for selected workforce or external identities
- Blocking legacy authentication
- Restricting access based on device, location, application, or risk when justified
- Excluding monitored emergency-access accounts from policies that could cause tenant lockout
- Testing policies in report-only mode before enforcement where supported

These controls were not deployed in the Free lab and must not be described as implemented or enforced.

### Privileged Identity Management

The production design recommends replacing unnecessary standing privilege with eligible, time-limited activation where licensing permits. A mature design could include:

- Eligible role assignments
- Approval for sensitive roles
- MFA during activation
- Justification and ticket information
- Limited activation duration
- Notifications and audit review
- Regular review of privileged-role eligibility

The lab used active assignments for Helpdesk Administrator and Security Reader and did not implement PIM activation.

### Access Reviews

The production design recommends periodic review of:

- Administrative-role assignments
- External-vendor access
- Application assignments
- Departmental group memberships
- Access-package assignments

Recommended review frequencies are documented in the access-control matrix. No automated Access Review campaign was created in the lab.

### Entitlement Management

A production design could use access packages to bundle appropriate groups, applications, SharePoint sites, approval rules, expiration, and review requirements for employees, contractors, or guests.

No access package, connected organization, catalogue workflow, or automated expiration was implemented in the lab.

### Lifecycle Workflows

The lab completed lifecycle tasks manually. A licensed production environment could automate selected tasks based on authoritative attributes and lifecycle events, including:

- Pre-hire preparation
- New-hire notifications
- Group assignment or removal
- Manager tasks
- Session revocation
- Account disabling
- Post-offboarding follow-up

The project does not claim that any Lifecycle Workflow was created, enabled, or executed.

### Identity Protection and Risk-Based Access

A production design could use user-risk and sign-in-risk signals to require remediation, require stronger authentication, or block access according to organizational risk tolerance.

No risk-based Conditional Access or Identity Protection policy was implemented in the lab.

## Licensing-Aware Architecture Decisions

### Direct Application Assignment

Direct user assignment was used for the Northstar enterprise application because the lab did not rely on premium group-based application assignment. This decision allowed explicit authorization to be demonstrated without overstating licence capabilities.

### Manual Lifecycle Administration

Joiner, mover, and leaver actions were performed manually to demonstrate the governance logic independently of premium automation.

### Active Administrative Assignments

Built-in roles were assigned actively in the lab. PIM-based eligible activation remains a production recommendation rather than an implemented feature.

### Documented Review Cadence

Access-review ownership and frequency were documented even though automated Access Reviews were unavailable. This preserves the governance requirement while clearly stating the implementation limitation.

## Safe Portfolio Wording

### Approved Wording

Use statements such as:

- Configured Microsoft Entra workforce identities, assigned security groups, least-privilege roles, authentication-method targeting, application access, audit validation, B2B collaboration, and manual identity lifecycle controls.
- Assessed Conditional Access, Privileged Identity Management, Access Reviews, Entitlement Management, and Lifecycle Workflows, documenting production designs where premium licensing prevented deployment.
- Distinguished implemented controls from licence-restricted designs to maintain accurate technical documentation.
- Completed a manual joiner-mover-leaver exercise with obsolete-access removal, session revocation, and account disabling.

### Wording to Avoid

Do not use statements such as:

- Implemented Conditional Access across the tenant.
- Deployed Privileged Identity Management.
- Automated access reviews and entitlement management.
- Built automated Lifecycle Workflows.
- Enforced risk-based MFA.
- Implemented group-based application assignment.

Those statements would overstate the work completed in the Free lab.

## Resume-Ready Summary

```text
Built a Microsoft Entra IAM and Zero Trust governance lab covering workforce and B2B identities, role-based groups, least-privilege administration, authentication-method targeting, explicit application access, audit validation, and manual joiner-mover-leaver controls; assessed premium governance capabilities and documented licensing-aware production designs.
```

## Interview Explanation

A concise interview response can be:

```text
I implemented the controls supported by my Microsoft Entra Free lab, including users, groups, least-privilege roles, authentication-method targeting, app registration, explicit enterprise-application assignments, audit validation, B2B collaboration, and a manual joiner-mover-leaver process. I then assessed premium features such as Conditional Access, PIM, Access Reviews, Entitlement Management, and Lifecycle Workflows. Because those capabilities required licensing that was not available in the lab, I documented them as production designs rather than claiming they were deployed.
```

## Production Validation Checklist

Before implementing the design in another tenant:

1. Confirm the tenant's active Microsoft Entra and Microsoft 365 subscriptions.
2. Verify feature availability in current Microsoft documentation and product terms.
3. Confirm whether every person benefiting from a premium feature requires an appropriate licence.
4. Validate prerequisites and dependencies for each capability.
5. Identify application, data, security, privacy, and business owners.
6. Test restrictive policies safely before enforcement.
7. Protect emergency-access procedures from accidental lockout.
8. Document exceptions and compensating controls.
9. Monitor policy results and audit logs.
10. Reassess licensing after service or subscription changes.

## Assessment Conclusion

The lab demonstrates substantial IAM and Zero Trust governance work without presenting premium designs as completed implementations. Microsoft Entra ID Free supported the core identity, group, role, application, B2B, audit, and manual lifecycle exercises used in the portfolio.

Conditional Access, Privileged Identity Management, Access Reviews, Entitlement Management, Lifecycle Workflows, and risk-based identity protection remain assessed or design-specified capabilities. This separation protects the technical accuracy and credibility of the repository.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management
