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
## Northstar Enterprise Application Overview

**Evidence ID:** `EVD-2026-APP-003`  
**Application:** Northstar Patient Records Portal  
**Resource type:** Enterprise Application  
**Status:** Implemented and Validated  

The sanitized screenshot shows the Microsoft Entra enterprise-application overview for the fictional Northstar Patient Records Portal.

The overview presents navigation for:

- Assigning users and groups
- Provisioning user accounts
- Conditional Access
- Self-service access

The presence of these options does not mean that every displayed capability was configured.

## Control Purpose

The evidence supports:

- Enterprise-application existence
- Tenant-local service-principal representation
- Application-access governance
- Workload-identity documentation
- Application-management traceability
- Evidence-based review of application controls

## Related Evidence

```text
EVD-2026-APP-001
Avery Clinical and Casey IT Support are directly assigned.

EVD-2026-APP-002
Assignment required is set to Yes.

EVD-2026-APP-003
The Northstar enterprise application exists in the tenant.
```

Together, these evidence items document:

```text
Enterprise application created
        ↓
Explicit assignment required
        ↓
Two fictional users directly assigned
```

## Evidence File

```text
23-entra-northstar-enterprise-application-overview_2026-09-20.png
```

## Known Limitations

The screenshot does not independently demonstrate:

- User provisioning
- Conditional Access implementation
- Self-service access
- Single sign-on
- Successful authentication
- Effective in-application authorization
- Assignment-required configuration
- User or group assignments
- Application-role enforcement
- Production application use

Conditional Access remained assessed and designed but not deployed.

## Privacy Notice

The published screenshot was sanitized to remove:

- Signed-in account information
- Tenant and directory details
- Browser-address information
- Application ID
- Object ID
- Account avatars
- Unnecessary browser and device information

The Northstar Patient Records Portal is a fictional educational portfolio application.
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
## Northstar Assignment-Required Configuration

**Evidence ID:** `EVD-2026-APP-002`  
**Application:** Northstar Patient Records Portal  
**Resource type:** Enterprise Application  
**Assignment required:** Yes  
**Enabled for users to sign in:** Yes  
**Activation status:** Activated  
**Visible to users:** No  
**Status:** Implemented and Validated  

The sanitized screenshot shows the Properties page for the Northstar Patient Records Portal enterprise application.

The visible settings are:

```text
Activation status: Activated
Enabled for users to sign in: Yes
Assignment required: Yes
Visible to users: No
```

## Control Purpose

The configuration supports:

- Explicit application-access assignment
- Prevention of unassigned user access through the enterprise-application assignment control
- Least-privilege application governance
- Application-access review readiness
- Clear separation between access assignment and My Apps visibility

## Related Evidence

```text
EVD-2026-APP-001
Avery Clinical and Casey IT Support are directly assigned to the Northstar Patient Records Portal.

EVD-2026-APP-002
The Northstar Patient Records Portal is configured with Assignment required set to Yes.
```

Together, the two evidence items demonstrate explicit direct assignment and assignment-required application governance.

## Evidence File

```text
22-entra-northstar-assignment-required-properties_2026-09-20.png
```

## Important Visibility Distinction

The application is configured as:

```text
Visible to users: No
```

This means the application is not presented to assigned users through My Apps based on the visible property.

The visibility setting does not independently invalidate the assignment records shown in the separate assignment evidence.

## Known Limitations

The screenshot does not independently demonstrate:

- Successful application sign-in
- In-application authorization
- Single sign-on
- Provisioning
- Conditional Access
- Group-based assignment
- App-role enforcement
- My Apps visibility
- Production use
- API-permission configuration

## Privacy Notice

The published screenshot was sanitized to remove signed-in account information, tenant details, browser-address information, application identifiers, object identifiers, and unnecessary device information.
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
