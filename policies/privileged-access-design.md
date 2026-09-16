# Privileged Access Design

## Purpose

This document defines the proposed privileged-access governance model for the fictional Northstar Health Services Microsoft Entra IAM and Zero Trust Governance Lab.

The design uses Microsoft Entra Privileged Identity Management (PIM) concepts to reduce standing administrative access and provide controlled, time-limited elevation. PIM was assessed but not configured in the personal lab because the tenant uses Microsoft Entra ID Free. A production implementation would require Microsoft Entra ID P2 or Microsoft Entra ID Governance licensing.

## Design Status

### Implemented and Validated in the Free Tenant

- Helpdesk Administrator assigned to the designated IT support identity
- Security Reader assigned to the designated security identity
- Least-privilege role selection based on job responsibilities
- Administrative assignments reviewed in Microsoft Entra
- Audit logs reviewed for identity and access activities
- Microsoft Authenticator targeted to selected security-sensitive groups

### Assessed and Design-Specified Only

- Privileged Identity Management
- Eligible role assignments
- Just-in-time role activation
- Time-bound privileged access
- Activation approval workflows
- MFA at role activation
- Activation justification
- Privileged-role access reviews
- PIM alerts, notifications, and audit history

No PIM control is represented as deployed or enforced in this lab.

## Objectives

The proposed model is intended to:

- Minimize permanent administrative access
- Apply least privilege to administrative duties
- Provide privileged access only when required
- Require explicit activation before privileged work
- Limit the duration of elevated access
- Record who activated a role, when, and why
- Require stronger verification for sensitive roles
- Detect excessive, unusual, or unnecessary privilege
- Preserve a controlled emergency-recovery path
- Support periodic review and removal of obsolete access

## Privileged-Access Principles

Northstar Health Services should apply the following principles:

1. Use eligible assignments instead of permanent active assignments wherever operationally practical.
2. Assign the least-privileged role capable of completing the approved task.
3. Require MFA and a business justification for activation.
4. Require approval for high-impact roles.
5. Keep activation periods as short as reasonably possible.
6. Separate routine administration from emergency access.
7. Review eligible and active assignments periodically.
8. Monitor activations, denials, changes, and unusual privileged activity.
9. Remove access promptly when responsibilities change or employment ends.
10. Document exceptions, owners, business reasons, and expiration dates.

## Assignment Types

### Eligible Assignment

An eligible assignment gives an approved identity the ability to request temporary activation of a role. The identity does not hold the role continuously.

Eligible assignments should be the default for:

- Helpdesk Administrator
- Security Reader
- Security Administrator
- User Administrator
- Groups Administrator
- Application Administrator
- Cloud Application Administrator
- Conditional Access Administrator
- Privileged Role Administrator
- Global Administrator

Eligibility does not mean that every listed role should be assigned. Each role must have a valid job requirement and an accountable owner.

### Active Assignment

An active assignment gives the identity immediate access to the role without first completing an activation process.

Permanent active assignments should be rare and supported by:

- A documented operational requirement
- Risk acceptance by the appropriate owner
- Compensating security controls
- Defined review frequency
- Monitoring and alerting
- A planned expiration date where possible

### Time-Bound Assignment

Both eligible and active assignments should have start and end dates when the need is temporary, such as project work, short-term support, or contractor access.

## Proposed Role Model

### Helpdesk Administrator

**Proposed assignment:** Eligible  
**Intended population:** Approved IT support personnel  
**Maximum activation duration:** 4 hours  
**MFA required:** Yes  
**Justification required:** Yes  
**Approval required:** No for routine support, subject to monitoring  
**Review frequency:** Quarterly

The role should be activated only for approved support activities such as limited password-reset and user-support tasks within the role's permitted scope.

### Security Reader

**Proposed assignment:** Eligible  
**Intended population:** Approved security monitoring personnel  
**Maximum activation duration:** 8 hours  
**MFA required:** Yes  
**Justification required:** Yes  
**Approval required:** No for routine monitoring  
**Review frequency:** Quarterly

Because Security Reader is read-only, a longer activation window may be appropriate for a monitoring shift. The organization should reduce the duration if operational testing shows that a shorter period is sufficient.

### Security Administrator

**Proposed assignment:** Eligible  
**Maximum activation duration:** 2 hours  
**MFA required:** Yes  
**Justification required:** Yes  
**Approval required:** Yes  
**Review frequency:** Monthly

Activation should be limited to approved security configuration, investigation, or response tasks.

### Application Administrator or Cloud Application Administrator

