# Emergency Access Runbook

## Purpose

This runbook defines the emergency administrative access design for the Microsoft Entra IAM and Zero Trust Governance Lab. It provides a controlled process for restoring administrative access when normal administrator accounts or authentication methods are unavailable.

Northstar Health Services, all identities, and all recovery scenarios in this document are fictional. This document is an educational portfolio artefact and must be adapted, approved, tested, and monitored before use in a production environment.

## Objectives

The emergency-access process is designed to:

- Reduce the risk of permanent tenant lockout
- Preserve administrative access during authentication or service failures
- Separate emergency identities from daily administrator accounts
- Restrict emergency access to genuine recovery situations
- Require authorization, monitoring, documentation, and post-use review
- Prevent emergency accounts from becoming routine privileged accounts
- Align recovery procedures with least privilege and Zero Trust principles

## Emergency Scenarios

Emergency access may be required when:

- The normal Global Administrator cannot complete multifactor authentication
- The administrator's registered authentication device is lost or unavailable
- A Conditional Access policy blocks legitimate administrators
- An authentication-method policy is configured incorrectly
- A federated identity provider or authentication service becomes unavailable
- Privileged Identity Management activation cannot be completed
- Required PIM approvers are unavailable
- A directory role was removed or changed incorrectly
- A service disruption prevents normal administrative sign-in
- A security incident requires a separate trusted recovery identity

Emergency access must not be used merely for convenience, routine administration, testing, or bypassing approved controls.

## Production Design Recommendation

A production environment should maintain two dedicated cloud-only emergency-access accounts.

Proposed display names:

```text
EA-GlobalAdmin-01
EA-GlobalAdmin-02
```

Actual usernames, passwords, authentication details, tenant identifiers, recovery codes, and storage locations must not be included in public documentation.

### Why Two Accounts Are Recommended

Two accounts reduce dependence on a single recovery identity. One account could become unavailable because of credential loss, accidental deletion, misconfiguration, compromise, or service-specific failure.

The two accounts should be protected independently and should not share credentials, recovery mechanisms, or operational dependencies unnecessarily.

## Required Account Characteristics

Each emergency-access account should:

- Be a cloud-only Microsoft Entra identity
- Be dedicated exclusively to emergency recovery
- Be separate from normal administrator accounts
- Have the minimum role required for tenant recovery
- Use a long, unique, securely generated credential
- Use credentials that are not reused by any other account
- Be excluded only from policies that could cause total administrative lockout
- Remain included in monitoring, logging, and alerting controls
- Have no mailbox, collaboration, or routine productivity use
- Have no unnecessary group or application assignments
- Have no licence unless a documented recovery requirement justifies one
- Be tested periodically using an approved and monitored process
- Have credentials rotated after actual emergency use
- Be reviewed regularly by authorized security and identity owners

## Role Assignment

In a production Microsoft Entra environment, emergency-access accounts may require the Global Administrator role to restore tenant access during a severe lockout.

This highly privileged role must be justified by the recovery requirement and protected with compensating controls, including:

- Dedicated account purpose
- Restricted credential access
- Continuous monitoring
- Sign-in alerting
- Periodic testing
- Post-use credential rotation
- Formal review after every use

Emergency accounts must not receive additional roles, licences, applications, or group memberships unless those assignments are essential to the documented recovery purpose.

## Authentication Design

Emergency-access authentication should avoid a single dependency shared with normal administrator accounts.

The production design should:

- Use strong credentials stored through an approved secure process
- Avoid depending exclusively on the same device or authentication method used by daily administrators
- Consider phishing-resistant authentication where operationally appropriate
- Avoid weak or shared recovery information
- Prevent credentials from being stored in email, chat, source code, public documentation, or ordinary notes
- Maintain access to the recovery method during service disruptions
- Test authentication without exposing credentials to unauthorized personnel

The precise authentication method must reflect current Microsoft guidance, tenant capabilities, licensing, organizational risk, and operational continuity requirements.

## Conditional Access Treatment

Emergency-access accounts may require carefully controlled exclusions from Conditional Access policies that could cause total tenant lockout.

Exclusions must be:

- Limited to the specific emergency identities
- Documented with a business and security justification
- Reviewed whenever policies change
- Monitored for every sign-in
- Protected by compensating controls
- Tested before restrictive policies are enforced broadly

Emergency accounts should not be excluded from monitoring, audit logging, or alerting.

