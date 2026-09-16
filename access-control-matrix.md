# Access Control Matrix

## Purpose

This document records the approved identity, group, administrative-role, and application-access model used in the Northstar Health Services Microsoft Entra IAM and Zero Trust Governance Lab.

Northstar Health Services and all identities, groups, departments, employee identifiers, and applications in this document are fictional.

## Access-Control Principles

The access model applies the following principles:

- Identity creation does not automatically grant resource access.
- Access must align with a documented business responsibility.
- Departmental access is managed through assigned security groups.
- Administrative roles are granted only when required.
- Global Administrator is not assigned to fictional workforce or guest identities.
- Application access is explicitly assigned.
- Obsolete access is removed during transfers and offboarding.
- External guest acceptance does not automatically authorize application access.
- Premium controls are identified separately when licensing prevents implementation.

## Workforce Identity Matrix

| Identity | Department or Function | User Type | Employee Type | Primary Group | Administrative Role | Northstar Portal Access | Account State |
|---|---|---|---|---|---|---|---|
| Avery Clinical | Clinical Operations | Member | Employee | `GRP-Clinical-Users` | None | Assigned | Enabled |
| Jordan Finance | Finance | Member | Employee | `GRP-Finance-Users` | None | Not assigned | Enabled |
| Taylor HR | Human Resources | Member | Employee | `GRP-HR-Users` | None | Not assigned | Enabled |
| Casey IT Support | Information Technology | Member | Employee | `GRP-IT-Support` | Helpdesk Administrator | Assigned | Enabled |
| Morgan Security | Security Operations | Member | Employee | `GRP-Security-Readers` | Security Reader | Not assigned | Enabled |
| Vendor Support | External Vendors | Member | Contractor | `GRP-External-Vendors` | None | Not assigned | Enabled |
| External B2B Guest | External Vendors | Guest | External collaborator | `GRP-External-Vendors` | None | Not assigned | Enabled |
| Riley Lifecycle | Former Human Resources employee | Member | Employee lifecycle test | None | None | Not assigned | Disabled |

## Security Group Matrix

| Security Group | Business Purpose | Approved Membership | Membership Type | Administrative Role Assigned to Group |
|---|---|---|---|---|
| `GRP-Clinical-Users` | Classify approved clinical users | Avery Clinical | Assigned | None |
| `GRP-Finance-Users` | Classify approved finance users | Jordan Finance | Assigned | None |
| `GRP-HR-Users` | Classify approved HR users | Taylor HR | Assigned | None |
| `GRP-IT-Support` | Classify IT support personnel | Casey IT Support | Assigned | None |
| `GRP-Security-Readers` | Classify security-monitoring personnel | Morgan Security | Assigned | None |
| `GRP-External-Vendors` | Classify approved contractor and guest identities | Vendor Support and External B2B Guest | Assigned | None |

Riley Lifecycle was temporarily assigned to `GRP-Finance-Users` during onboarding and later moved to `GRP-HR-Users`. Both memberships were removed during offboarding.

## Administrative Role Matrix

| Identity | Role | Assignment Type | Justification | Production Recommendation |
|---|---|---|---|---|
| Casey IT Support | Helpdesk Administrator | Active in lab | Limited support and password-management duties | Convert to eligible, time-limited activation through Privileged Identity Management where licensed |
| Morgan Security | Security Reader | Active in lab | Read-only review of security information | Keep active only if continuous monitoring is required; otherwise consider eligible activation |
| Lab administrator | Global Administrator | Active | Personal tenant administration and recovery | Use a separate daily administrative account and two monitored emergency-access accounts in production |

No fictional business user, contractor, or B2B guest received Global Administrator.

## Authentication-Method Targeting

| Group | Microsoft Authenticator Available | Registration Setting | Authentication Mode | Enforcement Status |
|---|---|---|---|---|
| `GRP-IT-Support` | Yes | Optional | Any | Method available; sign-in enforcement not independently validated |
| `GRP-Security-Readers` | Yes | Optional | Any | Method available; sign-in enforcement not independently validated |