**Proposed assignment:** Eligible  
**Maximum activation duration:** 2 hours  
**MFA required:** Yes  
**Justification required:** Yes  
**Approval required:** Yes  
**Review frequency:** Monthly

The narrower role should be selected according to the required application-management task. Global Administrator should not be used for routine application administration.

### Conditional Access Administrator

**Proposed assignment:** Eligible  
**Maximum activation duration:** 1 hour  
**MFA required:** Yes  
**Justification required:** Yes  
**Approval required:** Yes  
**Review frequency:** Monthly

Conditional Access changes should also require change-management approval, report-only testing, emergency-access validation, and a rollback plan.

### Privileged Role Administrator

**Proposed assignment:** Eligible  
**Maximum activation duration:** 1 hour  
**MFA required:** Yes  
**Justification required:** Yes  
**Approval required:** Yes  
**Review frequency:** Monthly

This role should be tightly restricted because it can manage role assignments and PIM settings.

### Global Administrator

**Proposed assignment:** Eligible for a very small number of authorized administrators  
**Maximum activation duration:** 1 hour  
**MFA required:** Yes  
**Justification required:** Yes  
**Approval required:** Yes  
**Review frequency:** Monthly

Global Administrator should be used only when a narrower role cannot complete the approved task. Routine work must use lower-privilege roles.

## Activation Workflow

A standard activation should follow this sequence:

1. The authorized user opens PIM and selects an eligible role.
2. The user states a specific business justification.
3. The user requests only the time needed for the task.
4. MFA is completed.
5. High-impact roles are routed to an authorized approver.
6. The approver verifies the task, scope, duration, and change record.
7. PIM activates the role for the approved period.
8. The user completes only the authorized work.
9. The user manually deactivates the role when work finishes, or the assignment expires automatically.
10. Logs and alerts are reviewed according to the role's risk level.

## Justification Standard

Justifications should clearly describe the business task. Acceptable examples include:

```text
Reset locked Finance user authentication methods under service ticket INC-1042.
```

```text
Review sign-in and audit activity for approved investigation SEC-2026-018.
```

```text
Update Northstar Portal enterprise-application assignment under change CHG-2031.
```

Avoid vague wording such as:

```text
Admin work
```

```text
Testing
```

```text
Need access
```

## Approval Design

Approval should be required for roles capable of changing tenant-wide security, applications, access policy, or privileged assignments.

Approvers should:

- Be independent from the requester when practical
- Understand the requested role and task
- Confirm a ticket or approved change exists
- Validate the requested duration
- Reject vague or excessive requests
- Avoid approving their own activation requests
- Maintain backup approvers to prevent operational delay

Approval does not replace logging, monitoring, or post-activation review.

## Authentication Requirements

A production design should require MFA for privileged-role activation. For the most sensitive roles, Northstar Health Services should evaluate phishing-resistant authentication methods and authentication strengths supported by its licensing, devices, and operating model.

Authentication methods should be registered and tested before a user receives an eligible role assignment.

## Emergency-Access Exclusions

Two dedicated cloud-only emergency-access accounts are recommended for production recovery. These identities should not be managed as routine PIM-eligible administrator accounts if doing so could prevent recovery during a PIM, MFA, or Conditional Access failure.

Emergency identities must:

- Be used only for genuine recovery scenarios
- Have securely protected credentials
- Be monitored for every sign-in
- Be tested periodically
- Be excluded only from controls that could block emergency recovery
- Have credentials rotated after use
- Be reviewed after every activation or test

See:

```text
documentation/emergency-access-runbook.md
```

The emergency identities are design recommendations and were not created in the personal lab.

## Monitoring and Alerting

A licensed production environment should monitor:

- Role activations and deactivations
- Activation failures and denials
- Activations outside normal working patterns
- Repeated or unusually long activation requests
- Privileged-role assignment changes
- Permanent active assignments
- Expiring eligible assignments
- Global Administrator and Privileged Role Administrator activity
- Changes to PIM role settings
- Emergency-access-account sign-ins
- Privileged activity without a corresponding ticket or change record

Alerts should be routed to an authorized security or identity-governance team.

## Access Reviews

Privileged assignments should be reviewed on a risk-based schedule:

- Global Administrator: monthly
- Privileged Role Administrator: monthly
- Conditional Access Administrator: monthly
- Security Administrator: monthly
- Application Administrator: monthly
- Cloud Application Administrator: monthly
- Helpdesk Administrator: quarterly
- Security Reader: quarterly

Each review should confirm:

