# Joiner-Mover-Leaver Lifecycle

## Purpose

This document records the manual joiner-mover-leaver identity lifecycle exercise completed in the Microsoft Entra IAM and Zero Trust Governance Lab.

The exercise demonstrates how identity attributes and access should change when a worker joins an organization, transfers to another department, and leaves the organization.

Northstar Health Services, Riley Lifecycle, all departments, groups, employee identifiers, and access scenarios in this document are fictional.

## Lifecycle Control Objectives

The exercise was designed to demonstrate the following controls:

- Separate identity creation from access authorization
- Grant access only after a documented business requirement exists
- Use role-based security groups for departmental access
- Preserve identity traceability during employment changes
- Remove obsolete access before or when replacement access is granted
- Avoid simultaneous access to incompatible departments
- Remove access promptly during offboarding
- Revoke active sessions during offboarding
- Disable the account while retaining the identity temporarily for audit evidence
- Confirm that no group, application, administrative-role, or licence access remains

## Lifecycle Identity

| Attribute | Initial Value |
|---|---|
| Display name | Riley Lifecycle |
| User type | Member |
| Job title | Junior Financial Analyst |
| Department | Finance |
| Company | Northstar Health Services |
| Employee ID | NHS-JML-001 |
| Employee type | Employee |
| Usage location | Canada |
| Initial group assignments | None |
| Initial administrative roles | None |
| Initial application assignments | None |
| Initial licences | None |

No real employee or organizational information was used.

# Stage 1: Joiner

## Scenario

Riley Lifecycle joined Northstar Health Services as a Junior Financial Analyst in the Finance department.

## Actions Completed

1. Created Riley Lifecycle as a Microsoft Entra Member identity.
2. Added fictional job and department information.
3. Preserved a unique employee identifier for lifecycle traceability.
4. Created the identity without initial group assignments.
5. Created the identity without administrative roles.
6. Created the identity without application assignments.
7. Created the identity without licences.
8. Added Riley to `GRP-Finance-Users` only after the departmental access requirement was established.
9. Verified Riley's direct membership in the Finance group.

## Joiner Access State

| Access Area | Result |
|---|---|
| Department | Finance |
| Departmental group | `GRP-Finance-Users` |
| Administrative role | None |
| Northstar application access | Not assigned |
| Assigned licence | None |
| Account status | Enabled |

## Joiner Control Rationale

The account was created before access was assigned. This demonstrated that the presence of an identity in the directory does not automatically justify resource access.

Finance access was granted through a departmental security group rather than through an unrelated administrative role or direct application assignment.

## Joiner Evidence

```text
16-joiner-finance-group-assignment.png
```

The sanitized evidence should show Riley Lifecycle as a direct member of `GRP-Finance-Users` alongside the existing fictional Finance user.

# Stage 2: Mover

## Scenario

Riley Lifecycle transferred from Finance to Human Resources and assumed the role of HR Systems Coordinator.

## Attribute Changes

| Attribute | Previous Value | New Value |
|---|---|---|
| Job title | Junior Financial Analyst | HR Systems Coordinator |
| Department | Finance | Human Resources |
| Employee ID | NHS-JML-001 | NHS-JML-001, preserved |
| Employee type | Employee | Employee |
| User type | Member | Member |

## Access Changes

1. Updated Riley's job title to HR Systems Coordinator.
2. Updated Riley's department to Human Resources.
3. Removed Riley from `GRP-Finance-Users`.
4. Verified that obsolete Finance access was no longer required.
5. Added Riley to `GRP-HR-Users`.
6. Verified Riley's direct membership in the HR group.
7. Preserved the employee identifier to maintain lifecycle traceability.
8. Avoided retaining simultaneous Finance and Human Resources group access.
9. Did not assign an administrative role.
10. Did not assign the Northstar application.

## Mover Access State

| Access Area | Before Transfer | After Transfer |
|---|---|---|
| Department | Finance | Human Resources |
| Finance group | Assigned | Removed |
| HR group | Not assigned | Assigned |
| Administrative role | None | None |
| Northstar application access | Not assigned | Not assigned |
| Assigned licence | None | None |
| Account status | Enabled | Enabled |

## Mover Control Rationale

A department transfer requires more than adding new access. Obsolete access must also be removed to prevent access accumulation.

The exercise applied least privilege by replacing Finance membership with Human Resources membership instead of retaining access to both departments.

## Mover Evidence

```text
17-mover-hr-group-assignment.png
```

The sanitized evidence should show Riley Lifecycle as a direct member of `GRP-HR-Users` alongside the existing fictional Human Resources user.

# Stage 3: Leaver

## Scenario