A Conditional Access exclusion is not a reason to trust the account automatically. Every use remains exceptional and must be reviewed.

## Credential Storage

Emergency credentials should be stored through an organization-approved secure mechanism.

The storage process should:

- Limit access to specifically authorized custodians
- Require documented retrieval
- Prevent casual or routine access
- Maintain a record of credential access where possible
- Protect against loss, theft, unauthorized copying, and environmental failure
- Maintain an independent recovery path
- Support immediate rotation after emergency use

This repository must never contain:

- Emergency usernames
- Passwords
- Recovery codes
- Authentication seeds
- QR codes
- Private keys
- Client secrets
- Tokens
- Screenshots of credentials
- Links to credential-storage locations

## Monitoring and Alerting

Every emergency-account sign-in or attempted sign-in should be treated as a high-priority event.

Monitoring should identify:

- Successful sign-ins
- Failed sign-ins
- Sign-in location and device context
- Authentication methods used
- Role or policy changes
- Group or application assignments
- Session creation and revocation
- Changes to account properties
- Credential or authentication-method changes

Alerts should be routed to authorized security and identity personnel who are independent of the person using the emergency account where practical.

Any unexpected activity should trigger an immediate investigation.

## Authorization to Use Emergency Access

Emergency access should be used only when standard administrative access is unavailable or unsafe.

Where circumstances permit, authorization should be obtained from:

- The designated identity or security owner
- An incident commander
- An authorized technology leader
- Another approved emergency-access custodian

During a severe outage, prior approval may be impractical. In that case, the person using emergency access must document the reason, actions, and outcome as soon as operationally possible.

## Emergency Use Procedure

1. Confirm that normal authorized administrator access is unavailable or unsafe.
2. Verify that the situation meets the emergency-access criteria.
3. Open an incident or emergency change record where possible.
4. Obtain authorization according to the organization's escalation procedure.
5. Select the appropriate emergency account.
6. Retrieve the credential through the approved secure process.
7. Sign in from a trusted administrative device and network where available.
8. Confirm that the emergency identity is the account currently in use.
9. Perform only the actions required to restore normal authorized access.
10. Avoid unrelated configuration changes.
11. Record all changes, affected resources, timestamps, and outcomes.
12. Restore normal administrator access.
13. Verify that standard administrators can sign in and complete required tasks.
14. Review audit and sign-in logs.
15. Revoke active sessions for the emergency account.
16. Rotate the emergency credential.
17. Confirm that the account returned to its approved baseline state.
18. Update and close the incident or emergency change record.
19. Conduct a post-use security review.

## Permitted Emergency Actions

Depending on the incident, permitted actions may include:

- Correcting a blocking Conditional Access policy
- Restoring an authorized administrator role
- Recovering access after authentication-method failure
- Repairing a tenant-wide identity configuration error
- Restoring access needed to investigate a security incident
- Creating a temporary controlled recovery path
- Revoking compromised administrator sessions

Actions must remain limited to the recovery objective.

## Prohibited Uses

Emergency accounts must not be used for:

- Daily administration
- Convenience access
- Routine password resets
- Ordinary user or group management
- Application development
- Email or collaboration
- Testing without an approved procedure
- Avoiding Privileged Identity Management
- Avoiding approval or change-management requirements
- Bypassing access restrictions for non-emergency reasons
- Sharing credentials among administrators

## Post-Use Procedure

After every actual emergency use:

1. Confirm that normal administrative access has been restored.
2. Revoke the emergency account's active sessions.
3. Rotate the emergency credential immediately.
4. Verify the account's administrative role and baseline properties.
5. Remove any temporary group, application, or licence assignment.
6. Review sign-in and audit logs.
7. Identify every action performed using the account.
8. Confirm that no unauthorized persistence was created.
9. Investigate unexpected sign-ins or modifications.
10. Update the incident and change records.
11. Document lessons learned and corrective actions.
12. Review whether policy, training, testing, or architecture changes are required.

## Periodic Validation Procedure

Emergency-access readiness should be tested on an approved schedule.

A quarterly validation process may include:

1. Confirm both accounts are enabled.
2. Confirm the required administrator role remains assigned.
3. Confirm no unnecessary roles, groups, applications, or licences are assigned.
4. Confirm credentials remain retrievable through the approved secure process.
5. Perform a controlled sign-in test where authorized.
6. Confirm alerts are generated and received.
7. Review sign-in and audit history for unexpected activity.
8. Revoke the test session.
9. Record the validation result.
10. Remediate identified weaknesses.

