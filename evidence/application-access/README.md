# Microsoft Entra Application-Access Evidence

This folder contains sanitized evidence of application registration, enterprise-application configuration, and access assignments implemented for the fictional Northstar Patient Records Portal.

## Northstar Direct User Assignments

**Evidence ID:** `EVD-2026-APP-001`  
**Application:** Northstar Patient Records Portal  
**Resource type:** Enterprise Application  
**Assignment type:** Direct user assignment  
**Assigned fictional users:** Avery Clinical and Casey IT Support  
**Status:** Implemented and Validated  

The sanitized screenshot shows the `Users and groups` page for the Northstar Patient Records Portal enterprise application.

The visible assignments are:

```text
Avery Clinical
Casey IT Support
```

Both assigned objects are shown as:

```text
Object type: User
```

## Control Purpose

The evidence supports:

- Explicit enterprise-application access assignment
- Least-privilege application access
- Direct user-assignment visibility
- Application-access review readiness
- Separation between assigned and unassigned fictional identities
- Evidence-based application governance

## Evidence File

```text
21-entra-northstar-direct-user-assignments_2026-09-20.png
```

## Configuration Notice

The Microsoft Entra page displays a notice stating that the application will not appear to assigned users in My Apps unless the `Visible to users?` property is enabled.

This notice describes application visibility and must not be interpreted as proof that the direct assignments were ineffective.

## Known Limitations

The screenshot does not independently demonstrate:

- Successful application sign-in
- Effective authorization inside the application
- Assignment-required configuration
- Group-based application assignment
- Application-role enforcement
- Single sign-on
- User provisioning
- Conditional Access
- My Apps visibility
- Production application use

Group-based assignment must not be described as implemented because the screenshot shows direct user assignments.

## Privacy Notice

The published screenshot was sanitized to remove:

- Signed-in account information
- Tenant and directory details
- Browser-address information
- Object and application identifiers
- Account avatars
- Unnecessary browser and device information

The Northstar Patient Records Portal and all assigned identities are fictional educational portfolio artifacts.
