# Microsoft Entra Licensing Assessment Evidence

This folder contains sanitized evidence of premium Microsoft Entra capabilities assessed in the fictional IAM and Zero Trust Governance Lab but not deployed in the current environment.

## Lifecycle Workflows Assessment

**Evidence ID:** `EVD-2026-LICENSING-001`  
**Capability:** Microsoft Entra Lifecycle Workflows  
**Assessment result:** Microsoft Entra ID Governance license required  
**Implementation status:** Assessed, Not Deployed  
**Tenant changes:** None  

The sanitized screenshot shows the Microsoft Entra Lifecycle Workflows overview returning an access-denied message and identifying Microsoft Entra ID Governance licensing as a requirement.

## Identity Governance and Entitlement Management Assessment

**Evidence ID:** `EVD-2026-LICENSING-002`  
**Capability:** Microsoft Entra Identity Governance and Entitlement Management  
**Implementation status:** Assessed, Not Deployed  
**Tenant changes:** None  

The sanitized screenshot shows the Microsoft Entra Identity Governance dashboard and the available navigation for:

- Catalogs
- Access packages
- Connected organizations
- Lifecycle workflows
- Access reviews
- Identity-governance reporting and configuration

The dashboard also displayed trial and purchase options, indicating that the current lab had not deployed the premium Identity Governance capabilities.

The dashboard identified:

```text
8 member user accounts recently created
1 application with direct user assignments
## Control Relevance

Lifecycle Workflows could support automated identity-lifecycle activities such as:

- Joiner task coordination
- Mover-related access updates
- Leaver and offboarding tasks
- Notifications and governance actions
- Repeatable identity-lifecycle evidence

The current lab uses documented manual joiner-mover-leaver procedures and does not claim that Lifecycle Workflows were implemented.

## Evidence File

```text
entra-lifecycle-workflows-license-requirement_2026-09-20.png
```
## Privileged Identity Management Access Reviews Assessment

**Evidence ID:** `EVD-2026-LICENSING-003`  
**Capability:** Administrative-role Access Reviews through Privileged Identity Management  
**Visible licensing requirement:** EMS E5 or Microsoft Entra ID P2  
**Implementation status:** Assessed, Not Deployed  
**Tenant changes:** None  

The sanitized screenshot shows the Microsoft Entra Privileged Identity Management Access Reviews page returning an access-denied result and stating that the tenant does not have the required licence for Access Reviews.

## Governance Relevance

PIM-based Access Reviews could support recurring recertification of selected administrative-role assignments, including:

- Helpdesk Administrator
- Security Reader
- Other privileged Microsoft Entra roles
- Time-bound and eligible privileged-access governance
- Reviewer decisions and access-remediation workflows
- Privileged-access audit evidence

The current lab did not deploy Privileged Identity Management or native administrative-role Access Reviews.

A structured manual review was used as the Free-tier governance alternative.

## Evidence File

## Limitation
The evidence records the licensing message visible during the assessment. It does not demonstrate a configured workflow, production deployment, successful automation, or complete licensing analysis for every Microsoft Entra ID Governance capability.
## Privileged Identity Management Assessment

**Evidence ID:** `EVD-2026-LICENSING-004`  
**Capability:** Microsoft Entra Privileged Identity Management  
**Capability classification:** Premium feature  
**Implementation status:** Assessed, Not Deployed  
**Tenant changes:** None  

The sanitized screenshot shows the Microsoft Entra Privileged Identity Management quick-start page and the following governance capabilities:

- Assign eligible or time-bound privileged roles
- Activate eligible role assignments
- Approve or deny activation requests
- Review assignment and activation history
- Access privileged-role audits and alerts
- Conduct privileged-role access reviews where appropriately licensed

## Governance Relevance

Privileged Identity Management could strengthen a production environment by supporting:

- Eligible rather than permanently active administrative roles
- Just-in-time privileged-role activation
- Time-bound administrative access
- Approval-based activation
- Multifactor-authentication requirements
- Activation justification
- Assignment and activation auditing
- Privileged-role access reviews
- Alerts concerning privileged access

The project design recommends evaluating whether the fictional Helpdesk Administrator and Security Reader assignments should become eligible or time-bound in an appropriately licensed production environment.

## Evidence File
## Privacy Notice

The published screenshot was sanitized to remove personal account information, tenant details, the browser address, session information, and unnecessary device information.

All organizational scenarios and identities associated with this project are fictional and intended for educational portfolio use.
