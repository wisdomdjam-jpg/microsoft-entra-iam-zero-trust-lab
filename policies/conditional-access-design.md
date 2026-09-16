# Conditional Access Design

## Purpose

This document defines the proposed Conditional Access policy architecture for the Northstar Health Services Microsoft Entra IAM and Zero Trust Governance Lab.

The policies in this document were designed but not deployed because the personal laboratory uses Microsoft Entra ID Free. The Microsoft Entra admin center confirmed that Conditional Access requires Microsoft Entra ID P1 or P2 licensing.

The designs are intended to demonstrate safe policy planning, least privilege, staged deployment, administrative lockout prevention, and Zero Trust alignment.

## Design Principles

The proposed Conditional Access architecture follows these principles:

- Verify explicitly before granting access.
- Apply controls according to identity, role, application, device, location, and risk context.
- Use the least privilege necessary for each business function.
- Begin new policies in report-only mode.
- Test policies with controlled identities before broad enforcement.
- Exclude only dedicated emergency-access accounts where necessary to prevent total administrative lockout.
- Avoid broad exclusions for ordinary administrators or service accounts.
- Monitor policy results before enabling enforcement.
- Document every policy change, owner, exception, and business justification.
- Review policies periodically and after major organizational or technical changes.

## Scope and Assumptions

This design applies to the fictional Northstar Health Services tenant and the following identity populations:

- Clinical Operations
- Finance
- Human Resources
- Information Technology
- Security Operations
- External Vendors
- Administrative identities
- B2B guest identities

The design assumes that a licensed production environment would include:

- Microsoft Entra ID P1 or P2
- Two dedicated cloud-only emergency-access accounts
- Tested multifactor authentication methods
- Centralized monitoring and alerting
- A documented change-management process
- Approved test users and pilot groups

## Policy Inventory

The proposed policy set includes:

1. `CA-001-Require-MFA-for-Administrators`
2. `CA-002-Block-Legacy-Authentication`
3. `CA-003-Require-MFA-Northstar-Portal`

These policies remained design-specified and were not activated in the Microsoft Entra ID Free lab.

---

# CA-001: Require MFA for Administrators

## Policy Name

```text
CA-001-Require-MFA-for-Administrators
```

## Objective

Require multifactor authentication when identities with Microsoft Entra administrative roles access organizational resources.

## Risk Addressed

Administrative accounts have elevated permissions and are attractive targets for phishing, password spraying, credential theft, and session compromise. A password-only administrative sign-in could expose the entire tenant.

## Assignments

### Included Identities

Include directory roles with administrative privileges, including roles such as:

- Global Administrator
- Privileged Role Administrator
- Conditional Access Administrator
- Application Administrator
- Cloud Application Administrator
- Helpdesk Administrator
- Security Administrator
- Security Reader, where the organization requires MFA for security visibility

The final production role list should be reviewed against the organization's actual administrative model.

### Excluded Identities

Exclude only the two approved emergency-access accounts:

```text
EA-GlobalAdmin-01
EA-GlobalAdmin-02
```

The emergency identities are production design recommendations and were not created in the personal lab.

### Target Resources

```text
All resources
```

## Conditions

No location or device exclusion should be used during the initial design unless a documented business requirement exists.

## Grant Controls

```text
Grant access
Require multifactor authentication
```

Where supported and operationally appropriate, a production organization could later evaluate phishing-resistant authentication strength requirements.

## Session Controls

Use default session controls during the pilot. Additional controls should be introduced only after user-impact analysis and testing.

## Deployment Plan

1. Confirm two emergency-access identities are operational.
2. Confirm administrators have working authentication methods.
3. Create the policy in report-only mode.
4. Review sign-in results for at least one normal business cycle.
5. Test with a controlled administrator account.
6. Investigate failures and unexpected exclusions.
7. Obtain change approval.
8. Enable the policy for a pilot group or selected roles.
9. Monitor closely after activation.
10. Expand only after successful validation.

## Expected Result

Administrative identities must complete MFA before accessing protected resources, while approved emergency-access identities remain available for tenant recovery.

---

# CA-002: Block Legacy Authentication

## Policy Name

```text
CA-002-Block-Legacy-Authentication
```

## Objective

Block legacy authentication protocols that do not support modern authentication controls such as multifactor authentication.

## Risk Addressed

Legacy authentication can allow password-based access without modern authentication protections. Attackers may deliberately target older protocols to bypass stronger sign-in controls.

## Assignments

### Included Identities

```text
All users
```

This scope includes workforce identities, administrators, contractors, and B2B guests.

### Excluded Identities

Exclude only approved emergency-access accounts where necessary for recovery planning.

Any additional exclusion must have:

- A documented owner
- A specific technical requirement
- A defined expiration date
- Compensating security controls
- Periodic review

### Target Resources

```text
All resources
```

## Conditions

### Client Applications

Target legacy authentication clients, such as older mail and other protocols that do not use modern authentication.

The precise client-app selections should be validated against the current Microsoft Entra portal options at deployment time.

## Access Controls

```text
Block access
```

## Deployment Plan

1. Review sign-in logs for legacy authentication activity.
2. Identify affected users, applications, devices, and service dependencies.
3. Upgrade or replace incompatible clients.
4. Create the policy in report-only mode.
5. Monitor the projected effect.
6. Resolve remaining business dependencies.
7. Pilot the block with controlled identities.
8. Enable the policy after approval.
9. Monitor failed sign-ins and support requests.
10. Remove temporary exceptions when no longer required.

## Expected Result

Legacy authentication attempts are blocked, reducing the opportunity to bypass modern authentication controls.

---

# CA-003: Require MFA for the Northstar Portal

## Policy Name

