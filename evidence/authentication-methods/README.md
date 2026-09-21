# Microsoft Entra Authentication-Method Evidence

This folder contains sanitized evidence of authentication-method configuration implemented in the fictional Microsoft Entra IAM and Zero Trust Governance Lab.

## Microsoft Authenticator Target Groups

**Evidence ID:** `EVD-2026-AUTH-001`  
**Authentication method:** Microsoft Authenticator  
**Configuration state:** Enabled  
**Targeting:** Selected groups  
**Status:** Implemented and Validated  

The sanitized screenshot shows Microsoft Authenticator enabled and targeted to:

```text
GRP-IT-Support
GRP-Security-Readers
```

For both targeted groups, the visible configuration is:

```text
Object type: Group
Registration: Optional
Authentication mode: Any
```

## Control Purpose

The configuration supports:

- Authentication-method targeting
- Role-aligned authentication governance
- Controlled enablement for selected user populations
- Authentication-method configuration evidence
- Future MFA and passwordless-access planning

## Evidence File

```text
25-entra-microsoft-authenticator-target-groups_2026-09-20.png
```

## Important Enforcement Boundary

The screenshot demonstrates authentication-method availability and targeting.

The evidence does not independently demonstrate:

- Completed Microsoft Authenticator registration
- MFA enforcement at every sign-in
- Passwordless authentication
- Push-notification use
- Authentication Strength
- Conditional Access enforcement
- Registration-campaign deployment
- Successful authentication events for targeted identities

Microsoft Entra Security Defaults remained enabled in the lab.

Security Defaults must not be represented as a custom Conditional Access policy.

## Related Groups

```text
GRP-IT-Support
GRP-Security-Readers
```

The project separately documents:

- Casey IT Support assigned the Helpdesk Administrator role
- Morgan Security assigned the Security Reader role
- Conditional Access assessed and designed but not deployed

## Privacy Notice

The published screenshot was sanitized to remove:

- Signed-in account information
- Tenant and directory details
- Browser-address information
- Account avatars
- Unnecessary browser and device information

All groups, identities, and organizational scenarios are fictional and intended for educational portfolio use.