Riley Lifecycle left Northstar Health Services. The identity was offboarded without immediate deletion so that the disabled account and lifecycle state could remain available temporarily for audit evidence.

## Actions Completed

1. Removed Riley from `GRP-HR-Users`.
2. Confirmed that Riley had zero group memberships.
3. Confirmed that Riley had zero application assignments.
4. Confirmed that Riley had zero administrative roles.
5. Confirmed that Riley had zero assigned licences.
6. Revoked active sessions.
7. Disabled the account.
8. Preserved the employee identifier for traceability.
9. Retained the identity temporarily instead of deleting it immediately.

## Final Leaver State

| Control | Result |
|---|---|
| Account status | Disabled |
| Group memberships | 0 |
| Application assignments | 0 |
| Administrative roles | 0 |
| Assigned licences | 0 |
| Active sessions | Revoked |
| Identity deleted | No |
| Audit evidence retained | Yes |

## Leaver Control Rationale

Removing group and application access reduces authorization, while session revocation helps invalidate existing authenticated sessions. Disabling the account prevents future sign-in while preserving the directory object temporarily for investigation, verification, and audit purposes.

Immediate deletion was intentionally avoided in the exercise because deletion would remove the easiest visible evidence of the final disabled state.

## Leaver Evidence

```text
18-leaver-account-disabled.png
```

The sanitized evidence should show:

- Riley Lifecycle
- Account status: Disabled
- Group memberships: 0
- Applications: 0
- Assigned roles: 0
- Assigned licences: 0
- User type: Member

# Lifecycle Summary

| Stage | Identity State | Departmental Access | Account Status | Primary Control Demonstrated |
|---|---|---|---|---|
| Joiner | New employee | Finance access granted after account creation | Enabled | Separate identity creation from authorization |
| Mover | Existing employee transferred to HR | Finance removed and HR granted | Enabled | Remove obsolete access and prevent access accumulation |
| Leaver | Former employee | All group access removed | Disabled | Remove authorization, revoke sessions, and prevent sign-in |

## Zero Trust Alignment

### Verify Explicitly

Access decisions were based on the fictional worker's current department and business role rather than the mere existence of the identity.

### Use Least Privilege

Riley received only the departmental group membership required for the current lifecycle stage. No administrative role, application assignment, or licence was added.

### Assume Breach

The offboarding process removed access, revoked sessions, disabled the account, and retained evidence for review instead of relying on only one control.

## Manual and Automated Lifecycle Governance

The lifecycle exercise was completed manually in Microsoft Entra ID Free.

Microsoft Entra Lifecycle Workflows was assessed as a potential production automation capability, but the portal confirmed that Microsoft Entra ID Governance licensing was required. Therefore, Lifecycle Workflows was documented as a licence-restricted design rather than an implemented control.

A licensed production environment could automate appropriate tasks such as:

- Pre-hire and new-hire workflows
- Account and access notifications
- Group assignment or removal
- Temporary Access Pass issuance where appropriate
- Manager or sponsor tasks
- Session revocation
- Account disabling
- Post-offboarding review

Automation should still include approval, monitoring, exception handling, and human review for sensitive access decisions.

## Recommended Production Improvements

- Integrate the lifecycle process with an authoritative Human Resources source
- Require approved access requests or role mappings
- Assign a manager and access owner
- Use dynamic groups only where attributes are reliable and licensing permits
- Use Privileged Identity Management for privileged roles
- Perform periodic access reviews
- Define service-level targets for access removal
- Monitor failed and delayed offboarding tasks
- Maintain emergency-access procedures
- Export logs to a SIEM where appropriate
- Establish a documented retention and deletion schedule
- Test lifecycle workflows before production deployment

## Screenshot Sanitization Requirements

Before evidence is published, remove or obscure:

- Tenant and object identifiers
- User principal names
- Private tenant domains
- Administrator sign-in addresses
- Browser URLs containing identifiers
- Session and correlation IDs
- External guest email addresses
- Profile images and unrelated desktop information

Fictional display names, group names, role names, account states, and control headings may remain visible.

## Controls Demonstrated

- Workforce identity administration
- Role-based access control
- Least privilege
- Joiner access provisioning
- Mover access replacement
- Leaver access removal
- Session revocation
- Account disabling
- Identity traceability
- Audit-evidence retention
- Licensing-aware governance
- Zero Trust lifecycle design

## Conclusion

The Riley Lifecycle exercise demonstrates that identity governance is a continuous process rather than a one-time account-creation task. Access was granted when required, changed when the business role changed, and removed when the relationship ended.

The completed lifecycle shows how disciplined identity administration can reduce access accumulation, orphaned accounts, inappropriate application access, and offboarding risk across any digitally enabled organization.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management