```text
CA-003-Require-MFA-Northstar-Portal
```

## Objective

Require multifactor authentication when approved users access the fictional Northstar Patient Records Portal.

## Risk Addressed

The fictional application represents a business system containing sensitive organizational information. Password-only access could increase the risk of unauthorized entry following credential compromise.

## Assignments

### Included Identities

Include the identities approved to access the application:

- Avery Clinical
- Casey IT Support

In a licensed production environment, group-based application access should be preferred where supported and appropriately governed.

### Excluded Identities

Exclude only approved emergency-access accounts if the application is included in an all-resource policy and the exclusion is required for recovery.

Do not exclude:

- Finance users
- Human Resources users
- Security Readers merely because they hold a security role
- Internal contractors without an approved application requirement
- B2B guests without explicit business authorization

### Target Resource

```text
Northstar Patient Records Portal
```

## Conditions

The initial design does not require location or device conditions. Those controls should be evaluated separately after validating the basic MFA policy.

## Grant Controls

```text
Grant access
Require multifactor authentication
```

## Deployment Plan

1. Verify that assignment is required for the enterprise application.
2. Confirm the authorized-user list.
3. Confirm each authorized user has a working authentication method.
4. Create the policy in report-only mode.
5. Test successful access with an authorized user.
6. Test denied access with an unauthorized user.
7. Review sign-in logs and report-only results.
8. Resolve authentication or application issues.
9. Obtain approval.
10. Enable the policy and monitor access.

## Expected Result

Only explicitly assigned users can access the Northstar Patient Records Portal, and those users must complete MFA when signing in.

---

## Interaction Between Policies

The three proposed policies are designed to work together:

- `CA-001` protects privileged administrative access.
- `CA-002` blocks legacy authentication paths that could bypass stronger controls.
- `CA-003` protects access to the Northstar Patient Records Portal.

Before enabling the policies, administrators should evaluate combined policy effects. A user can be affected by multiple Conditional Access policies during one sign-in, and the combined controls must be understood before enforcement.

## Emergency-Access Safeguards

Before any Conditional Access enforcement, Northstar Health Services should:

- Maintain two dedicated cloud-only emergency-access identities.
- Protect credentials through an approved secure process.
- Monitor every emergency-account sign-in.
- Test emergency access periodically.
- Avoid routine use of emergency identities.
- Review exclusions after every policy change.
- Rotate credentials after actual emergency use.

See:

```text
documentation/emergency-access-runbook.md
```

## Testing and Validation Checklist

Before enabling each policy:

- [ ] Business owner identified
- [ ] Technical owner identified
- [ ] Policy purpose documented
- [ ] Included identities reviewed
- [ ] Excluded identities reviewed
- [ ] Emergency-access accounts validated
- [ ] Authentication methods verified
- [ ] Test identity selected
- [ ] Report-only mode enabled
- [ ] Sign-in results reviewed
- [ ] Unexpected failures investigated
- [ ] User communication completed
- [ ] Help-desk support prepared
- [ ] Change approval obtained
- [ ] Rollback approach documented
- [ ] Post-enforcement monitoring scheduled

## Monitoring Recommendations

A licensed production environment should monitor:

- Conditional Access policy results
- MFA failures
- Legacy authentication attempts
- Administrator sign-ins
- Northstar Portal sign-ins
- Emergency-access-account usage
- Repeated access denials
- Sign-ins from unexpected locations or devices
- Policy changes and exclusions

Monitoring data should be reviewed by authorized security personnel and retained according to organizational requirements.

## Rollback Considerations

If a policy causes unexpected access disruption:

1. Use an authorized administrator or emergency-access identity.
2. Confirm the affected policy and sign-in result.
3. Return the policy to report-only mode or disable it temporarily.
4. Restore legitimate access.
5. investigate the root cause.
6. Update the policy scope, condition, or exception.
7. Retest before re-enabling.
8. Document the incident and corrective action.

Rollback should not become a permanent bypass. Every exception should be reviewed and removed when no longer required.

## Lab Implementation Status

### Configured and Validated

- Microsoft Authenticator enabled for selected IT Support and Security Reader groups
- Explicit assignment required for the Northstar Patient Records Portal
- Direct application access assigned to approved users
- B2B guest identity excluded from direct application access
- Least-privilege administrative roles assigned to selected fictional identities
- Audit logging reviewed

### Design-Specified Only

- Conditional Access administrator MFA policy
- Legacy authentication blocking policy
- Northstar Portal MFA policy
- Report-only testing
- Emergency-account exclusions
- Conditional Access sign-in-result analysis

The design-specified controls were not represented as deployed.

## Portfolio Statement

The following wording is accurate:

> Assessed Microsoft Entra Conditional Access in an Entra ID Free tenant and developed report-only deployment specifications for administrator MFA, legacy-authentication blocking, and application-specific MFA. The policies remained design-specified because Conditional Access requires Microsoft Entra ID P1 or P2 licensing.

Avoid wording that claims Conditional Access was implemented or enforced in the lab.

## Zero Trust Alignment

This design supports Zero Trust by:

- Verifying explicitly through context-aware access decisions
- Requiring stronger authentication for privileged and sensitive access
- Blocking authentication methods that cannot satisfy modern controls
- Limiting access to approved identities and resources
- Protecting emergency recovery paths
- Monitoring policy outcomes and changes
- Treating every exception as a controlled risk decision

## Disclaimer

This document is an educational Conditional Access design for a fictional organization. It is not a production deployment, legal requirement, medical-system configuration, or security guarantee.

Any production implementation should be tested, approved, monitored, and adapted to the organization's licensing, identity architecture, applications, devices, business requirements, and risk tolerance.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management
