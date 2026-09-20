# Microsoft Entra Identity and Lifecycle Evidence

This folder contains sanitized evidence of fictional Microsoft Entra identities and selected identity-lifecycle controls implemented in the Microsoft Entra IAM and Zero Trust Governance Lab.

## Disabled Lifecycle Identity

**Evidence ID:** `EVD-2026-IDENTITY-001`  
**Identity:** Riley Lifecycle  
**User type:** Member  
**Account status:** Disabled  
**Implementation status:** Implemented and Validated  

The sanitized screenshot shows the fictional Riley Lifecycle account in a disabled state.

The visible user overview also shows:

```text
Group memberships: 0
Applications: 0
Assigned roles: 0
Assigned licenses: 0
```

## Control Purpose

The evidence supports the project’s manual joiner-mover-leaver governance design by demonstrating a fictional identity in a disabled leaver-style state.

Disabling an identity can help prevent continued sign-in while subsequent offboarding, retention, verification, or deletion actions are completed according to policy.

## Evidence File

```text
entra-riley-lifecycle-disabled-account_2026-09-20.png
```

## Limitation

The screenshot records the observed account state only.

The evidence does not independently demonstrate:

- The administrator or process that disabled the account
- The exact disablement time
- Session revocation
- Credential rotation
- Automated offboarding
- Lifecycle Workflow execution
- Data-retention actions
- Removal from indirect access paths
- Completion of a production leaver procedure

The evidence must be represented as a manually configured and validated fictional account state, not automated lifecycle management.

## Privacy Notice

The published screenshot was sanitized to remove the user principal name, object ID, tenant details, personal account information, browser address, and unnecessary device information.

All identities and organizational scenarios shown in this folder are fictional and intended for educational portfolio use.
