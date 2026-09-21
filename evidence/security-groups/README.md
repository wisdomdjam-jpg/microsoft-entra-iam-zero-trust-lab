# Microsoft Entra Security-Group Evidence

This folder contains sanitized evidence of fictional security groups and selected group memberships implemented in the Microsoft Entra IAM and Zero Trust Governance Lab.

## HR Security-Group Membership

**Evidence ID:** `EVD-2026-GROUP-001`  
**Group:** `GRP-HR-Users`  
**Membership type:** Direct  
**Visible members:** Riley Lifecycle and Taylor HR  
**Implementation status:** Implemented and Validated  

The sanitized screenshot shows two fictional identities listed as direct members of the `GRP-HR-Users` security group.

## Control Purpose

The evidence demonstrates:

- Role-aligned security-group administration
- Direct membership visibility
- Departmental access organization
- Group-membership evidence suitable for lifecycle review
- A documented state within the fictional identity-lifecycle scenario

## Evidence File

```text
entra-grp-hr-users-direct-membership_2026-09-20.png
```

## Lifecycle Context

A separate evidence item shows `Riley Lifecycle` in a later disabled account state with zero visible group memberships.

The two artifacts may represent different points in the fictional lifecycle scenario:

```text
HR group membership
## Finance Security-Group Membership

**Evidence ID:** `EVD-2026-GROUP-002`  
**Group:** `GRP-Finance-Users`  
**Membership type:** Direct  
**Visible members:** Jordan Finance and Riley Lifecycle  
**Implementation status:** Implemented and Validated for the visible membership state  

The sanitized screenshot shows the fictional Jordan Finance and Riley Lifecycle identities as direct members of the `GRP-Finance-Users` security group.

## Lifecycle Context

The project contains separate screenshots showing:

1. Riley Lifecycle as a direct member of `GRP-HR-Users`
2. Riley Lifecycle as a direct member of `GRP-Finance-Users`
3. Riley Lifecycle in a later disabled state with zero visible group memberships

These artifacts demonstrate different fictional lifecycle states.

The evidence does not independently prove:

- The precise order of the membership changes
- Removal from `GRP-HR-Users` before assignment to `GRP-Finance-Users`
- The approval or administrator responsible for the changes
- The time elapsed between each state
- Automated mover or leaver processing

## Evidence File

```text
entra-grp-finance-users-direct-membership_2026-09-20.png
        ↓
Access removal
        ↓
Account disablement
```

This sequence must not be represented as fully validated unless the relevant removal event, audit record, or reliable before-and-after timing is available.

## Limitation

The screenshot confirms the visible direct-membership state only.

The evidence does not independently demonstrate:

- When either identity was added
- Who approved or performed the assignment
- Removal from a previous group
- A completed mover event
- Automatic group assignment
- Dynamic membership
- Effective application access
- When Riley Lifecycle was removed
- Automated lifecycle management

## Privacy Notice

The published screenshot was sanitized to remove account information, tenant details, the browser address, group identifiers, and unnecessary browser information.

All identities, groups, and organizational scenarios are fictional and intended for educational portfolio use.