Conditional Access-based MFA enforcement remained design-specified because the lab used Microsoft Entra ID Free.

## Application Access Matrix

Application:

```text
Northstar Patient Records Portal
```

Enterprise application control:

```text
Assignment required: Yes
```

| Identity | Business Function | Assignment | Decision Rationale |
|---|---|---|---|
| Avery Clinical | Clinical Operations | Assigned | Approved user representing the primary business function of the application |
| Casey IT Support | Information Technology | Assigned | Approved support identity for application-related technical support |
| Jordan Finance | Finance | Not assigned | No documented business need |
| Taylor HR | Human Resources | Not assigned | No documented business need |
| Morgan Security | Security Operations | Not assigned | Security Reader role does not automatically justify application access |
| Vendor Support | Contractor | Not assigned | Vendor classification does not automatically authorize patient-record access |
| External B2B Guest | External collaborator | Not assigned | Invitation acceptance and vendor-group membership do not justify application access |
| Riley Lifecycle | Former employee lifecycle test | Not assigned | No approved application requirement; account is disabled |

## Microsoft Graph Permission Decision

| API | Permission | Type | Admin Consent Required | Decision |
|---|---|---|---|---|
| Microsoft Graph | `User.Read` | Delegated | No | Retained as the minimal default sign-in and profile-read permission |

Broad directory, mail, file, site, and application permissions were not added.

## Joiner-Mover-Leaver Access Changes

### Joiner

| Control | Result |
|---|---|
| Identity created | Riley Lifecycle |
| Initial access | No groups, applications, licences, or administrative roles |
| Initial department | Finance |
| Approved access | Added to `GRP-Finance-Users` |

### Mover

| Control | Result |
|---|---|
| New department | Human Resources |
| New job title | HR Systems Coordinator |
| Obsolete access removed | Removed from `GRP-Finance-Users` |
| Replacement access granted | Added to `GRP-HR-Users` |
| Simultaneous Finance and HR access | Avoided |

### Leaver

| Control | Result |
|---|---|
| HR access removed | Yes |
| Group memberships | 0 |
| Application assignments | 0 |
| Administrative roles | 0 |
| Assigned licences | 0 |
| Sessions revoked | Yes |
| Account disabled | Yes |
| Identity deleted | No; retained temporarily for audit evidence |

## External Identity Governance

The external B2B guest followed this sequence:

```text
Invitation created
→ Pending acceptance validated
→ Invitation redeemed
→ Accepted state validated
→ Vendor membership approved
→ Added to GRP-External-Vendors
→ Administrative roles withheld
→ Northstar application access withheld
```

The production governance design recommends:

- A documented sponsor
- Business justification
- Time-limited access
- Quarterly access review
- Automatic expiration where licensed
- Prompt removal when the business relationship ends

## Review Frequency

| Access Area | Recommended Review Frequency | Reviewer |
|---|---|---|
| Administrative roles | Monthly | Privileged Role Administrator or security owner |
| External-vendor access | Quarterly | Vendor sponsor or group owner |
| Northstar application assignments | Quarterly | Application owner |
| Departmental group membership | Quarterly and upon role change | Department owner |
| Emergency-access readiness | Quarterly | Security leadership |
| Microsoft Graph permissions | Before consent and quarterly | Application owner and security reviewer |

## Configured Versus Design-Specified

### Configured and Validated

- Assigned departmental security groups
- Helpdesk Administrator and Security Reader roles
- Microsoft Authenticator targeting
- Explicit Northstar application assignments
- Minimal delegated Microsoft Graph permission
- B2B guest invitation, redemption, and vendor-group membership
- Manual joiner-mover-leaver access changes
- Session revocation and account disabling

### Design-Specified or Licence-Restricted

- Conditional Access policy enforcement
- Privileged Identity Management eligible assignments
- Automated Access Reviews
- Entitlement Management access packages
- Lifecycle Workflow automation
- Group-based enterprise-application assignment

## Control Conclusion

The access model demonstrates that authentication, group classification, administrative privilege, and application authorization are separate decisions. Each access path is limited to the fictional identity's approved business purpose and is removed when no longer required.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management