Production teams should determine the validation frequency based on risk, policy, regulation, and operational requirements.

## Account Review Checklist

For each emergency account, verify:

- [ ] Account remains enabled
- [ ] Account remains cloud-only
- [ ] Account is not used for daily administration
- [ ] Global Administrator assignment remains justified
- [ ] No unnecessary group memberships exist
- [ ] No unnecessary application assignments exist
- [ ] No unnecessary licence is assigned
- [ ] Credential storage remains secure and available
- [ ] Conditional Access treatment remains documented
- [ ] Monitoring and alerting remain operational
- [ ] No unauthorized sign-in has occurred
- [ ] Previous tests and uses were documented
- [ ] Credentials were rotated after actual emergency use
- [ ] Account owners and custodians remain current

## Incident Record Requirements

An emergency-access incident record should include:

- Date and time
- Reason emergency access was required
- Identity used
- Person authorized to use the account
- Approver or incident commander
- Device and location used
- Actions performed
- Resources affected
- Policies or roles changed
- Time normal access was restored
- Session-revocation confirmation
- Credential-rotation confirmation
- Audit-review result
- Lessons learned
- Corrective actions and owners

Sensitive credentials or authentication details must not be recorded in the incident narrative.

## Zero Trust Alignment

### Verify Explicitly

Emergency access requires validation of the incident, the user, the recovery objective, and the authorization to proceed.

### Use Least Privilege

The account is used only for the minimum actions required to recover normal operations. Temporary access introduced during recovery must be removed promptly.

### Assume Breach

Every emergency sign-in is monitored, investigated, documented, and followed by session revocation, credential rotation, and audit review.

## Separation of Duties

Where organizational size permits:

- A credential custodian should not be the only incident approver.
- The emergency user should not be the sole reviewer of the resulting audit activity.
- Changes should be reviewed by an independent identity or security owner.
- Credential rotation should follow a controlled process.

Smaller organizations may require alternative compensating controls, but those controls should be documented explicitly.

## Laboratory Implementation Decision

The personal lab used one project administrator to perform the configured exercises.

Two additional permanent Global Administrator accounts were not created because:

- The lab did not enforce production Conditional Access policies.
- Additional standing privileged accounts would increase the attack surface.
- The personal environment did not have a separate operational team or independent credential custodians.
- The recovery control could be demonstrated responsibly through a production design and runbook.
- Public evidence must never expose emergency credentials or authentication details.

Therefore, this phase is classified as:

```text
Production design documented
Live emergency accounts not created
```

The repository must not claim that two break-glass accounts were implemented or tested.

## Configured Versus Design-Specified Status

| Control | Project Status |
|---|---|
| Emergency-access risk analysis | Completed |
| Two-account production recommendation | Documented |
| Emergency-use procedure | Documented |
| Monitoring and alerting requirements | Documented |
| Credential rotation procedure | Documented |
| Periodic validation procedure | Documented |
| Post-use security review | Documented |
| Live emergency accounts | Not created |
| Conditional Access exclusions | Not configured |
| Emergency sign-in alerts | Not configured |
| Production credential vault | Not configured |

## Evidence Treatment

This runbook is the evidence for the emergency-access design.

No screenshot should show:

- Emergency credentials
- Authentication methods
- Recovery information
- QR codes
- Tokens
- Private keys
- Tenant identifiers
- Administrator sign-in addresses
- Credential-storage locations

## Safe Portfolio Wording

Use:

```text
Developed an emergency-access and account-recovery runbook covering cloud-only recovery identities, controlled authorization, secure credential handling, monitoring, periodic testing, session revocation, credential rotation, and post-use audit review.
```

Do not use:

```text
Implemented and tested two production break-glass accounts.
```

The second statement would be inaccurate for this lab.

## Review and Maintenance

This runbook should be reviewed:

- At least annually
- After every emergency use
- After a Conditional Access change
- After an administrator-role change
- After an authentication-method change
- After a security incident
- After a major Microsoft Entra licensing or service change
- When account custodians or approvers change

## Conclusion

Emergency access is a resilience control, not a shortcut around identity governance. A strong design balances availability with strict authorization, monitoring, credential protection, periodic validation, and post-use accountability.

The lab intentionally documented the production control without creating additional unnecessary standing Global Administrator accounts. This approach demonstrates recovery planning while maintaining the technical accuracy and security posture of the personal environment.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management