- The user still performs the relevant duties
- The selected role remains the least-privileged option
- Eligibility is still required
- The assignment has an appropriate expiration date
- Activation activity is consistent with the user's responsibilities
- Any exception remains justified

Obsolete or unsupported assignments should be removed promptly.

## Joiner-Mover-Leaver Integration

### Joiner

A new user should not receive privileged access by default. The manager and role owner must approve any eligible assignment after verifying training, responsibilities, and authentication readiness.

### Mover

When a user changes duties, previous privileged eligibility should be reviewed and removed before or when new access is approved. Administrative permissions should not accumulate across roles.

### Leaver

When a privileged user leaves the organization:

1. Block sign-in according to the offboarding process.
2. Revoke active sessions.
3. Remove eligible and active role assignments.
4. Cancel pending activation or approval requests.
5. Transfer operational ownership where required.
6. Review recent privileged activity.
7. Document completion.

See:

```text
documentation/joiner-mover-leaver.md
```

## Deployment Plan

A production implementation should follow a staged approach:

1. Confirm licensing and administrative ownership.
2. Inventory existing privileged-role assignments.
3. Identify permanent active assignments and their business reasons.
4. Establish and test emergency-access accounts.
5. Define activation settings for each role.
6. Select a small pilot group.
7. Convert suitable active assignments to eligible assignments.
8. Test MFA, justification, approval, activation, expiration, and notifications.
9. Review audit and alert behavior.
10. Resolve operational issues.
11. Expand to additional roles in controlled phases.
12. Schedule recurring assignment reviews.
13. Document exceptions and remove them when no longer required.

## Validation Checklist

- [ ] Required licensing confirmed
- [ ] Privileged-role inventory completed
- [ ] Role owners identified
- [ ] Least-privilege role selection validated
- [ ] Emergency-access accounts tested
- [ ] Eligible assignments configured
- [ ] Permanent assignments justified or removed
- [ ] Assignment expiration dates defined
- [ ] MFA required for activation
- [ ] Justification required
- [ ] Approval configured for high-impact roles
- [ ] Activation duration limited
- [ ] Notifications tested
- [ ] Audit records reviewed
- [ ] Monitoring ownership assigned
- [ ] Access-review schedule established
- [ ] Joiner-mover-leaver process integrated
- [ ] Rollback and support procedures documented

## Risks and Mitigations

### Excessive Standing Privilege

**Risk:** Administrative access remains continuously available to a compromised or misused identity.  
**Mitigation:** Convert appropriate assignments from permanent active to eligible and time-bound.

### Overly Broad Role Selection

**Risk:** A user receives more permissions than the approved task requires.  
**Mitigation:** Select the narrowest functional role and review role usage.

### Approval Fatigue

**Risk:** Approvers accept requests without meaningful review.  
**Mitigation:** Require specific justifications, limit approver groups, monitor approval behavior, and audit sampled requests.

### Excessive Activation Duration

**Risk:** Privilege remains active after the task is complete.  
**Mitigation:** Define short maximum durations and require manual deactivation when work ends early.

### Emergency Lockout

**Risk:** PIM, MFA, or access-policy failure prevents all administrators from recovering the tenant.  
**Mitigation:** Maintain and test two protected emergency-access identities.

### Privilege Accumulation

**Risk:** Users retain assignments after changing teams or responsibilities.  
**Mitigation:** Integrate PIM assignments with mover and periodic-review procedures.

## Zero Trust Alignment

The design supports Zero Trust by:

- Verifying privileged users at activation time
- Granting elevated access only when required
- Restricting privilege to the shortest practical period
- Applying least-privileged role selection
- Recording justification and approval
- Monitoring privileged activity
- Reviewing and removing obsolete access
- Maintaining a controlled recovery path
- Assuming privileged identities may be targeted or compromised

## Accurate Portfolio Wording

Use wording such as:

> Assessed Microsoft Entra Privileged Identity Management and developed a licensing-aware privileged-access design covering eligible assignments, just-in-time activation, MFA, justification, approvals, time-bound access, monitoring, access reviews, and emergency-account safeguards. PIM remained design-specified because the personal lab used Microsoft Entra ID Free.

Avoid language claiming that PIM, eligible assignments, approval workflows, or automated access reviews were deployed in the lab.

## Disclaimer

This document is an educational privileged-access design for a fictional organization. It is not a production deployment, security guarantee, or substitute for organizational risk assessment and change approval.

Any production implementation should be adapted to current Microsoft licensing, official product documentation, tenant architecture, regulatory obligations, operational requirements, and risk tolerance.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management
