# Access Review Design

## 1. Purpose

This document defines the access-review framework designed for the fictional Northstar Health environment. The framework supports least privilege, access recertification, separation of duties, and the timely removal of unnecessary access.

The access-review process is designed to answer four questions:

1. Who currently has access?
2. Does each user still require that access?
3. Is the level of access appropriate for the user's responsibilities?
4. Is there sufficient evidence showing that access was reviewed and approved?

This design covers privileged administrative roles, security-group memberships, access to the Northstar Patient Records Portal, and Microsoft Entra B2B guest access.

## 2. Scope

The access-review design applies to the following identity and access resources:

- Microsoft Entra administrative-role assignments
- Security-group memberships
- Northstar Patient Records Portal assignments
- B2B guest accounts
- External-vendor group memberships
- Access granted directly to individual users
- Exceptions that allow access outside the standard approval process

The following lab resources are specifically included:

- Helpdesk Administrator role assignments
- Security Reader role assignments
- Departmental and role-based security groups
- `GRP-External-Vendors`
- Northstar Patient Records Portal enterprise application
- Direct user assignments to the Northstar Patient Records Portal
- Invited B2B guest users

Authentication-method registration and targeting are not reviewed through this process as application or group assignments. However, the groups used to target authentication methods remain subject to membership review.

## 3. Implementation Status

This document represents a governance design and manual access-review procedure.

The Microsoft Entra tenant used for this lab is based on Microsoft Entra ID Free capabilities. Native Microsoft Entra access reviews were therefore not configured or represented as implemented.

The lab demonstrates access-review governance through:

- Defined review schedules
- Assigned review owners
- Documented reviewer responsibilities
- Manual export and inspection of access records
- Recorded approval and removal decisions
- Escalation and exception procedures
- Evidence-retention requirements
- Proposed automation for an appropriately licensed production environment

Any screenshots, records, or portfolio descriptions associated with this control must distinguish among:

- Controls implemented in the lab
- Controls manually simulated or documented
- Premium capabilities assessed but not deployed

## 4. Governance Principles

The access-review process follows these principles:

### 4.1 Least Privilege

Users should retain only the permissions required to perform their approved responsibilities.

### 4.2 Need-to-Know Access

Access to the Northstar Patient Records Portal and related security groups must be connected to a documented business need.

### 4.3 Periodic Recertification

Access must not remain approved indefinitely. Resource owners must periodically confirm whether each assignment remains necessary.

### 4.4 Independent Review

Whenever practical, the person reviewing access should not be the same person who originally requested or approved it.

### 4.5 Explicit Decisions

Reviewers must record an explicit decision for every assignment:

- Approve
- Remove
- Modify
- Escalate
- Temporarily retain through an approved exception

Silence or failure to respond must not automatically be treated as approval.

### 4.6 Evidence-Based Review

Review decisions must be supported by available evidence, such as:

- Current job or project responsibilities
- Group purpose
- Application-access requirements
- Contract or sponsorship status
- Administrative-role justification
- Account activity
- Manager or resource-owner confirmation

### 4.7 Timely Remediation

Access identified as unnecessary, excessive, expired, or unsupported must be removed or corrected within the remediation period defined by this policy.

### 4.8 Auditability

Each review must produce sufficient evidence to show:

- What resource was reviewed
- Who was included in the review
- Who performed the review
- When the review occurred
- What decision was made
- Why the decision was made
- Whether the decision was implemented
- Who verified remediation

## 5. Access Review Inventory

The access-review inventory identifies the resources that require periodic recertification, their risk levels, review frequency, responsible owners, designated reviewers, and expected remediation timelines.

Review frequency is based on the potential impact of inappropriate or outdated access. Privileged administrative roles are reviewed more frequently than standard group memberships because misuse of administrative permissions could affect the security and configuration of the Microsoft Entra tenant.

### 5.1 Administrative-Role Assignments

#### Helpdesk Administrator

**Resource:** Microsoft Entra Helpdesk Administrator role  
**Risk level:** High  
**Review frequency:** Monthly  
**Resource owner:** Identity and Access Management Administrator  
**Primary reviewer:** Security Administrator or designated IAM reviewer  
**Backup reviewer:** IT Manager  
**Remediation target:** Within three business days of the review decision  

The reviewer must verify that each assigned user:

- Has an active account
- Performs an approved IT support function
- Still requires password-reset and helpdesk-related permissions
- Has not transferred to another department or role
- Has not received broader administrative permissions that make the assignment redundant
- Is not a guest or external user unless a documented exception exists
- Has an approved business justification for continued privileged access

Direct permanent assignments should be minimized. In a production environment with appropriate licensing, eligible and time-bound activation through Privileged Identity Management should be considered instead of permanent active assignment.

#### Security Reader

**Resource:** Microsoft Entra Security Reader role  
**Risk level:** High  
**Review frequency:** Monthly  
**Resource owner:** Security Operations Lead  
**Primary reviewer:** Security Administrator or designated security reviewer  
**Backup reviewer:** Identity and Access Management Administrator  
**Remediation target:** Within three business days of the review decision  

The reviewer must verify that each assigned user:

- Performs an approved security-monitoring, investigation, governance, or audit function
- Requires tenant-wide visibility into security information
- Has not changed responsibilities
- Does not hold incompatible or unnecessary administrative roles
- Has an active organizational account
- Has a documented justification for continued access

Read-only access must still be treated as privileged because security information may contain sensitive details about users, identities, authentication events, alerts, and organizational controls.

### 5.2 Security-Group Memberships

**Resources:** Departmental, role-based, administrative, security, and authentication-targeting groups  
**Risk level:** Medium to high, depending on group purpose  
**Review frequency:** Quarterly  
**Resource owner:** Assigned group owner or relevant department manager  
**Primary reviewer:** Group owner  
**Backup reviewer:** Identity and Access Management Administrator  
**Remediation target:** Within five business days of the review decision  

For each group member, the reviewer must verify:

- The user remains active
- The user belongs to the appropriate department, project, or job function
- The membership remains necessary
- The membership does not create excessive, duplicate, or conflicting access
- The group is still being used for its documented purpose
- The group owner remains appropriate and available
- Any directly assigned access has not made the group membership redundant

Groups used to target authentication methods or security controls must receive additional scrutiny because inappropriate membership could change how security requirements are applied to a user.

If a group has no active business purpose, the group owner must recommend one of the following actions:

- Remove all memberships and archive the group
- Delete the group after confirming that it is not referenced by an application or policy
- Assign a new owner and document a valid business purpose
- Retain the group temporarily through an approved exception

### 5.3 Northstar Patient Records Portal Assignments

**Resource:** Northstar Patient Records Portal enterprise application  
**Risk level:** High  
**Review frequency:** Quarterly  
**Resource owner:** Northstar Patient Records Portal Application Owner  
**Primary reviewer:** Application owner  
**Backup reviewer:** Identity and Access Management Administrator  
**Remediation target:** Within three business days of the review decision  

The reviewer must verify that each assigned user:

- Has an active organizational account
- Has a current business requirement to access the application
- Has an approved department, project, or operational responsibility
- Has completed any required security or privacy training
- Has not changed roles or left the organization
- Is not receiving unnecessary access through both direct and group-based assignments
- Has an assignment consistent with the application's assignment-required configuration

Because the lab currently uses direct user assignment, every assigned user must be reviewed individually.

A production environment should generally use approved role-based groups where appropriate. This can simplify access governance and reduce administrative inconsistency, but group-based access must not be represented as implemented in this lab unless it is later configured and validated.

### 5.4 B2B Guest Accounts

**Resource:** Microsoft Entra B2B guest identities  
**Risk level:** High  
**Review frequency:** Monthly  
**Resource owner:** Guest sponsor or inviting department  
**Primary reviewer:** Internal guest sponsor  
**Backup reviewer:** Identity and Access Management Administrator  
**Remediation target:** Within three business days of the review decision  

The reviewer must verify that each guest:

- Has a valid internal sponsor
- Continues to support an active business relationship
- Has completed the invitation and redemption process when access is required
- Requires access to the assigned groups, applications, or resources
- Has not exceeded the approved engagement or contract end date
- Has not been inactive beyond the established inactivity threshold
- Has not received privileged administrative access without a documented exception
- Uses an external identity that still belongs to the approved individual or organization

A guest account must not be retained merely because its invitation was previously accepted.

If the sponsor cannot confirm the guest's continuing need for access, the assignment must be escalated. Access should be removed unless supporting evidence is provided within the escalation period.

### 5.5 External-Vendor Group Membership

**Resource:** `GRP-External-Vendors`  
**Risk level:** High  
**Review frequency:** Monthly  
**Resource owner:** Vendor Relationship Manager  
**Primary reviewer:** Internal sponsor or contract owner  
**Backup reviewer:** Identity and Access Management Administrator  
**Remediation target:** Within three business days of the review decision  

The reviewer must verify that each member:

- Is an approved external user
- Is connected to an active vendor relationship
- Has a named internal sponsor
- Has a documented access purpose
- Has a valid start date and expected end date
- Requires the access granted through the group
- Has not been added to unrelated internal groups
- Has not retained access beyond the contract, project, or support period

Membership must be removed when:

- The vendor relationship ends
- The assigned work is completed
- The internal sponsor withdraws approval
- The user's identity can no longer be verified
- The account becomes inactive beyond the approved period
- The user violates applicable security or acceptable-use requirements
- No valid business justification is available

An expired engagement must not be extended through an informal verbal request. Any extension must be documented and approved by the internal sponsor and resource owner.

### 5.6 Direct User Assignments

**Resources:** Access granted directly to individual users rather than through approved groups  
**Risk level:** Medium to high  
**Review frequency:** Quarterly, or monthly when privileged  
**Resource owner:** Owner of the affected application, role, or resource  
**Primary reviewer:** Resource owner  
**Backup reviewer:** Identity and Access Management Administrator  
**Remediation target:** Within three business days for privileged access and five business days for standard access  

Direct assignments must be reviewed carefully because they can remain in place after a user's department, project, or responsibilities change.

The reviewer must determine whether each direct assignment should be:

- Retained with documented justification
- Replaced with membership in an approved role-based group
- Modified to provide a lower level of access
- Removed because it is no longer required
- Temporarily retained through an approved exception

### 5.7 Review Inventory Summary

The following review schedule applies to the Northstar Health access-review design:

- **Helpdesk Administrator assignments:** Monthly
- **Security Reader assignments:** Monthly
- **B2B guest accounts:** Monthly
- **`GRP-External-Vendors` membership:** Monthly
- **Departmental and role-based security groups:** Quarterly
- **Authentication-method targeting groups:** Quarterly
- **Northstar Patient Records Portal assignments:** Quarterly
- **Standard direct user assignments:** Quarterly
- **Privileged direct assignments:** Monthly
- **Approved access exceptions:** At least monthly and before their expiration dates

The Identity and Access Management Administrator maintains the master inventory and confirms that each scheduled review is initiated, completed, documented, and remediated.

## 6. Review Roles and Responsibilities

Access reviews require clearly assigned responsibilities to ensure that reviews are initiated on schedule, decisions are made by appropriate individuals, and approved changes are implemented and verified.

One individual may perform more than one role in the lab environment. In a production environment, responsibilities should be separated where practical to reduce conflicts of interest and strengthen independent oversight.

### 6.1 Identity and Access Management Administrator

The Identity and Access Management Administrator coordinates the access-review program and maintains the review process.

Responsibilities include:

- Maintaining the master access-review inventory
- Confirming that each resource has an assigned owner
- Scheduling manual access reviews
- Preparing current access records for reviewers
- Identifying missing, inactive, or unavailable reviewers
- Monitoring review completion
- Recording reviewer decisions
- Coordinating approved access removals and modifications
- Tracking escalations and exceptions
- Verifying that remediation actions were completed
- Retaining review evidence
- Reporting overdue reviews and unresolved findings
- Recommending improvements to the access-review process

The Identity and Access Management Administrator must not approve their own privileged access. Such access must be reviewed by an independent security or management representative.

### 6.2 Administrative-Role Owner

The Administrative-Role Owner is accountable for ensuring that privileged role assignments remain appropriate.

Responsibilities include:

- Confirming the business purpose of each administrative role
- Verifying that assigned users still perform relevant duties
- Evaluating whether a lower-privilege role would be sufficient
- Identifying duplicate or conflicting administrative permissions
- Reviewing permanent assignments for possible time-bound alternatives
- Recommending approval, modification, or removal
- Documenting the reason for each decision
- Escalating assignments that lack sufficient justification

For the lab design, the relevant administrative roles include:

- Helpdesk Administrator
- Security Reader

An Administrative-Role Owner must not approve their own role assignment without independent review.

### 6.3 Application Owner

The Application Owner is accountable for access to the Northstar Patient Records Portal.

Responsibilities include:

- Defining the application's access requirements
- Confirming which users or business functions require access
- Reviewing each direct user assignment
- Identifying inactive, unnecessary, or excessive access
- Confirming whether assigned users have completed required training
- Determining whether access should be granted through an approved group
- Approving, modifying, or rejecting continued access
- Ensuring that sensitive application access is supported by a valid business need
- Participating in escalations involving disputed application access
- Confirming that removed access no longer appears in the assignment list

The Application Owner must not approve their own application access without review by a manager, security representative, or designated backup reviewer.

### 6.4 Group Owner

The Group Owner is accountable for the purpose and membership of an assigned security group.

Responsibilities include:

- Maintaining a documented business purpose for the group
- Reviewing all current members
- Confirming that each member meets the group's eligibility criteria
- Identifying users who changed departments, roles, or projects
- Removing unnecessary or unsupported memberships
- Identifying duplicate or conflicting group memberships
- Confirming that the group is still required
- Recommending archival or deletion when the group no longer has an active purpose
- Ensuring that at least one appropriate owner remains assigned
- Providing evidence supporting retained memberships

A Group Owner must not approve their own sensitive group membership without an independent reviewer.

### 6.5 Guest Sponsor

The Guest Sponsor is the internal organizational contact responsible for a B2B guest's continued access.

Responsibilities include:

- Confirming the guest's identity and organizational affiliation
- Documenting the purpose of the external relationship
- Confirming that the guest still requires access
- Reviewing the guest's group and application assignments
- Verifying the expected engagement or contract end date
- Reporting changes to the guest's responsibilities
- Requesting removal when the relationship ends
- Responding to access-review requests within the required period
- Providing written justification for extensions
- Escalating identity or sponsorship concerns

If the Guest Sponsor leaves the organization or becomes unavailable, a new sponsor must be assigned. If no replacement sponsor accepts responsibility, the guest's access must be removed unless an approved exception is granted.

### 6.6 Vendor Relationship Manager

The Vendor Relationship Manager is accountable for external access connected to an approved vendor relationship.

Responsibilities include:

- Confirming that the vendor relationship remains active
- Maintaining the vendor's approved access purpose
- Confirming the identity of vendor personnel
- Monitoring relevant contract, project, or support end dates
- Reviewing membership in `GRP-External-Vendors`
- Coordinating with internal guest sponsors
- Identifying vendor personnel who no longer require access
- Requesting access removal when work is completed
- Documenting approved extensions
- Escalating contractual or security concerns
- Confirming that vendor access does not exceed the approved scope

The Vendor Relationship Manager must not rely only on the existence of an active vendor contract. Each individual external user's access must still be justified.

### 6.7 Primary Reviewer

The Primary Reviewer evaluates the access records included in an assigned review.

Responsibilities include:

- Reviewing every assignment in scope
- Assessing current business need
- Checking available supporting evidence
- Identifying excessive, redundant, or inappropriate access
- Recording a decision for each assignment
- Providing a clear justification for retained access
- Identifying decisions that require escalation
- Declaring any conflict of interest
- Completing the review within the assigned period
- Responding to questions about review decisions

The Primary Reviewer must use one of the approved decision outcomes:

- Approve
- Remove
- Modify
- Escalate
- Temporarily retain through an approved exception

The Primary Reviewer must not treat a missing response or incomplete evidence as automatic approval.

### 6.8 Backup Reviewer

The Backup Reviewer completes or supports a review when the Primary Reviewer is unavailable, has a conflict of interest, or fails to complete the review on time.

Responsibilities include:

- Reviewing assignments transferred from the Primary Reviewer
- Performing an independent assessment
- Resolving or escalating conflicts of interest
- Completing overdue review items
- Documenting all decisions and supporting reasons
- Confirming that the review remains within scope
- Escalating cases that cannot be resolved independently

The Backup Reviewer must have sufficient knowledge and authority to evaluate the access being reviewed.

### 6.9 Remediation Owner

The Remediation Owner implements approved access changes.

Depending on the resource, this role may be performed by the Identity and Access Management Administrator, Application Administrator, Group Owner, or another authorized administrator.

Responsibilities include:

- Removing denied access
- Modifying excessive permissions
- Removing users from security groups
- Removing direct application assignments
- Disabling or restricting unsupported guest access
- Correcting inaccurate ownership or sponsorship information
- Recording the date and time of the change
- Capturing appropriate evidence of completion
- Reporting unsuccessful remediation attempts
- Escalating changes that cannot be completed within the target period

The Remediation Owner must not change a review decision without documented authorization from the reviewer or escalation authority.

### 6.10 Verification Owner

The Verification Owner confirms that approved remediation was completed correctly.

Responsibilities include:

- Comparing the approved decision with the implemented change
- Confirming that removed users no longer appear in the relevant assignment
- Confirming that modified access matches the approved level
- Checking that no unintended access was introduced
- Recording the verification date
- Identifying incomplete or incorrectly implemented decisions
- Returning failed remediation items for correction

Whenever practical, the Verification Owner should be different from the person who implemented the change.

### 6.11 Escalation Authority

The Escalation Authority resolves review items that cannot be decided through the standard process.

This role may be performed by an IT Manager, Security Lead, Application Owner, Privacy Officer, Compliance Representative, or another authorized decision-maker, depending on the resource and risk.

Responsibilities include:

- Reviewing disputed access decisions
- Evaluating incomplete or conflicting evidence
- Resolving reviewer conflicts of interest
- Assessing overdue review items
- Approving or rejecting temporary exceptions
- Determining whether immediate access suspension is necessary
- Assigning corrective actions
- Recording the final decision and rationale

High-risk unresolved access must not remain active indefinitely while an escalation is pending.

### 6.12 Access Requester or User

The person receiving access may be asked to provide information during a review but must not serve as the sole approver of their own access.

Responsibilities include:

- Explaining the current business need for access
- Providing accurate information about responsibilities
- Identifying access that is no longer required
- Responding to reviewer questions
- Following applicable security and acceptable-use requirements
- Reporting role, department, project, or sponsorship changes

User self-attestation may supplement a review, but it does not replace resource-owner accountability for high-risk or privileged access.

### 6.13 Separation of Duties

The following separation-of-duties rules apply whenever practical:

- Users must not be the sole approvers of their own access.
- Administrators must not independently approve and verify their own privileged-role assignments.
- The person implementing remediation should not be the only person verifying completion.
- Guest users must have an accountable internal sponsor.
- Vendor personnel must not approve other vendor personnel's access on behalf of the organization.
- Resource owners must not change reviewer decisions without documented authorization.
- Exception requests must be approved by someone other than the person receiving the exception.

Because the lab has a limited number of participants, complete separation of duties might not always be technically possible. Where one person performs multiple roles, the limitation must be documented, review evidence must be retained, and the production-state recommendation must call for independent oversight.

### 6.14 Responsibility for Overdue Reviews

The Identity and Access Management Administrator monitors review deadlines.

If a review is overdue:

1. The Primary Reviewer receives an initial reminder.
2. The Backup Reviewer is assigned if the Primary Reviewer remains unavailable.
3. The Resource Owner and Escalation Authority are notified.
4. High-risk access is evaluated for temporary suspension.
5. The delay and final resolution are recorded in the review evidence.

Failure to complete a review must never be interpreted as approval of continued access.

## 7. Review Schedule and Lifecycle

The access-review lifecycle defines how each review is prepared, initiated, completed, remediated, verified, and closed.

The process applies to scheduled monthly and quarterly reviews, as well as event-driven reviews triggered by changes in employment, sponsorship, contracts, application ownership, organizational responsibilities, or identified security risks.

Because the lab uses Microsoft Entra ID Free capabilities, the review lifecycle is performed manually. In an appropriately licensed production environment, Microsoft Entra access reviews could support recurring reviews, delegated reviewers, reminders, decision tracking, and automated application of approved outcomes.

### 7.1 Review Frequencies

Access-review frequency is based on the risk and sensitivity of the resource.

#### Monthly Reviews

The following access must be reviewed every month:

- Helpdesk Administrator assignments
- Security Reader assignments
- B2B guest accounts
- `GRP-External-Vendors` membership
- Privileged direct assignments
- Active access exceptions
- High-risk assignments identified by a previous review

Monthly reviews should begin during the first five business days of each month.

The Primary Reviewer should complete the review within five business days of receiving the review package. Remediation and verification should then be completed within the timeframe assigned to the affected resource.

#### Quarterly Reviews

The following access must be reviewed every three months:

- Departmental security-group membership
- Role-based security-group membership
- Authentication-method targeting groups
- Northstar Patient Records Portal assignments
- Standard direct user assignments
- Group ownership
- Application ownership
- Guest sponsorship information

Quarterly reviews should begin during the first ten business days of January, April, July, and October.

The Primary Reviewer should complete a quarterly review within ten business days of receiving the review package.

#### Semiannual Governance Assessment

A broader governance assessment should be completed twice each year.

The semiannual assessment covers:

- Continued relevance of review frequencies
- Resource-risk classifications
- Reviewer and owner assignments
- Separation-of-duties limitations
- Recurring overdue decisions
- Unresolved exceptions
- Access-remediation performance
- Quality and completeness of retained evidence
- Licensing requirements for advanced governance capabilities
- Opportunities for automation
- Changes to administrative roles, applications, groups, or external relationships

The results should be documented as governance observations and proposed improvements.

#### Annual Policy Review

This access-review design must be reviewed at least once every 12 months.

The annual review should confirm that:

- The document remains aligned with the tenant configuration
- Named resources still exist
- Review owners remain appropriate
- Review criteria remain effective
- Remediation deadlines remain reasonable
- Licensing statements remain accurate
- Portfolio descriptions remain consistent with what was implemented
- Production recommendations remain relevant

The annual policy review must record the review date, reviewer, approved changes, and the next scheduled review date.

### 7.2 Event-Driven Reviews

An event-driven review must be initiated when a significant change creates a risk that existing access is no longer appropriate.

Triggering events include:

- A user leaves the organization
- A user changes departments, roles, or responsibilities
- A user completes a project or temporary assignment
- A contractor or vendor engagement ends
- A guest loses their internal sponsor
- A group or application owner becomes unavailable
- An application changes purpose or sensitivity
- A security group is assigned to a new resource
- A user receives privileged administrative access
- A privileged assignment appears excessive or unauthorized
- A security incident affects an account
- Suspicious activity is associated with an identity
- An audit identifies unsupported or excessive access
- An approved exception reaches its expiration date
- A significant change is made to authentication or authorization controls

Event-driven reviews should begin as soon as the triggering event becomes known.

High-risk access should be evaluated immediately. Where continued access creates an unacceptable risk, the account or assignment may be temporarily disabled or removed while the review is completed.

### 7.3 Phase 1: Review Preparation

The Identity and Access Management Administrator prepares the review package before assigning it to a reviewer.

Preparation activities include:

1. Identify the resource being reviewed.
2. Confirm the resource owner.
3. Confirm the Primary Reviewer and Backup Reviewer.
4. Define the review start date and response deadline.
5. Export or record the current access assignments.
6. Identify users, groups, guests, roles, and applications in scope.
7. Collect available business justifications.
8. Identify known contract or sponsorship end dates.
9. Identify previous exceptions or unresolved findings.
10. Assign a unique review identifier.
11. Create the evidence folder or review record.
12. Confirm the applicable remediation timeline.

The access list must reflect the current tenant configuration as closely as possible at the start of the review.

If access changes while a manual review is in progress, the change must be recorded separately. The reviewer must determine whether the new or modified assignment should be included in the current review or examined through an event-driven review.

### 7.4 Review Identifier

Each review should have a unique identifier using the following format:

```text
AR-[YEAR]-[FREQUENCY]-[RESOURCE]-[SEQUENCE]
```

Examples include:

```text
AR-2026-MONTHLY-HELPDESK-001
AR-2026-MONTHLY-GUESTS-002
AR-2026-QUARTERLY-NORTHSTAR-001
AR-2026-QUARTERLY-SECURITY-GROUPS-002
```

The review identifier must appear in:

- The review worksheet
- Supporting screenshots
- Reviewer decision records
- Exception records
- Remediation evidence
- Verification records
- The final review summary
### 7.5 Phase 2: Review Initiation

The Identity and Access Management Administrator formally initiates the review by sending the review package to the Primary Reviewer.

The initiation record must include:

- Review identifier
- Resource name
- Review scope
- Review start date
- Review deadline
- Review criteria
- Name of the Primary Reviewer
- Name of the Backup Reviewer
- Required decision outcomes
- Remediation expectations
- Escalation contact
- Location of supporting evidence

The reviewer must acknowledge receipt of the review package.

If the Primary Reviewer does not acknowledge the review within two business days, the Identity and Access Management Administrator should send a reminder.

### 7.6 Phase 3: Reviewer Assessment

The Primary Reviewer must examine every assignment included in the review.

For each assignment, the reviewer should evaluate:

- Whether the identity is active
- Whether the user still performs the relevant function
- Whether the access supports a current business requirement
- Whether the access level is proportionate to that requirement
- Whether a less privileged option is available
- Whether the assignment duplicates access received elsewhere
- Whether the assignment creates a separation-of-duties concern
- Whether the user has changed departments, projects, or responsibilities
- Whether a guest has a valid sponsor
- Whether vendor access remains linked to an active engagement
- Whether an exception exists and remains valid
- Whether supporting evidence is current and sufficient

The reviewer must not approve access solely because it existed before the review.

Previous approval may be considered as context, but continued access requires a current and supportable reason.

### 7.7 Phase 4: Decision Recording

The reviewer must record one of the following outcomes for every assignment:

#### Approve

Use this decision when the current access remains necessary, proportionate, and supported by sufficient evidence.

The reviewer must record:

- The current business need
- The user's relevant role or responsibility
- The supporting evidence reviewed
- Any conditions attached to continued access

#### Remove

Use this decision when access is unnecessary, expired, unsupported, unauthorized, or assigned to an inactive identity.

The reviewer must record:

- Why access is no longer required
- The requested removal date
- Whether immediate removal is necessary
- Any related group, role, or application assignment requiring review

#### Modify

Use this decision when the user still requires access, but the existing assignment is excessive, incomplete, duplicated, or inappropriate.

Examples include:

- Replacing a privileged role with a lower-privilege role
- Replacing direct access with approved group-based access
- Removing membership from an unrelated group
- Correcting an application assignment
- Updating the internal sponsor
- Assigning an expiration date

The reviewer must specify the exact change required.

#### Escalate

Use this decision when the reviewer cannot make a reliable determination.

Reasons for escalation may include:

- Conflicting evidence
- Missing business justification
- Unavailable resource owner
- Disputed access requirements
- Suspected unauthorized access
- A conflict of interest
- A possible security or privacy concern
- A request for access outside the approved standard

The reviewer must describe the issue and identify the appropriate Escalation Authority.

#### Temporarily Retain Through an Approved Exception

Use this decision only when access does not fully meet the standard requirements but must temporarily remain active for a documented operational reason.

The exception must include:

- Business justification
- Risk description
- Compensating controls
- Exception owner
- Approval authority
- Effective date
- Expiration date
- Scheduled re-review date

An exception must not be used to avoid normal remediation.

### 7.8 Phase 5: Review Reminders and Overdue Items

The following reminder schedule applies to manual reviews:

1. Send the initial review request on the review start date.
2. Send the first reminder at the midpoint of the review period.
3. Send a final reminder two business days before the deadline.
4. Notify the Backup Reviewer after the deadline is missed.
5. Escalate unresolved high-risk assignments to the Resource Owner and Escalation Authority.

The review record must document:

- When each reminder was sent
- Who received it
- Whether the reviewer responded
- Whether responsibility was transferred
- Whether the delay affected any high-risk assignment

A missing reviewer response must not be treated as approval.

For a production implementation using native Microsoft Entra access reviews, administrators must carefully configure the default action for assignments that reviewers do not address before the deadline.

A deny or remove-oriented default should be considered for high-risk access, subject to operational, contractual, and legal requirements.

### 7.9 Phase 6: Escalation

Escalated items must be sent to an appropriate decision-maker based on the affected resource.

Examples include:

- Administrative-role issues sent to the Security Lead or IT Manager
- Application-access issues sent to the Application Owner
- Guest-access issues sent to the internal sponsor and Identity and Access Management Administrator
- Vendor-access issues sent to the Vendor Relationship Manager
- Privacy concerns sent to the Privacy or Compliance representative
- Security concerns sent to the appropriate security-response authority

The escalation record must contain:

- Review identifier
- User or identity involved
- Resource affected
- Original reviewer
- Reason for escalation
- Available evidence
- Risk of retaining access
- Risk of removing access
- Required decision date
- Final decision
- Name of the decision-maker
- Decision rationale

High-risk escalations should be resolved within three business days.

If the matter cannot be resolved within that period, the Escalation Authority must decide whether to:

- Temporarily suspend access
- Restrict access
- Apply compensating controls
- Grant a time-limited exception
- Remove access

### 7.10 Phase 7: Remediation

After decisions are finalized, the Remediation Owner implements the approved changes.

Remediation actions may include:

- Removing an administrative-role assignment
- Removing a user from a security group
- Removing access to the Northstar Patient Records Portal
- Disabling or restricting a guest identity
- Removing a guest from `GRP-External-Vendors`
- Replacing direct access with an approved group-based assignment
- Reducing excessive privileges
- Correcting ownership or sponsorship information
- Adding an approved expiration date
- Closing an unsupported exception

Remediation should be completed within:

- Three business days for privileged or high-risk access
- Three business days for guest and external-vendor access
- Three business days for Northstar Patient Records Portal access
- Five business days for standard security-group membership
- Immediately when an assignment presents a confirmed critical security risk

If a remediation action cannot be completed on time, the Remediation Owner must document the reason, notify the Identity and Access Management Administrator, and request escalation.

### 7.11 Phase 8: Verification

The Verification Owner confirms that remediation was completed correctly.

Verification includes:

1. Review the original decision.
2. Inspect the current role, group, application, or guest assignment.
3. Confirm that the approved change is visible.
4. Confirm that the user no longer retains equivalent access through another direct or group-based path.
5. Confirm that no unintended access was introduced.
6. Record the verification date.
7. Record the name of the verifier.
8. Capture supporting evidence where appropriate.
9. Return failed or incomplete changes for correction.

A remediation item must not be marked complete solely because an administrator states that the change was made.

The evidence should demonstrate the resulting access state while avoiding unnecessary exposure of personal or sensitive information.

### 7.12 Phase 9: Review Closure

A review may be closed only when:

- Every assignment has a recorded decision
- Required escalations have been resolved or formally transferred
- Approved remediation has been completed
- Remediation has been verified
- Active exceptions have documented expiration dates
- Required evidence has been retained
- The final review summary has been completed
- Outstanding risks have been assigned to an accountable owner

The final review summary must include:

- Review identifier
- Resource reviewed
- Review period
- Total assignments reviewed
- Number approved
- Number removed
- Number modified
- Number escalated
- Number retained through exception
- Number of overdue decisions
- Remediation completion status
- Verification status
- Significant findings
- Lessons learned
- Recommended process improvements
- Date of closure
- Name of the person closing the review

### 7.13 Review Metrics

The following metrics should be recorded for each review cycle:

- Percentage of assignments reviewed by the deadline
- Number of approved assignments
- Number of denied or removed assignments
- Number of modified assignments
- Number of escalated assignments
- Number of expired exceptions
- Number of guest accounts without valid sponsors
- Number of assignments without sufficient justification
- Average number of days required for remediation
- Percentage of remediation actions completed on time
- Number of failed verification checks
- Number of overdue reviews
- Number of conflicts of interest identified
- Number of direct assignments recommended for group-based management

These measurements support governance improvement and must not be represented as actual operational results until review evidence has been created in the lab.

### 7.14 Manual Review Calendar

The proposed recurring calendar is:

#### Every Month

- Review Helpdesk Administrator assignments
- Review Security Reader assignments
- Review B2B guest accounts
- Review `GRP-External-Vendors` membership
- Review privileged direct assignments
- Review active exceptions

#### January, April, July, and October

- Review all security-group memberships
- Review authentication-method targeting groups
- Review Northstar Patient Records Portal assignments
- Review standard direct assignments
- Confirm group and application ownership
- Confirm guest sponsorship records

#### June and December

- Complete the semiannual governance assessment
- Review overdue findings
- Analyze review metrics
- Reassess licensing and automation opportunities
- Update risk classifications where necessary

#### Once Every 12 Months

- Review and approve this access-review design
- Validate the complete review inventory
- Confirm that portfolio statements remain accurate
- Document policy changes and the next review date

### 7.15 Production Automation Considerations

In an appropriately licensed production environment, the organization should assess native Microsoft Entra access reviews for:

- Recurring review schedules
- Reviews of group memberships
- Reviews of enterprise-application access
- Reviews of guest-user access
- Delegation to group owners or application owners
- Reviewer notifications and reminders
- Reviewer recommendations
- Decision tracking
- Automatic application of approved outcomes
- Review history and reporting
- Privileged-role reviews through Privileged Identity Management

Automation does not remove resource-owner accountability.

Review configuration, default decisions, reviewer selection, evidence retention, failed-remediation handling, and exception governance must still be monitored.

The organization must confirm current Microsoft licensing, feature availability, and technical prerequisites before representing any automated access-review capability as deployed.

## 8. Reviewer Decisions and Decision Criteria

Every assignment included in an access review must receive an explicit, evidence-based decision.

The reviewer must evaluate the user's current need for access rather than relying on previous approval, length of membership, job title alone, or the absence of a reported problem.

The permitted decisions are:

- Approve
- Remove
- Modify
- Escalate
- Temporarily retain through an approved exception

A blank response, missed deadline, or unavailable reviewer must not be interpreted as approval.

### 8.1 Minimum Decision Record

Each reviewed assignment must include:

- Review identifier
- Review date
- Identity display name or approved identifier
- Identity type, such as member or guest
- Resource reviewed
- Current assignment
- Decision
- Decision justification
- Evidence considered
- Reviewer name or role
- Required remediation
- Remediation deadline
- Exception expiration date, if applicable
- Escalation reference, if applicable
- Verification status
- Closure date

Sensitive identifiers and unnecessary personal information must not be included in publicly available evidence.

### 8.2 Approve

The reviewer should select **Approve** only when all applicable criteria are satisfied.

Approval criteria include:

- The identity is active and authorized.
- The access supports a current business, project, security, audit, or operational responsibility.
- The assigned permission is proportionate to the documented need.
- A lower level of access would not reasonably support the required function.
- The assignment does not create an unresolved conflict of interest.
- The assignment does not duplicate unnecessary access received through another role or group.
- Required sponsorship, ownership, or management approval remains valid.
- Relevant contract, engagement, or project dates have not expired.
- Supporting evidence is current and sufficient.
- Any required security, privacy, or acceptable-use obligations have been satisfied.

An approval must include a specific justification.

Acceptable example:

```text
Approved because the user remains responsible for security-monitoring activities and requires read-only access to tenant security information through the Security Reader role.
```

Insufficient example:

```text
User already has access.
```

Approval confirms only that access is appropriate at the time of review. It does not create permanent or indefinite entitlement.

### 8.3 Remove

The reviewer should select **Remove** when continued access is unnecessary, inappropriate, expired, unsupported, or unauthorized.

Removal criteria include:

- The account is inactive, disabled, or no longer authorized.
- The user has left the organization.
- The user changed departments, projects, or responsibilities.
- The access purpose no longer exists.
- The user no longer performs the function connected to the assignment.
- A temporary assignment or approved engagement has ended.
- A guest no longer has a valid internal sponsor.
- A vendor relationship, contract, project, or support period has ended.
- The reviewer cannot obtain sufficient justification after escalation.
- The access is excessive and no continuing level of access is required.
- The assignment duplicates access that is no longer necessary.
- The access was granted incorrectly or without approval.
- An exception has expired without an approved extension.
- The assignment presents an unacceptable security, privacy, or compliance risk.

The removal decision must identify:

- The reason for removal
- The resource affected
- The required completion date
- Whether immediate action is necessary
- Whether related assignments must also be examined
- Whether the account itself should remain active

Removing one assignment does not automatically require disabling the entire account. The remediation must be proportionate to the review finding.

### 8.4 Modify

The reviewer should select **Modify** when access remains necessary but the existing assignment is excessive, incomplete, duplicated, incorrectly structured, or no longer appropriate.

Modification may include:

- Replacing a privileged role with a lower-privilege role
- Removing one administrative role while retaining another justified role
- Replacing direct application access with approved group-based access
- Removing membership from an unrelated security group
- Correcting a group or application assignment
- Assigning or changing an access expiration date
- Updating the internal sponsor
- Updating the resource owner
- Restricting access to a narrower scope
- Removing duplicate access paths
- Applying an approved compensating control
- Correcting an inaccurate identity classification

The modification record must state:

- The current access
- The approved replacement or correction
- The reason for the change
- The remediation owner
- The completion deadline
- Any dependencies or risks
- How the revised access will be verified

The Remediation Owner must not interpret a modification request broadly. Only the specifically approved change should be implemented.

### 8.5 Escalate

The reviewer should select **Escalate** when a defensible decision cannot be made using the available authority or evidence.

Escalation criteria include:

- The business justification is missing or unclear.
- Available evidence is contradictory.
- The Resource Owner is unavailable.
- The user and Resource Owner dispute the access requirement.
- The reviewer has a conflict of interest.
- Privileged access appears excessive or unauthorized.
- The assignment might violate separation-of-duties requirements.
- The access might expose sensitive organizational information.
- A security, privacy, contractual, or compliance concern exists.
- Removing access could cause significant operational disruption.
- The requested access falls outside the approved standard.
- The reviewer suspects inappropriate account use.
- The reviewer lacks the authority or subject knowledge needed to decide.

The escalation record must identify:

- The issue requiring resolution
- The affected identity and resource
- Available supporting evidence
- The risk of retaining access
- The risk of removing access
- The recommended Escalation Authority
- The required response date
- Any temporary restrictions applied while the decision is pending

Escalation must not be used merely to avoid making a difficult decision.

### 8.6 Temporarily Retain Through an Approved Exception

The reviewer may recommend temporary retention when access does not fully meet the normal requirements but must remain active for a limited and documented operational reason.

An approved exception must contain:

- A clear business justification
- The requirement that cannot currently be met
- The risk created by retaining access
- The effect of immediately removing access
- Compensating controls
- The identity receiving the exception
- The affected resource
- The Exception Owner
- The Approval Authority
- The effective date
- A defined expiration date
- A scheduled re-review date
- A remediation or transition plan

Compensating controls may include:

- Additional activity monitoring
- More frequent manual review
- Reduced access scope
- Managerial oversight
- Restricted assignment duration
- Additional authentication requirements where available
- Documented limits on permitted activities
- Immediate removal if stated conditions are violated

An exception must not:

- Create permanent access by repeated informal renewal
- Be approved by the person receiving the exception
- Remain active without an expiration date
- Replace a feasible remediation action
- Be retained without an accountable owner
- Be renewed without a new risk assessment

At expiration, the access must be removed unless a new exception is formally reviewed and approved.

### 8.7 Decision Criteria for Administrative Roles

For Helpdesk Administrator and Security Reader assignments, the reviewer must determine:

- Whether the user remains active
- Whether the user currently performs the relevant function
- Whether the role is necessary for assigned duties
- Whether a less privileged role would be sufficient
- Whether the assignment is direct, permanent, eligible, or time-bound
- Whether the user has other administrative assignments
- Whether combined roles create excessive access
- Whether the assignment has a current business justification
- Whether the user is reviewing their own access
- Whether the assignment should have an expiration date
- Whether the account shows any known security concern

A privileged assignment must be removed or escalated when:

- No current privileged function can be demonstrated
- The assigned role exceeds the user's current responsibilities
- The user has left or changed roles
- The assignment was made only for a completed task
- The reviewer cannot obtain an independent approval
- The assignment creates an unresolved conflict of interest
- The account is inactive, compromised, or under investigation

Read-only administrative access must still receive a high-risk review because visibility into security and identity information can expose sensitive organizational details.

### 8.8 Decision Criteria for Security Groups

For each security-group membership, the reviewer must determine:

- Whether the group has a documented purpose
- Whether the user meets the group's eligibility criteria
- Whether the membership matches the user's current department or function
- Whether the group grants access to an application, policy, or sensitive resource
- Whether the user receives duplicate access elsewhere
- Whether the membership is direct or inherited
- Whether the group has an accountable owner
- Whether the group remains operationally necessary
- Whether the membership should be replaced, modified, or removed
- Whether the group should be archived or deleted

Membership must not be approved solely because the group appears harmless. The reviewer must understand what access, targeting, or control the group supports.

Groups used to target authentication methods or security controls require additional scrutiny because an incorrect membership could cause a user to receive or avoid a security requirement unintentionally.

### 8.9 Decision Criteria for the Northstar Patient Records Portal

For each Northstar Patient Records Portal assignment, the reviewer must determine:

- Whether the account is active
- Whether the user has a current business need
- Whether the user belongs to an appropriate function or project
- Whether the assignment remains consistent with the application's intended audience
- Whether the user still requires direct application access
- Whether the assignment duplicates access through another access path
- Whether any required training or acknowledgment remains current
- Whether direct assignment remains the appropriate method
- Whether access should be removed, restricted, or replaced with group-based access
- Whether the assignment aligns with the application's assignment-required configuration

The reviewer must not infer access from the presence of the application registration alone. The enterprise-application assignment and the user's effective access must be examined.

Because the lab currently uses direct user assignment, the documentation must describe group-based assignment only as a production recommendation unless that configuration is later implemented and validated.

### 8.10 Decision Criteria for B2B Guests

For each B2B guest identity, the reviewer must determine:

- Whether the guest has a valid internal sponsor
- Whether the sponsor confirms a continuing business relationship
- Whether the invitation was redeemed when access is required
- Whether the guest's external identity remains valid
- Whether the guest still requires assigned groups or applications
- Whether the engagement or contract end date has passed
- Whether the guest has been inactive beyond the approved threshold
- Whether the guest belongs to unrelated internal groups
- Whether the guest has privileged access
- Whether an expiration date or re-review date is documented
- Whether continued access is proportionate to the external relationship

The guest must be removed from unnecessary resources when the business relationship ends.

The guest account may be disabled or removed when:

- No valid sponsor exists
- The guest no longer requires access to any resource
- The engagement has ended
- The guest's identity cannot be reliably confirmed
- The sponsor does not respond after escalation
- The account presents a security risk
- No sufficient justification is available

An accepted invitation does not establish a permanent right to continued access.

### 8.11 Decision Criteria for `GRP-External-Vendors`

For each member of `GRP-External-Vendors`, the reviewer must determine:

- Whether the individual is an approved external user
- Whether the vendor relationship remains active
- Whether a named internal sponsor remains accountable
- Whether the group supports a current access requirement
- Whether the individual's work remains within the approved scope
- Whether the contract, project, or support period has expired
- Whether the member belongs to additional unrelated groups
- Whether access should have a defined expiration date
- Whether a lower or narrower level of access is available
- Whether continued membership is supported by written evidence

Membership must be removed when:

- The vendor engagement ends
- The assigned work is completed
- The sponsor withdraws approval
- The identity can no longer be verified
- The approved access period expires
- The vendor user violates applicable security requirements
- The reviewer cannot establish a current business need

A vendor contract alone is not sufficient evidence for retaining every vendor user's access. Each individual's assignment must be reviewed separately.

### 8.12 Decision Criteria for Direct Assignments

For each direct assignment, the reviewer must determine:

- Why access was granted directly
- Whether the reason remains valid
- Whether a role-based group is available
- Whether the direct assignment bypasses the normal access model
- Whether the user receives duplicate access through a group
- Whether the assignment requires an expiration date
- Whether the assignment is privileged or high risk
- Whether the access should be retained, converted, restricted, or removed

Direct assignments should be retained only when they are justified and appropriately controlled.

A recommendation to replace direct access with group-based access must not be marked as implemented until the group membership, resource assignment, and resulting access have been configured and verified.

### 8.13 Inactive and Disabled Accounts

An inactive or disabled account must not automatically retain access.

The reviewer must determine:

- Why the account is inactive or disabled
- Whether the status is temporary
- Whether the person remains associated with the organization
- Whether the account is required for an approved future purpose
- Whether group, role, or application assignments should be removed
- Whether a documented exception exists
- Whether the account should remain disabled, be restored, or be deleted

Privileged assignments should normally be removed from inactive or disabled user accounts unless a documented and independently approved exception exists.

Account inactivity must be evaluated using an established threshold and reliable evidence. The lab must not claim that sign-in activity was reviewed unless the required activity data was available and actually examined.

### 8.14 Missing or Incomplete Evidence

When evidence is missing or incomplete, the reviewer should:

1. Request clarification from the Resource Owner, manager, sponsor, or user.
2. Set a response deadline.
3. Record the evidence request.
4. Evaluate the risk of temporarily retaining access.
5. Escalate high-risk or privileged assignments.
6. Remove, restrict, or suspend access when sufficient justification cannot be obtained.
7. Record the final decision and rationale.

Missing evidence must not automatically result in approval.

For low-risk access, the Escalation Authority may permit short-term retention while evidence is collected. High-risk and privileged access require stronger justification and shorter resolution periods.

### 8.15 Conflicts of Interest

A reviewer must declare a conflict of interest when:

- Reviewing their own access
- Reviewing access they originally approved without independent oversight
- Reviewing the access of a close reporting relationship where impartiality is affected
- Reviewing a decision that could personally benefit them
- Reviewing access when they lack sufficient independence
- Reviewing access affected by a personal or organizational dispute

When a conflict exists:

1. Record the conflict.
2. Transfer the item to the Backup Reviewer.
3. Escalate the item if the Backup Reviewer is also conflicted.
4. Retain evidence showing who made the final decision.
5. Prevent the interested individual from serving as the sole approver.

A conflict does not automatically mean access must be removed. It means the decision requires an independent reviewer.

### 8.16 No-Response Decisions

Failure to respond must not be treated as evidence that access remains appropriate.

For manual reviews:

1. Send the scheduled reminders.
2. Assign the Backup Reviewer after the deadline.
3. Escalate unresolved high-risk assignments.
4. Assess whether temporary restriction or suspension is required.
5. Record the delay and final resolution.

For a future native Microsoft Entra access-review implementation, default decisions for unanswered review items must be deliberately configured based on resource risk, operational impact, legal requirements, and organizational policy.

The organization should avoid using automatic approval as the default for privileged, guest, vendor, or sensitive application access.

### 8.17 Reviewer Comments and Justification Standards

Reviewer comments must be:

- Specific
- Current
- Relevant to the resource
- Supported by available evidence
- Written in professional language
- Sufficient for a future auditor or control owner to understand
- Free from unnecessary personal or sensitive information

Acceptable justification:

```text
Approved. The user remains assigned to IT support and requires the Helpdesk Administrator role to perform approved password-reset and user-support responsibilities. The assignment will be reviewed again during the next monthly cycle.
```

Acceptable removal justification:

```text
Remove. The external support engagement ended, and the internal sponsor confirmed that the guest no longer requires membership in GRP-
## 9. Escalation and Exception Management

Access-review findings that cannot be resolved through the standard decision process must be escalated to an appropriate authority.

Temporary exceptions may be granted only when there is a documented operational need, the associated risk is understood, compensating controls are applied, and a defined expiration date is established.

Escalation and exception processes must not be used to avoid timely access removal, preserve unsupported access, or bypass least-privilege requirements.

### 9.1 Escalation Objectives

The escalation process is designed to:

- Resolve disputed or uncertain access decisions
- Assign unresolved risk to an accountable authority
- Protect critical operations while maintaining security
- Address conflicts of interest
- Obtain decisions from individuals with appropriate authority
- Prevent high-risk access from remaining active indefinitely
- Document the reasoning behind the final decision
- Ensure that remediation occurs after the escalation is resolved

### 9.2 Escalation Triggers

An access-review item must be escalated when:

- The reviewer cannot determine whether access remains necessary.
- The business justification is missing, incomplete, or contradictory.
- The Resource Owner, manager, or sponsor disputes the reviewer's decision.
- The Primary Reviewer has a conflict of interest.
- The Backup Reviewer also has a conflict of interest.
- The reviewer lacks the authority or technical knowledge required to decide.
- Privileged access appears excessive, unauthorized, or inconsistent with the user's responsibilities.
- An assignment might violate separation-of-duties requirements.
- A guest account has no confirmed internal sponsor.
- A vendor user's contract, project, or support status cannot be confirmed.
- Removing access could create significant operational disruption.
- Retaining access could create an unacceptable security, privacy, contractual, or compliance risk.
- An approved remediation action cannot be completed within the required period.
- The affected user or Resource Owner refuses to provide requested evidence.
- A reviewer misses the deadline for a high-risk assignment.
- Suspicious activity or a possible security incident is identified.
- An exception request falls outside the authority of the standard reviewer.

### 9.3 Risk-Based Escalation Levels

Escalated items should be classified according to their potential impact.

#### Level 1: Standard Escalation

A Level 1 escalation applies when the issue presents limited immediate risk and can reasonably be resolved through the standard Resource Owner or Backup Reviewer.

Examples include:

- Missing clarification for a standard group membership
- Uncertainty about a user's departmental assignment
- Duplicate standard access
- Missing group ownership information
- A routine review deadline missed by the Primary Reviewer

Level 1 items should be resolved within five business days.

#### Level 2: High-Risk Escalation

A Level 2 escalation applies when the issue affects privileged access, sensitive applications, guests, vendors, or significant operational responsibilities.

Examples include:

- An unsupported Helpdesk Administrator assignment
- An unsupported Security Reader assignment
- Uncertain access to the Northstar Patient Records Portal
- A B2B guest without a confirmed sponsor
- An external vendor with an expired engagement
- A significant separation-of-duties concern
- An overdue high-risk remediation action
- A disputed removal that could affect an important business process

Level 2 items should be resolved within three business days.

#### Level 3: Critical Escalation

A Level 3 escalation applies when continued access could create an immediate or severe security, privacy, legal, or operational risk.

Examples include:

- Suspected account compromise
- Confirmed unauthorized privileged access
- Access retained by a person who has left the organization
- A guest or vendor identity associated with suspicious activity
- Access that could expose highly sensitive information
- Evidence that an account is being used by an unauthorized person
- A critical remediation action that could not be completed
- A confirmed violation of security requirements

Level 3 items require immediate notification to the appropriate security and management authority.

Access should be temporarily suspended, restricted, or removed when necessary to reduce immediate risk while the issue is investigated.

### 9.4 Escalation Authorities

The appropriate Escalation Authority depends on the resource and the nature of the issue.

Potential escalation authorities include:

- Identity and Access Management Administrator
- Security Administrator or Security Lead
- IT Manager
- Application Owner
- Group Owner
- Vendor Relationship Manager
- Guest Sponsor
- Privacy or Compliance representative
- Contract Owner
- Senior management representative
- Security incident-response authority

The selected authority must have sufficient knowledge, independence, and organizational authority to make the required decision.

The person receiving the access must not serve as the sole Escalation Authority for their own assignment.

### 9.5 Escalation Record

Every escalation must produce a documented record containing:

- Escalation identifier
- Related access-review identifier
- Date escalated
- Identity involved
- Identity type
- Resource affected
- Current access
- Original reviewer
- Reason for escalation
- Risk classification
- Available evidence
- Missing or contradictory evidence
- Risk of retaining access
- Risk of removing access
- Temporary restrictions, if any
- Assigned Escalation Authority
- Required decision date
- Final decision
- Decision rationale
- Required remediation
- Remediation owner
- Verification status
- Closure date

The escalation identifier should use the following format:

```text
ESC-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Examples include:

```text
ESC-2026-HELPDESK-001
ESC-2026-NORTHSTAR-002
ESC-2026-EXTERNAL-VENDORS-003
```

### 9.6 Escalation Process

The escalation process consists of the following steps:

1. The reviewer records why a standard decision cannot be made.
2. The reviewer identifies the affected identity, resource, and current access.
3. The reviewer classifies the risk as standard, high, or critical.
4. The Identity and Access Management Administrator assigns the appropriate Escalation Authority.
5. Available evidence is provided to the Escalation Authority.
6. Temporary restrictions are considered based on the risk.
7. The Escalation Authority reviews the business need and associated risk.
8. The Escalation Authority records a final decision and rationale.
9. The Remediation Owner implements the approved action.
10. The Verification Owner confirms the resulting access state.
11. The escalation record is closed and linked to the original review.

### 9.7 Temporary Controls During Escalation

Access must not automatically remain unchanged while an escalation is pending.

Depending on risk, temporary controls may include:

- Temporarily suspending access
- Removing a privileged role
- Restricting access to a lower privilege level
- Removing the user from a sensitive group
- Temporarily disabling a guest account
- Restricting access to a specific application
- Increasing activity monitoring
- Requiring additional managerial oversight
- Limiting the permitted duration or scope of access
- Preventing new access assignments until the issue is resolved

Temporary controls must be proportionate to the identified risk.

The escalation record must document:

- The temporary action taken
- Who approved it
- When it was implemented
- When it must be reassessed
- The conditions for restoring or permanently removing access

### 9.8 Final Escalation Decisions

The Escalation Authority must select one of the following final outcomes:

- Approve continued access
- Remove access
- Modify access
- Temporarily suspend access
- Grant a time-limited exception
- Refer the issue for security investigation
- Refer the issue to another authorized decision-maker

The final decision must include:

- A specific rationale
- Evidence considered
- Risks evaluated
- Required action
- Responsible owner
- Completion deadline
- Any continuing conditions
- The next review date, if applicable

A final approval must not be based solely on seniority, urgency, or prior access.

### 9.9 Exception Eligibility

An exception may be considered only when:

- A legitimate operational need exists.
- Immediate compliance with the normal requirement is not reasonably achievable.
- Removing access would cause a documented and significant operational problem.
- The risk of temporary retention has been assessed.
- Appropriate compensating controls are available.
- An accountable Exception Owner has been assigned.
- An authorized individual independently approves the exception.
- A defined expiration date is established.
- A plan exists to resolve the underlying control gap.

Examples of potentially valid exceptions include:

- Temporary privileged access required to complete an approved technical task
- Short-term continuation of vendor access while a documented contract extension is finalized
- Temporary direct application access while an approved group-based model is being configured and tested
- Short-term retention of access during an authorized transition between responsibilities
- Temporary access required to support incident response or service recovery

The existence of operational inconvenience alone is not sufficient to justify an exception.

### 9.10 Prohibited Exceptions

An exception must not be approved when:

- No valid business need exists.
- The request is intended only to avoid the standard approval process.
- The account is known or reasonably suspected to be compromised.
- The identity of the user cannot be verified.
- The access would violate a legal or contractual obligation.
- The requester refuses to accept required compensating controls.
- No accountable Exception Owner is available.
- No expiration date can be established.
- The exception would create an unacceptable or uncontrolled risk.
- The same control gap has been repeatedly extended without a remediation plan.
- The person receiving the exception is the sole approver.

Where an exception is prohibited, access must be removed, restricted, or escalated to the appropriate security authority.

### 9.11 Exception Request Requirements

Every exception request must include:

- Exception identifier
- Related access-review identifier
- Request date
- Requester
- Identity receiving the exception
- Resource affected
- Current access
- Standard requirement not being met
- Business justification
- Operational effect of removing access
- Security and governance risks
- Proposed compensating controls
- Exception Owner
- Approval Authority
- Effective date
- Expiration date
- Re-review date
- Remediation or transition plan
- Required monitoring
- Final approval or rejection
- Closure status

The exception identifier should use the following format:

```text
EXC-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Examples include:

```text
EXC-2026-HELPDESK-001
EXC-2026-NORTHSTAR-002
EXC-2026-EXTERNAL-VENDORS-003
```

### 9.12 Exception Risk Assessment

Before an exception is approved, the following factors must be assessed:

- Sensitivity of the affected resource
- Privilege level of the requested access
- Type of identity receiving access
- Duration of the exception
- Potential effect of misuse
- Potential exposure of organizational information
- Existing security controls
- Availability of monitoring
- User, guest, or vendor history
- Availability of a lower-risk alternative
- Operational effect of denying the request
- Ability to remove access promptly
- Whether similar exceptions already exist
- Whether the exception creates a separation-of-duties conflict

The risk assessment must classify the exception as:

- Low
- Medium
- High
- Critical

Critical exceptions should not normally be approved. If a critical exception is considered unavoidable, it requires senior security and management authorization, immediate compensating controls, close monitoring, and the shortest practical duration.

### 9.13 Compensating Controls

Compensating controls must reduce the risk created by the temporary exception.

Possible compensating controls include:

- Reducing the scope of access
- Assigning a lower-privilege role
- Limiting the access period
- Increasing the review frequency
- Requiring managerial supervision
- Conducting additional activity monitoring
- Restricting access to approved tasks
- Requiring separate approval for sensitive actions
- Documenting all activities completed under the exception
- Removing unrelated group or application assignments
- Requiring immediate reporting of changes in responsibility
- Performing an event-driven review before the exception expires

Compensating controls must be specific and measurable.

Insufficient example:

```text
The user will be monitored.
```

Acceptable example:

```text
The Security Lead will review relevant account activity every five business days while the temporary assignment remains active. Any activity outside the approved support scope will result in immediate suspension and escalation.
```

The lab must not claim that technical monitoring occurred unless the required data was available and actually reviewed.

### 9.14 Exception Approval

The Approval Authority must be independent of the person receiving the exception.

Approval must confirm:

- The business need is valid.
- The risk was reviewed.
- Lower-risk alternatives were considered.
- Compensating controls are sufficient.
- The duration is no longer than necessary.
- A remediation or transition plan exists.
- The Exception Owner accepts responsibility.
- The exception does not violate a prohibited-exception condition.

Approval must be recorded in writing.

Verbal approval may support an urgent temporary response, but it must be documented as soon as practical and must not substitute for the formal exception record.

### 9.15 Exception Duration

Every exception must have a specific effective date and expiration date.

Exceptions must use the shortest practical duration.

The following design limits apply:

- Privileged-role exception: Maximum of 30 days
- Guest or vendor exception: Maximum of 30 days
- Northstar Patient Records Portal exception: Maximum of 30 days
- Standard group-membership exception: Maximum of 90 days
- Critical operational exception: Duration determined by the incident or recovery requirement, with frequent reassessment

These periods represent internal governance targets for the fictional Northstar Health environment. They are not default Microsoft Entra limits.

An exception automatically becomes invalid when its expiration date is reached unless a new request is reviewed and approved.

### 9.16 Exception Monitoring

The Exception Owner must monitor the exception throughout its approved period.

Monitoring activities include:

- Confirming that the business need still exists
- Confirming that the identity remains authorized
- Checking that compensating controls remain active
- Reviewing relevant changes in responsibilities
- Monitoring the approach of the expiration date
- Reporting suspected misuse or policy violations
- Confirming progress on the remediation plan
- Initiating an event-driven review when circumstances change

High-risk exceptions should be reviewed at least monthly and before expiration.

A change in risk, identity status, sponsorship, contract status, or resource sensitivity may require immediate reassessment.

### 9.17 Exception Renewal

An exception must not be renewed automatically.

A renewal requires:

- A new or updated exception request
- Confirmation that the business need still exists
- An updated risk assessment
- Evidence that compensating controls were followed
- An explanation of why remediation was not completed
- An updated remediation plan
- A new expiration date
- Independent approval

Repeated renewal must trigger additional escalation.

The Escalation Authority should determine whether:

- The underlying control must be permanently redesigned
- Additional resources are required for remediation
- The access should be modified
- The exception should be rejected
- The risk requires senior management review

Repeated exceptions must not become an informal method of granting permanent access.

### 9.18 Exception Expiration and Closure

Before an exception expires, the Exception Owner must determine whether to:

- Remove the access
- Modify the access
- Complete the planned transition
- Submit a new exception request
- Escalate an unresolved control gap

At expiration:

1. The exception status is changed to expired.
2. Access is removed or modified as required.
3. The resulting access state is verified.
4. Supporting evidence is retained.
5. The exception record is marked closed.
6. Unresolved risk is escalated.

The closure record must include:

- Final access decision
- Remediation completed
- Remediation date
- Remediation Owner
- Verification result
- Verification Owner
- Closure date
- Any remaining risk
- Related follow-up action

### 9.19 Emergency Access Decisions

A security incident or critical service disruption may require an emergency access decision before the normal review and approval process can be completed.

Emergency access must:

- Address a documented urgent requirement
- Use the minimum necessary privilege
- Be limited to the shortest practical duration
- Have an accountable owner
- Be recorded as soon as practical
- Be reviewed after the emergency
- Be removed when the urgent requirement ends
- Produce evidence of use and closure where available

Emergency access must not become permanent because the incident or disruption has ended.

A post-event review should determine:

- Why emergency access was required
- Who authorized it
- What access was granted
- What activities were completed
- Whether the access was used within the approved scope
- When the access was removed
- Whether the emergency process requires improvement

The lab must describe emergency-access controls as a governance design unless emergency access is deliberately simulated and documented.

### 9.20 Security Incident Escalation

When a review identifies possible account compromise, unauthorized access, or suspicious activity, the item must be referred to the appropriate security-response authority.

The access-review process must not replace security incident handling.

The reviewer should:

1. Preserve relevant evidence.
2. Avoid making unsupported conclusions.
3. Notify the appropriate security authority.
4. Record the date and time of escalation.
5. Apply authorized temporary restrictions.
6. Avoid deleting evidence needed for investigation.
7. Track the access decision separately from the incident determination.
8. Verify any access removal or restriction.

Only confirmed facts should be included in review records. Suspected activity must be clearly labeled as suspected rather than confirmed.

### 9.21 Exception Register

The Identity and Access Management Administrator must maintain a central exception register.

The register should contain:

- Exception identifier
- Related review identifier
- Identity
- Resource
- Exception category
- Risk rating
- Exception Owner
- Approval Authority
- Effective date
- Expiration date
- Re-review date
- Compensating controls
- Remediation plan
- Current status
- Closure date

The exception register should be reviewed monthly to identify:

- Exceptions approaching expiration
- Expired exceptions
- Repeated renewals
- Missing owners
- Missing compensating controls
- Overdue remediation
- Multiple exceptions affecting the same identity
- Multiple exceptions affecting the same resource
- Patterns that indicate a broader control weakness

### 9.22 Escalation and Exception Metrics

The following metrics should be tracked:

- Number of escalations opened
- Number of escalations resolved
- Average escalation-resolution time
- Number of high-risk and critical escalations
- Number of temporary restrictions applied
- Number of exceptions requested
- Number of exceptions approved
- Number of exceptions rejected
- Number of expired exceptions
- Number of renewed exceptions
- Number of repeatedly renewed exceptions
- Percentage of exceptions closed by the expiration date
- Percentage of remediation actions completed on time
- Number of exceptions without complete evidence
- Number of security incidents identified through access review

These metrics must not be presented as actual lab results until supporting review and exception records have been created.

### 9.23 Evidence Requirements

Evidence for escalations and exceptions may include:

- Review worksheets
- Written business justifications
- Reviewer comments
- Resource-owner decisions
- Sponsor confirmations
- Contract or project dates
- Screenshots of relevant assignments
- Exported role, group, application, or guest records
- Remediation records
- Verification evidence
- Exception approval records
- Monitoring records
- Closure summaries

Public portfolio evidence must exclude or redact:

- Passwords
- Authentication secrets
- Access tokens
- Sensitive personal information
- Private contact information
- Confidential contract details
- Unnecessary tenant identifiers
- Information that could expose the environment to misuse

Evidence must be sufficient to demonstrate the control without exposing sensitive information.

### 9.24 Lab Implementation Status

This section defines a governance design for escalation and exception management.

The lab may demonstrate this design through:

- A manual escalation template
- A manual exception request
- A fictional review scenario
- A documented reviewer decision
- A sample remediation record
- A sample verification record
- A redacted exception register

Until those artifacts are created, the portfolio must state that the escalation and exception process was designed, not operationally implemented.

Any simulated evidence must be clearly labeled as:

```text
Sample
```

```text
Simulation
```

or:

```text
Design Validation
```

Sample records must not be represented as evidence of a real security incident, real patient-data access, or a production access decision.

### 9.25 Escalation and Exception Summary

The following rules apply throughout the access-review process:

- Uncertain high-risk access must be escalated.
- Missing evidence must not result in automatic approval.
- Temporary exceptions require explicit approval.
- Every exception requires an accountable owner.
- Every exception requires an expiration date.
- Compensating controls must be specific and measurable.
- Repeated renewals require additional scrutiny.
- Critical risks may require immediate access restriction.
- Remediation must be verified before closure.
- Simulated lab records must be clearly identified.
- Public evidence must protect sensitive information.
## 10. Evidence and Audit Documentation

Access reviews must produce sufficient evidence to demonstrate that access was examined, decisions were made by accountable reviewers, required changes were completed, and remediation was independently verified where practical.

Evidence must be accurate, relevant, traceable, and protected from unauthorized disclosure or modification.

The evidence process must also distinguish among:

- Controls technically implemented and validated in the lab
- Controls manually simulated
- Governance procedures documented as designs
- Premium Microsoft Entra capabilities assessed but not deployed

### 10.1 Evidence Objectives

Access-review evidence should allow an authorized reviewer or auditor to determine:

- What resource was reviewed
- Why the review was required
- When the review occurred
- Which identities and assignments were included
- Who prepared the review
- Who performed the review
- What evidence the reviewer considered
- What decision was made for each assignment
- Why each decision was made
- Whether escalation or exception handling was required
- What remediation action was approved
- Who implemented the remediation
- When remediation was completed
- Whether the resulting access state was verified
- Whether unresolved risks remain
- When the review was formally closed

Evidence must be sufficient to reconstruct the review process without relying only on the memory of the participants.

### 10.2 Required Evidence for Each Review

Each completed access review should contain the following evidence:

- Unique access-review identifier
- Resource name and type
- Review scope
- Resource-risk classification
- Review frequency
- Review start date
- Review deadline
- Review completion date
- Resource Owner
- Primary Reviewer
- Backup Reviewer
- Remediation Owner
- Verification Owner
- Access list or assignment snapshot
- Decision record for each assignment
- Reviewer justification for each decision
- Supporting business justification
- Escalation records, where applicable
- Exception records, where applicable
- Remediation evidence
- Verification evidence
- Final review summary
- Review closure record
- Outstanding risk or follow-up actions

If one person performs multiple review roles in the lab, the evidence must identify the roles performed and document the resulting separation-of-duties limitation.

### 10.3 Access Snapshot

A current access snapshot must be captured at or near the beginning of each review.

The snapshot should identify:

- Identity display name or approved identifier
- Identity type, such as member or guest
- Account status, where available
- Resource name
- Assignment type
- Group membership
- Application assignment
- Administrative-role assignment
- Assignment source, where available
- Internal sponsor, where applicable
- Resource Owner
- Relevant expiration date
- Date the snapshot was captured
- Person who captured the snapshot

The snapshot represents the access state used to begin the review.

If changes occur after the snapshot is captured, they must be:

- Recorded in the review notes
- Assessed for inclusion in the current review
- Examined through an event-driven review when appropriate
- Reflected in the subsequent review cycle

The review record must not imply that the access snapshot continuously reflects real-time changes.

### 10.4 Acceptable Evidence Sources

Evidence may be collected from:

- Microsoft Entra admin center screenshots
- Microsoft Entra role-assignment records
- Security-group membership records
- Enterprise-application assignment records
- B2B guest-user records
- Audit logs available to the lab
- Application registration records
- Service-principal configuration records
- Authentication-method targeting configuration
- Manual review worksheets
- Written reviewer comments
- Resource-owner confirmations
- Guest-sponsor confirmations
- Vendor or project status records
- Approved exception forms
- Escalation records
- Remediation screenshots
- Verification records
- PowerShell or Microsoft Graph exports created in a later automation phase
- Git commit history for policy and template changes

Only evidence that was actually captured or examined may be referenced as part of a completed review.

Planned exports, unavailable logs, and proposed monitoring must not be described as evidence already collected.

### 10.5 Screenshot Requirements

Screenshots used as evidence should:

- Clearly show the relevant resource or configuration
- Include enough context to explain what is being demonstrated
- Show the relevant assignment, membership, role, or status
- Include a capture date in the file name or evidence register
- Avoid unnecessary browser tabs, desktop information, or personal details
- Exclude passwords, secrets, tokens, and authentication codes
- Use redaction when sensitive information is visible
- Remain readable after being uploaded to the repository
- Be linked to a review identifier
- Include a short description in the evidence register

A screenshot should demonstrate one clear control or review result whenever practical.

A screenshot must not be altered in a way that changes the meaning of the evidence. Permitted changes include:

- Cropping irrelevant screen areas
- Redacting sensitive information
- Adding a simple callout to identify the relevant field
- Resizing the image while preserving readability

Any annotation or redaction must not conceal information necessary to understand the control result.

### 10.6 Screenshot File-Naming Standard

Use a consistent file-naming format:

```text
[REVIEW-ID]_[RESOURCE]_[EVIDENCE-TYPE]_[DATE].[EXTENSION]
```

Examples include:

```text
AR-2026-MONTHLY-HELPDESK-001_helpdesk-role_access-snapshot_2026-01-05.png
AR-2026-QUARTERLY-NORTHSTAR-001_northstar-portal_assignments_2026-01-08.png
AR-2026-MONTHLY-GUESTS-002_b2b-guests_review-list_2026-01-06.png
AR-2026-MONTHLY-GUESTS-002_external-vendors_remediation_2026-01-10.png
```

File names should:

- Use lowercase for descriptive elements
- Use hyphens between words
- Use underscores between major file-name components
- Use the `YYYY-MM-DD` date format
- Avoid spaces
- Avoid personal email addresses
- Avoid confidential identifiers
- Avoid vague names such as `screenshot1.png`

### 10.7 Manual Review Worksheet

Each manual review should use a structured worksheet.

The worksheet should contain the following columns or fields:

```text
Review ID
Review Date
Identity
Identity Type
Resource
Current Assignment
Assignment Source
Account Status
Business Need
Resource Owner
Reviewer
Decision
Decision Justification
Evidence Reference
Required Remediation
Remediation Owner
Remediation Deadline
Remediation Status
Verification Owner
Verification Status
Exception ID
Escalation ID
Closure Date
Notes
```

The worksheet may be stored as:

- A Markdown file
- A comma-separated values file
- An Excel workbook
- A controlled governance-system record in a production environment

Public versions must use fictional, sanitized, or redacted information.

### 10.8 Decision Evidence

Each decision must be supported by enough information to explain why access was retained, removed, modified, escalated, or temporarily accepted through an exception.

Evidence for an approval may include:

- Current responsibility or project assignment
- Resource-owner confirmation
- Current group eligibility
- Continuing administrative function
- Active guest sponsorship
- Active vendor engagement
- Valid application-access requirement
- Current training or acknowledgment record, where required

Evidence for removal may include:

- Termination or departure confirmation
- Role or department change
- Completed project
- Expired engagement
- Withdrawn sponsorship
- Inactive or disabled account status
- Resource-owner confirmation that access is no longer required
- Expired exception
- Evidence that the assignment was incorrect or unauthorized

Evidence for modification may include:

- Identification of excessive privilege
- Duplicate assignment analysis
- Availability of a lower-privilege role
- Approved group-based access design
- Corrected sponsor or ownership information
- A required expiration date
- A narrower access requirement

The evidence record must avoid unsupported statements and conclusions.

### 10.9 Escalation Evidence

When a decision is escalated, retain:

- Escalation identifier
- Related review identifier
- Original reviewer comments
- Reason for escalation
- Risk classification
- Evidence available at escalation
- Evidence requested
- Temporary control applied
- Escalation Authority
- Final decision
- Decision rationale
- Required remediation
- Remediation evidence
- Verification evidence
- Closure date

The escalation record must clearly distinguish between:

- Confirmed facts
- Reviewer concerns
- Unverified information
- Suspected security issues
- Final authorized conclusions

Suspected activity must not be documented as confirmed misconduct without supporting evidence and proper investigation.

### 10.10 Exception Evidence

When access is retained through an exception, retain:

- Exception identifier
- Related review identifier
- Exception request
- Business justification
- Risk assessment
- Approval record
- Exception Owner
- Compensating controls
- Effective date
- Expiration date
- Re-review date
- Monitoring evidence
- Remediation or transition plan
- Renewal record, if applicable
- Expiration or closure evidence

The exception evidence must demonstrate that the exception was:

- Independently approved
- Limited in duration
- Assigned to an accountable owner
- Subject to specific compensating controls
- Reviewed before expiration
- Closed or formally renewed

### 10.11 Remediation Evidence

Every removal or modification decision must produce remediation evidence.

Remediation evidence should show:

- Review identifier
- Decision being implemented
- Resource affected
- Identity affected
- Approved change
- Remediation Owner
- Remediation date
- Result of the change
- Errors or limitations encountered
- Follow-up action required
- Evidence file or record reference

Examples include:

- Screenshot showing removal of a role assignment
- Screenshot showing removal from a security group
- Screenshot showing removal of an enterprise-application assignment
- Screenshot showing removal from `GRP-External-Vendors`
- Screenshot showing a guest account was disabled
- Export created before and after the change
- Administrator change record
- PowerShell or Microsoft Graph output from a later automation phase

Evidence must show the resulting access state, not only the administrator's intention to make the change.

### 10.12 Verification Evidence

Verification evidence must demonstrate that remediation produced the approved result.

The Verification Owner should confirm:

- The approved change matches the implemented change.
- Removed access no longer appears.
- Modified access matches the approved level.
- No equivalent access remains through another known assignment path.
- No unintended access was introduced.
- The evidence is linked to the correct review item.
- The verification date and verifier are recorded.

Acceptable verification evidence may include:

- A post-remediation screenshot
- A post-remediation export
- A comparison of before-and-after assignment records
- A documented inspection of effective access
- A controlled verification checklist

A statement such as the following is insufficient by itself:

```text
Access was removed.
```

A sufficient verification statement should identify what was checked:

```text
Verified that the guest no longer appears as a member of GRP-External-Vendors. The current group-membership record was inspected after remediation and linked to the review evidence.
```

### 10.13 Evidence Register

The Identity and Access Management Administrator should maintain a central evidence register.

The register should contain:

```text
Evidence ID
Review ID
Escalation ID
Exception ID
Evidence Type
Resource
Description
File Name
Capture Date
Captured By
Sensitivity Classification
Redaction Status
Repository Location
Retention Review Date
Verification Status
Notes
```

Each evidence item should receive a unique identifier using the following format:

```text
EVD-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Examples include:

```text
EVD-2026-HELPDESK-001
EVD-2026-NORTHSTAR-002
EVD-2026-EXTERNAL-VENDORS-003
```

The evidence register helps prevent:

- Missing files
- Duplicate evidence
- Unclear file ownership
- Evidence that cannot be linked to a review
- Accidental publication of sensitive records
- Retention of unnecessary information

### 10.14 Evidence Repository Structure

A proposed repository structure is:

```text
evidence/
├── access-reviews/
│   ├── administrative-roles/
│   ├── security-groups/
│   ├── northstar-portal/
│   ├── b2b-guests/
│   └── external-vendors/
├── escalations/
├── exceptions/
├── remediation/
├── verification/
├── templates/
└── evidence-register.md
```

If evidence is published in a public GitHub repository, it must contain only fictional, sanitized, or appropriately redacted information.

Sensitive operational records should be stored in a restricted repository or approved organizational evidence system rather than a public source-code repository.

### 10.15 Evidence Sensitivity Classification

Evidence should be classified before storage or publication.

#### Public

Evidence approved for public portfolio use.

Examples include:

- Policy documents
- Empty templates
- Fictional review scenarios
- Sanitized screenshots
- Redacted diagrams
- High-level control descriptions

#### Internal

Evidence intended for authorized organizational personnel.

Examples include:

- Detailed access-review worksheets
- Internal group memberships
- Application-assignment lists
- Reviewer names
- Internal remediation records

#### Confidential

Evidence that could create security, privacy, contractual, or operational risk if exposed.

Examples include:

- Sensitive identity details
- Privileged-access information
- Detailed security findings
- Vendor contract details
- User activity information
- Security incident records
- Private tenant configuration records

#### Restricted

Evidence requiring the highest protection.

Examples include:

- Passwords
- Client secrets
- Access tokens
- Authentication codes
- Private keys
- Recovery codes
- Highly sensitive personal information
- Unredacted security incident evidence

Restricted information must never be committed to the public repository.

### 10.16 Redaction Requirements

Before publishing evidence, redact or remove:

- Passwords
- Client secrets
- Access tokens
- Refresh tokens
- Authentication codes
- Recovery codes
- Private keys
- Personal phone numbers
- Personal email addresses not created for the fictional lab
- Unnecessary user principal names
- Tenant identifiers when disclosure is unnecessary
- Subscription identifiers
- Confidential organization names
- Sensitive contract information
- Real patient or healthcare information
- Unnecessary IP addresses or device identifiers
- Information that could support unauthorized access

Redaction must be permanent in the published file.

Placing a shape over sensitive information without permanently removing or flattening the hidden content might not provide sufficient protection.

The redacted evidence should remain understandable after sensitive information is removed.

### 10.17 Prohibited Evidence

The following must not be stored in the public portfolio repository:

- Real patient information
- Real clinical records
- Real employee records
- Passwords or authentication secrets
- Access or refresh tokens
- Private keys
- Unredacted personal documents
- Confidential employer data
- Confidential school records
- Private contracts
- Security incident details from a real organization
- Screenshots from an environment the user is not authorized to disclose
- Information belonging to another individual without permission

If sensitive information is accidentally committed, deleting the visible file alone might not remove it from repository history. The exposure must be treated as a security issue, the secret must be revoked or rotated where applicable, and repository history must be remediated appropriately.

### 10.18 Evidence Integrity

Evidence must be protected against unauthorized alteration.

Integrity controls may include:

- Read-only storage after review closure
- Restricted write permissions
- Git version history for policy and template changes
- File checksums for finalized evidence packages
- Controlled naming conventions
- Review and approval records
- Version numbers
- Change logs
- Backup copies
- Documented correction procedures

If evidence is corrected after review closure:

1. Preserve the original where appropriate.
2. Record what was changed.
3. Record why the change was necessary.
4. Record who authorized the correction
5. 5. Record the date the correction was made.
6. Preserve an audit trail linking the corrected evidence to the original record.
7. Notify affected reviewers or control owners when the correction changes a previous conclusion.

Evidence must not be edited to make an unsuccessful control appear successful.

### 10.19 Evidence Version Control

Finalized evidence and documentation should use a consistent version-control approach.

Each document should include or be associated with:

- Document title
- Document owner
- Version number
- Effective date
- Last updated date
- Change description
- Person responsible for the change
- Approval status
- Next review date

A proposed version format is:

```text
Major.Minor
```

Examples include:

```text
1.0
1.1
2.0
```

Use the version numbers as follows:

- Increase the minor version for small corrections, clarifications, or formatting improvements.
- Increase the major version for significant changes to scope, review frequency, decision criteria, responsibilities, or control requirements.
- Record every approved change in the change log.
- Do not overwrite significant prior versions without preserving an appropriate history.

Git commit history may support document version tracking, but important policy changes should also be summarized in the document change log.

### 10.20 Evidence Retention

Evidence must be retained long enough to support governance, audit, compliance, investigation, and continuous-improvement requirements.

For this fictional lab design, the proposed retention periods are:

- Access-review worksheets: Three years after review closure
- Reviewer decision records: Three years after review closure
- Escalation records: Three years after closure
- Exception records: Three years after expiration or closure
- Remediation evidence: Three years after review closure
- Verification evidence: Three years after review closure
- Final review summaries: Three years after review closure
- Policy versions and change logs: Three years after supersession
- Empty templates and public design documents: Retained while relevant to the project
- Sensitive temporary working files: Deleted securely when no longer required

These periods are internal design targets for the fictional Northstar Health environment. They must not be represented as legal or regulatory retention requirements.

A production organization must establish retention periods based on:

- Applicable laws and regulations
- Contractual obligations
- Organizational records-management requirements
- Privacy requirements
- Audit requirements
- Security investigation needs
- Litigation-hold requirements
- Data-minimization principles
- Resource sensitivity

Evidence subject to a legal hold, investigation hold, or other authorized preservation requirement must not be deleted until the hold is formally released.

### 10.21 Evidence Disposal

Evidence that reaches the end of its approved retention period should be reviewed and securely disposed of unless a valid reason exists to retain it.

The disposal process should include:

1. Confirm the retention period has expired.
2. Confirm no investigation, audit, legal hold, or unresolved review requires the evidence.
3. Obtain approval from the responsible evidence owner.
4. Delete the evidence from active storage.
5. Remove unnecessary backup copies where organizational procedures permit.
6. Record the disposal date.
7. Record the person who authorized the disposal.
8. Record the method used.
9. Retain a minimal disposal record where required.

Evidence must not be retained indefinitely merely because storage is available.

Public portfolio evidence should also be reviewed periodically to confirm that it remains appropriate, accurate, and free from sensitive information.

### 10.22 Evidence Access Control

Access to stored review evidence must follow least-privilege and need-to-know principles.

Evidence access should be limited according to role:

- Reviewers may access the records required for their assigned reviews.
- Resource Owners may access evidence concerning resources they own.
- Remediation Owners may access the decisions necessary to implement changes.
- Verification Owners may access the decisions and remediation evidence needed for verification.
- Security or compliance personnel may access evidence required for authorized oversight.
- Public users may access only approved, sanitized portfolio artifacts.

Sensitive evidence should not be accessible merely because a person has general repository access.

A production evidence repository should support:

- Role-based permissions
- Restricted write access
- Controlled sharing
- Access logging
- Periodic permission reviews
- Removal of access when responsibilities change
- Protection against unauthorized download or modification
- Separate storage for public and confidential evidence

The public GitHub repository must not be used as the authoritative storage location for confidential access-review evidence.

### 10.23 Evidence Review Before Publication

Before any evidence is added to a public repository, the publisher must complete a disclosure review.

The review should confirm:

- The evidence belongs to the lab or is authorized for publication.
- All identities are fictional, sanitized, or appropriately redacted.
- No real patient, employee, student, client, or vendor information is visible.
- No passwords, secrets, tokens, or private keys are present.
- Tenant and subscription identifiers are removed when unnecessary.
- Personal email addresses and phone numbers are removed.
- Browser tabs, bookmarks, notifications, and desktop information do not reveal sensitive data.
- Image metadata does not expose unnecessary information.
- Redaction is permanent.
- The evidence accurately represents the control result.
- Simulated evidence is clearly labeled.
- Failed or incomplete controls are not presented as successfully implemented.
- The file name follows the evidence naming standard.
- The evidence is linked to the appropriate policy or control description.

Evidence that fails this review must not be published until the issue is corrected.

### 10.24 Evidence Status Labels

Each evidence item must use an accurate status label.

Approved labels include:

#### Implemented and Validated

Use when a control was configured in the lab and evidence confirms the resulting configuration or behavior.

Example:

```text
Implemented and Validated
```

#### Manually Simulated

Use when a governance activity was performed manually using fictional or controlled lab information.

Example:

```text
Manually Simulated
```

#### Design Validation

Use when a sample scenario or template was used to evaluate how the proposed process would operate.

Example:

```text
Design Validation
```

#### Designed, Not Implemented

Use when a control or process was documented but not configured or performed.

Example:

```text
Designed, Not Implemented
```

#### Assessed, Not Deployed

Use when a technical capability, licensing option, or production feature was researched but not enabled.

Example:

```text
Assessed, Not Deployed
```

#### Partially Implemented

Use only when the implemented and unimplemented components are clearly identified.

Example:

```text
Partially Implemented: Direct application assignment was configured and validated. Automated recurring access reviews were not deployed.
```

Evidence must not use broad labels that imply more implementation than the artifacts demonstrate.

### 10.25 Simulation Labeling

Any fictional review, escalation, exception, remediation, or verification record must be clearly labeled.

The label should appear:

- Near the top of the document
- In the evidence register
- In the file description
- In the related portfolio explanation

Recommended label:

```text
Simulation Notice

This record is a fictional lab artifact created to demonstrate a proposed identity-governance process. It does not document a real production access review, security incident, patient environment, employee decision, or vendor engagement.
```

A simulation should use:

- Fictional identities
- Fictional organizational roles
- Fictional business justifications
- Fictional dates where appropriate
- Sanitized screenshots
- Clearly described assumptions

Simulation records must not imitate or expose confidential information from a real employer, healthcare organization, school, client, patient, or vendor.

### 10.26 Failed and Incomplete Controls

Evidence must accurately disclose failed, incomplete, unavailable, or unverified controls.

Examples include:

- A role assignment could not be removed.
- A reviewer did not respond.
- Verification was not completed.
- Required activity data was unavailable.
- A feature required licensing not available in the lab.
- A screenshot did not capture the expected result.
- A PowerShell or Microsoft Graph command failed.
- A group-based assignment model was designed but not implemented.
- Access-review automation was assessed but not deployed.

The evidence record should document:

- What was attempted
- What result was expected
- What actually occurred
- Why the activity was unsuccessful or incomplete
- Whether risk remains
- What corrective action is proposed
- Who owns the follow-up action
- When the issue should be reassessed

An incomplete control must not be represented as successful merely because the policy design is complete.

### 10.27 Audit Traceability

Each access-review item should be traceable across the complete lifecycle.

The record should allow an authorized auditor to follow this sequence:

```text
Access Snapshot
    ↓
Reviewer Assessment
    ↓
Decision
    ↓
Escalation or Exception, if required
    ↓
Remediation
    ↓
Verification
    ↓
Closure
```

Traceability should be maintained using:

- Review identifiers
- Escalation identifiers
- Exception identifiers
- Evidence identifiers
- Consistent file names
- Evidence-register entries
- Cross-references between records
- Version history
- Closure summaries

An evidence item that cannot be connected to a specific review, resource, or decision should not be treated as complete audit evidence.

### 10.28 Evidence Quality Review

Before closing an access review, the Identity and Access Management Administrator should assess the quality of the evidence package.

The quality review should confirm:

- All required records are present.
- Every assignment has an explicit decision.
- Decision justifications are specific and current.
- Evidence supports the recorded decisions.
- Escalations are linked to the original review.
- Exceptions include approval and expiration dates.
- Remediation evidence reflects the required action.
- Verification evidence confirms the resulting state.
- Sensitive information is appropriately protected.
- Status labels are accurate.
- Simulations are clearly identified.
- File names follow the naming standard.
- Review and evidence identifiers are consistent.
- Outstanding risks have accountable owners.
- The final summary matches the underlying records.

Incomplete evidence packages must be corrected or documented as incomplete before review closure.

### 10.29 Evidence Quality Criteria

Evidence should satisfy the following criteria:

#### Relevant

The evidence directly supports the access-review activity or control conclusion.

#### Reliable

The source is appropriate, and the evidence has not been altered in a misleading way.

#### Complete

The evidence includes sufficient context to understand the resource, identity, decision, and result.

#### Timely

The evidence was captured close enough to the activity to represent the relevant access state.

#### Traceable

The evidence is linked to a review identifier, resource, decision, and responsible person.

#### Protected

Sensitive information is appropriately restricted, sanitized, or redacted.

#### Reproducible

An authorized reviewer can understand how the conclusion was reached and, where practical, repeat the validation.

#### Accurate

The evidence does not claim that a control, feature, review, or result exists when it was only proposed or partially completed.

### 10.30 Reviewer and Auditor Access

Authorized reviewers and auditors should receive only the access necessary to evaluate the evidence.

Audit access should be:

- Read-only where practical
- Limited to the relevant review scope
- Approved by an accountable owner
- Time-bound when access is temporary
- Removed after the audit or assessment ends
- Recorded when the repository supports access logging

Providing audit access must not expose unrelated confidential evidence.

Public portfolio reviewers should receive only sanitized artifacts that demonstrate the methodology without exposing protected information.

### 10.31 Evidence Correction Procedure

If an error is found in review evidence:

1. Do not silently replace the record.
2. Identify the incorrect evidence.
3. Assess whether the error affected the review decision.
4. Preserve the original record where appropriate.
5. Create a corrected version.
6. Document the reason for the correction.
7. Record the correction date.
8. Record the person making the correction.
9. Obtain authorization when the correction is significant.
10. Update the evidence register.
11. Notify affected reviewers or owners.
12. Reopen the review if the error changes the decision or risk conclusion.

Minor formatting corrections that do not change meaning may follow a simplified process, but the version history should still reflect the update.

### 10.32 Evidence Loss or Corruption

If required evidence is lost, corrupted, or unavailable:

1. Document what evidence is missing.
2. Determine whether an authorized backup exists.
3. Attempt to reproduce the evidence from the current configuration where appropriate.
4. Clearly label reproduced evidence with the new capture date.
5. Assess whether the original review conclusion remains supportable.
6. Notify the responsible control owner.
7. Record the incident in the evidence register.
8. Reopen or repeat the affected review when necessary.
9. Identify corrective measures to prevent recurrence.

Reproduced evidence must not be presented as if it had been captured on the original review date.

### 10.33 Git Repository Controls

When Git is used to store public policies, templates, and sanitized evidence:

- Use descriptive commit messages.
- Review staged files before committing.
- Confirm that secrets and sensitive records are excluded.
- Use a `.gitignore` file for temporary or sensitive file patterns.
- Keep raw confidential evidence outside the public repository.
- Review repository history before publication.
- Avoid placing personal identifiers in commit messages.
- Use separate folders for policies, templates, and approved evidence.
- Correct inaccurate documentation through traceable commits.
- Treat accidental secret publication as a security issue.

A proposed commit-message format is:

```text
docs: add access review evidence requirements
```

Additional examples include:

```text
docs: add manual access review template
docs: update guest review criteria
docs: clarify Free-tier implementation status
evidence: add sanitized Northstar assignment validation
fix: correct access review identifier format
```

Commit history supports change traceability, but it does not replace the evidence register or formal review records.

### 10.34 Proposed Lab Evidence Package

The access-review design may later be validated with a sanitized sample evidence package containing:

```text
evidence/
├── access-reviews/
│   ├── administrative-roles/
│   │   └── sample-helpdesk-role-review.md
│   ├── security-groups/
│   │   └── sample-group-membership-review.md
│   ├── northstar-portal/
│   │   └── sample-northstar-access-review.md
│   ├── b2b-guests/
│   │   └── sample-guest-access-review.md
│   └── external-vendors/
│       └── sample-external-vendor-review.md
├── escalations/
│   └── sample-escalation-record.md
├── exceptions/
│   └── sample-exception-record.md
├── remediation/
│   └── sample-remediation-record.md
├── verification/
│   └── sample-verification-record.md
├── templates/
│   ├── access-review-template.md
│   ├── escalation-template.md
│   ├── exception-template.md
│   └── evidence-register-template.md
└── evidence-register.md
```

These artifacts must be created and validated before the portfolio states that a manual access review was simulated.

The policy design alone demonstrates governance planning, not execution of the review lifecycle.

### 10.35 Audit Documentation Summary

The following evidence rules apply:

- Every review must have a unique identifier.
- Every assignment must have an explicit decision.
- Every decision must have a specific justification.
- Every evidence item must be traceable to a review or governance activity.
- Removal and modification decisions require remediation evidence.
- Remediation must be verified before closure.
- Escalations and exceptions require separate records.
- Exceptions require an owner, approval, compensating controls, and an expiration date.
- Evidence must be protected according to its sensitivity.
- Restricted information must never be committed to a public repository.
- Public evidence must be fictional, sanitized, or permanently redacted.
- Simulated evidence must be clearly labeled.
- Failed and incomplete controls must be disclosed accurately.
- Corrections must preserve an appropriate audit trail.
- Retention and disposal must follow documented requirements.
- Portfolio claims must match the evidence available.

  ## 11. Free-Tier Manual Access Review Procedure

This procedure defines how Northstar Health manually reviews access when native Microsoft Entra access-review automation is not available in the lab environment.

The procedure uses the Microsoft Entra admin center, documented access snapshots, structured review worksheets, reviewer decisions, manual remediation, and post-remediation verification.

This procedure is a compensating governance process. It does not provide all the scheduling, notification, recommendation, reporting, or automatic-remediation capabilities available through native Microsoft Entra access reviews.

### 11.1 Procedure Objectives

The manual review procedure is designed to:

- Identify who currently has access
- Confirm whether each assignment remains necessary
- Detect excessive, duplicate, expired, or unsupported access
- Review privileged administrative assignments
- Review security-group memberships
- Review Northstar Patient Records Portal assignments
- Review B2B guest identities
- Review `GRP-External-Vendors` membership
- Record explicit reviewer decisions
- Remove or modify unnecessary access
- Verify that approved changes were completed
- Produce sanitized evidence for lab validation
- Demonstrate an access-governance process without overstating tenant capabilities

### 11.2 Manual Review Limitations

The manual procedure has the following limitations:

- Reviews are not automatically scheduled by Microsoft Entra.
- Reviewers do not receive native access-review notifications.
- Reviewer recommendations are not automatically generated.
- Review decisions are not automatically collected in the Microsoft Entra access-review interface.
- Denied access is not automatically removed.
- Missed reviewer responses are not automatically processed.
- Review history must be maintained manually.
- Evidence must be captured and organized manually.
- Remediation must be performed by an authorized administrator.
- Verification must be completed separately.
- Human error may affect completeness, consistency, and timeliness.
- The process becomes difficult to scale as the number of identities and resources increases.

These limitations must be disclosed in the project documentation.

### 11.3 Prerequisites

Before beginning a manual access review, confirm that:

- The reviewer is authorized to examine the resource.
- The Resource Owner is identified.
- The Primary Reviewer is identified.
- The Backup Reviewer is identified.
- The Remediation Owner is identified.
- The Verification Owner is identified where practical.
- The review scope is documented.
- The review frequency is known.
- The applicable review criteria are available.
- A review identifier has been assigned.
- An evidence location has been prepared.
- The current tenant configuration is accessible.
- Sensitive information can be sanitized or redacted before publication.

The reviewer must not make changes while collecting the initial access snapshot unless an immediate security risk requires urgent action.

### 11.4 Required Manual Review Artifacts

Each manual review should use the following artifacts:

- Access-review worksheet
- Initial access snapshot
- Reviewer decision record
- Escalation record, if applicable
- Exception record, if applicable
- Remediation record
- Verification record
- Final review summary
- Evidence-register entry

The proposed template location is:

```text
evidence/templates/
```

The proposed review-record location is:

```text
evidence/access-reviews/
```

Until these templates and records are created, the manual procedure must be described as designed but not yet executed.

### 11.5 Step 1: Define the Review

Create a new review record and document:

- Review identifier
- Resource name
- Resource type
- Risk classification
- Review purpose
- Review scope
- Review frequency
- Review start date
- Review deadline
- Resource Owner
- Primary Reviewer
- Backup Reviewer
- Remediation Owner
- Verification Owner
- Escalation Authority
- Evidence location

The review scope must be specific.

Acceptable example:

```text
Review all active Helpdesk Administrator assignments in the Northstar Health Microsoft Entra lab tenant.
```

Insufficient example:

```text
Review administrator access.
```

### 11.6 Step 2: Capture the Initial Access Snapshot

Capture the access state at the beginning of the review.

The snapshot should include, where available:

- Identity display name
- Identity type
- Account status
- Resource
- Current assignment
- Assignment type
- Assignment source
- Group membership
- Administrative role
- Application assignment
- Guest sponsor
- Assignment or engagement expiration date
- Snapshot date
- Person who captured the snapshot

The snapshot may be recorded through:

- A sanitized screenshot
- A manual worksheet
- An approved export
- Microsoft Graph or PowerShell output created during a later automation phase

The snapshot must reflect information that was actually available and examined.

### 11.7 Step 3: Record the Access Population

Add every identity or assignment in scope to the manual review worksheet.

For each review item, record:

```text
Review ID
Identity
Identity Type
Resource
Current Assignment
Assignment Source
Account Status
Resource Owner
Reviewer
Business Need
Decision
Decision Justification
Evidence Reference
Required Remediation
Remediation Owner
Remediation Deadline
Verification Status
Notes
```

The number of worksheet entries should be compared with the access snapshot to confirm that no visible assignment was omitted.

If an assignment cannot be explained, record it as requiring investigation rather than excluding it from the worksheet.

### 11.8 Step 4: Collect Supporting Information

Collect information necessary to evaluate continued access.

Supporting information may include:

- Current role or function
- Department or project assignment
- Resource-owner confirmation
- Manager confirmation
- Administrative responsibility
- Application-access requirement
- Guest-sponsor confirmation
- Vendor engagement status
- Contract or project end date
- Previous approval
- Existing exception
- Relevant account status
- Available activity information
- Training or acknowledgment status, where required

Previous approval may provide context, but it does not replace current justification.

If information cannot be verified, mark it as unavailable or unconfirmed.

### 11.9 Step 5: Perform the Reviewer Assessment

The Primary Reviewer evaluates every item in the worksheet.

For each assignment, determine:

- Is the identity active?
- Does the identity still require access?
- Is the access connected to a current responsibility?
- Is the access level appropriate?
- Is a lower-privilege option available?
- Is the access duplicated through another assignment?
- Does the assignment create a conflict of interest?
- Does the assignment create a separation-of-duties concern?
- Does a guest have a valid internal sponsor?
- Does a vendor have an active engagement?
- Has a temporary assignment expired?
- Is an approved exception still valid?
- Is the available evidence sufficient?

The reviewer must assess every entry individually.

### 11.10 Step 6: Record the Decision

Select one outcome for each assignment:

- Approve
- Remove
- Modify
- Escalate
- Temporarily retain through an approved exception

Every decision must have a specific justification.

Approval example:

```text
Approved. The user remains assigned to IT support and requires the Helpdesk Administrator role for approved password-reset and user-support responsibilities.
```

Removal example:

```text
Remove. The external support engagement has ended, and the sponsor confirmed that the guest no longer requires membership in GRP-External-Vendors.
```

Modification example:

```text
Modify. The user still requires application access, but the current assignment provides more access than required. Replace it with the approved lower-privilege assignment.
```

Escalation example:

```text
Escalate. The application-access requirement could not be confirmed, and the Resource Owner did not provide sufficient evidence before the review deadline.
```

Exception example:

```text
Temporary exception requested. Access is required for an approved transition period and will expire after 14 days. Additional oversight and a scheduled re-review will apply.
```

Comments such as `keep`, `looks fine`, or `previously approved` are insufficient.

### 11.11 Step 7: Conduct the Administrative-Role Review

To review Helpdesk Administrator and Security Reader assignments:

1. Sign in to the Microsoft Entra admin center using an authorized account.
2. Navigate to the Microsoft Entra roles and administrators area.
3. Open the relevant administrative role.
4. Inspect the current assignments.
5. Record each assigned identity in the review worksheet.
6. Confirm whether each user remains active.
7. Confirm whether each user still performs the relevant function.
8. Check for other administrative roles assigned to the same user.
9. Determine whether the combined assignments are necessary.
10. Record an explicit decision for each assignment.
11. Capture sanitized evidence of the assignment list.
12. Escalate unsupported or excessive privileged access.

For this lab, the role review includes:

- Helpdesk Administrator
- Security Reader

The review must not state that Privileged Identity Management was used unless it is later licensed, configured, and validated.

### 11.12 Step 8: Conduct the Security-Group Review

To review security-group membership:

1. Navigate to the Microsoft Entra groups area.
2. Select the group in scope.
3. Confirm the group name and documented purpose.
4. Confirm the assigned Group Owner.
5. Inspect the current membership.
6. Record every visible member in the review worksheet.
7. Confirm that each member meets the eligibility criteria.
8. Check whether the membership remains connected to the user's function.
9. Identify duplicate or unrelated memberships.
10. Determine whether the group still has an active purpose.
11. Record a decision for each member.
12. Capture sanitized membership evidence.
13. Record any ownership or group-purpose issue.

The group review includes the six lab security groups and any additional security groups later created.

Groups used to target authentication methods require additional scrutiny because membership can affect how security requirements are applied.

### 11.13 Step 9: Conduct the Northstar Portal Review

To review access to the Northstar Patient Records Portal:

1. Navigate to Enterprise applications.
2. Open the Northstar Patient Records Portal.
3. Confirm that user assignment remains required.
4. Open the user and group assignment area.
5. Inspect the current assignments.
6. Record each assigned identity in the review worksheet.
7. Confirm the current business need for every assignment.
8. Check whether access is assigned directly or through a group.
9. Identify duplicate or unnecessary access paths.
10. Record a decision for every assignment.
11. Capture sanitized evidence of the assignment list.
12. Record any recommended changes to the future access model.

The application registration and enterprise application must not be treated as the same object in the evidence.

The application registration represents the application's identity configuration. The enterprise application's service principal represents the application's presence and access assignments in the tenant.

Because direct user assignment was implemented in the lab, each direct assignment must be reviewed individually.

Group-based application assignment must remain documented as a proposed production improvement unless it is later configured and tested.

### 11.14 Step 10: Conduct the B2B Guest Review

To review B2B guest identities:

1. Navigate to the Microsoft Entra users area.
2. filter the user list by external or guest user type.
3. Record every guest identity in scope.
4. Confirm whether the invitation was accepted where access is required.
5. Identify the internal sponsor.
6. Confirm the continuing external relationship.
7. Review the guest's group memberships.
8. Review the guest's application assignments.
9. Check for privileged-role assignments.
10. Confirm the engagement or access-expiration date.
11. Identify guests without valid sponsorship.
12. Record a decision for each guest and assignment.
13. Capture sanitized evidence.
14. Escalate unsupported or suspicious access.

An accepted invitation does not justify indefinite access.

If no valid sponsor can confirm a continuing need, the guest's access should be removed or escalated within the applicable remediation period.

### 11.15 Step 11: Review `GRP-External-Vendors`

To review `GRP-External-Vendors`:

1. Navigate to the Microsoft Entra groups area.
2. Open `GRP-External-Vendors`.
3. Confirm the group's documented purpose.
4. Confirm the assigned Group Owner.
5. Inspect the current membership.
6. Record each member in the review worksheet.
7. Confirm that each member is an approved external identity.
8. Confirm the internal sponsor.
9. Confirm that the vendor engagement remains active.
10. Confirm the expected end date.
11. Check for unrelated group memberships.
12. Record an explicit decision for each member.
13. Capture sanitized evidence of the group membership.
14. Escalate missing sponsorship or expired relationships.

The completed B2B invitation and membership configured in the lab may be used as the basis for a fictional manual review scenario.

The scenario must not be described as completed until the associated worksheet, decisions, evidence, remediation, and verification records are created.

### 11.16 Step 12: Send Manual Reminders

Use the following reminder schedule:

1. Send the initial request on the review start date.
2. Send a reminder at the midpoint of the review period.
3. Send a final reminder two business days before the deadline.
4. Transfer outstanding items to the Backup Reviewer after the deadline.
5. Escalate unresolved high-risk items.

Record:

- Reminder date
- Recipient
- Review identifier
- Outstanding items
- Response received
- Transfer to Backup Reviewer
- Escalation status

The lab may demonstrate reminders through fictional email or Markdown templates. Such records must be labeled as simulations.

### 11.17 Step 13: Resolve Escalations and Exceptions

For each escalated item:

1. Create an escalation identifier.
2. Record the reason for escalation.
3. Assign the risk level.
4. Identify the Escalation Authority.
5. Provide available evidence.
6. Set a decision deadline.
7. Consider temporary restrictions.
8. Record the final decision.
9. Assign any required remediation.
10. Link the escalation to the review worksheet.

For each exception:

1. Create an exception identifier.
2. Document the business need.
3. Assess the risk.
4. Identify compensating controls.
5. Assign an Exception Owner.
6. Obtain independent approval.
7. Set an expiration date.
8. Define a re-review date.
9. Document the remediation or transition plan.
10. Add the exception to the exception register.

An exception must not be approved informally or left without an expiration date.

### 11.18 Step 14: Implement Remediation

The Remediation Owner performs each approved removal or modification.

Remediation may include:

- Removing an administrative role
- Removing a security-group membership
- Removing a Northstar Patient Records Portal assignment
- Removing a guest from `GRP-External-Vendors`
- Disabling an unsupported guest identity
- Correcting a Resource Owner
- Updating a guest sponsor
- Reducing excessive access
- Recording an approved expiration date
- Closing an expired exception

Before making a change, confirm:

- The correct identity has been selected.
- The correct resource has been selected.
- The approved decision is clear.
- The administrator is authorized to perform the action.
- The effect of the change is understood.
- Required evidence has been captured.

After making the change:

- Record the completion date.
- Record the Remediation Owner.
- Capture sanitized evidence.
- Record any error or limitation.
- Send the item for verification.

### 11.19 Step 15: Verify Remediation

The Verification Owner confirms the resulting access state.

Verification should include:

1. Review the approved decision.
2. Reopen the relevant role, group, application, or guest record.
3. Confirm that the approved change appears.
4. Confirm that removed access no longer appears.
5. Confirm that modified access matches the approved level.
6. Check known alternative access paths.
7. Confirm that no unintended access was introduced.
8. Capture verification evidence.
9. Record the verification date.
10. Record the verification result.

The available verification results are:

```text
Verified
```

```text
Failed Verification
```

```text
Partially Verified
```

```text
Unable to Verify
```

A failed, partial, or unavailable verification must include an explanation and follow-up action.

### 11.20 Step 16: Complete the Final Review Summary

Prepare a final review summary containing:

- Review identifier
- Resource reviewed
- Review period
- Total assignments reviewed
- Number approved
- Number removed
- Number modified
- Number escalated
- Number retained through exception
- Number overdue
- Number successfully remediated
- Number successfully verified
- Outstanding findings
- Separation-of-duties limitations
- Evidence-package location
- Lessons learned
- Recommended improvements
- Review closure date
- Name or role of the person closing the review

The final summary must agree with the detailed worksheet and evidence register.

### 11.21 Step 17: Close the Review

Close the review only when:

- Every assignment has a decision.
- Required escalations have been resolved or formally transferred.
- Exceptions are approved and recorded.
- Required remediation has been completed.
- Remediation has been verified.
- Evidence has been organized.
- Sensitive information has been protected.
- The final summary has been completed.
- Outstanding risks have accountable owners.
- The next review date has been recorded.

If any requirement remains incomplete, record the review as:

```text
Open
```

or:

```text
Closed with Outstanding Actions
```

Do not mark an incomplete review as fully closed.

### 11.22 Manual Review Status Labels

Use one of the following labels for each manual review:

#### Designed, Not Executed

Use when the procedure and templates exist, but the review has not been performed.

```text
Designed, Not Executed
```

#### Simulation in Progress

Use when a fictional manual review has started but is incomplete.

```text
Simulation in Progress
```

#### Manually Simulated and Validated

Use when the complete fictional review lifecycle has been performed and supported by sanitized evidence.

```text
Manually Simulated and Validated
```

#### Closed with Outstanding Actions

Use when decisions were completed but remediation, verification, or another required action remains open.

```text
Closed with Outstanding Actions
```

#### Assessed, Not Deployed

Use for native Microsoft Entra access-review capabilities that were evaluated but not configured.

```text
Assessed, Not Deployed
```

The project must not use `Manually Simulated and Validated` until the worksheet, decisions, remediation, verification, evidence register, and final summary are complete.

### 11.23 Manual Review Quality Check

Before closing a manual review, confirm:

- The access snapshot is complete.
- Every visible assignment appears in the worksheet.
- Every assignment has an explicit decision.
- Every approval has a current justification.
- Removal and modification decisions identify exact actions.
- Escalations have owners and deadlines.
- Exceptions have expiration dates.
- Remediation evidence is available.
- Verification evidence is available.
- Roles and separation-of-duties limitations are documented.
- Evidence status labels are accurate.
- Simulated records are clearly labeled.
- Sensitive information has been removed or redacted.
- The evidence register is complete.
- The final summary matches the underlying records.
- The next review date is recorded.

Any failed quality check must be corrected or documented before closure.

### 11.24 Manual Process Risks

The manual procedure introduces risks including:

- Missed review dates
- Incomplete access lists
- Inconsistent reviewer decisions
- Insufficient evidence
- Delayed remediation
- Failure to follow up on exceptions
- Accidental omission of a user or assignment
- Incorrect manual data entry
- Unauthorized exposure of screenshots
- Weak separation of duties
- Difficulty identifying indirect access paths
- Limited scalability
- Dependence on individual reviewers

These risks should be reduced through:

- Standard templates
- Consistent identifiers
- Central review calendars
- Backup reviewers
- Evidence registers
- Decision-quality checks
- Remediation deadlines
- Verification procedures
- Periodic governance assessments
- Future automation where licensing and organizational requirements support it

### 11.25 Free-Tier Lab Positioning

The portfolio should use accurate wording such as:

```text
Designed a risk-based access-review framework for privileged roles, security groups, enterprise-application assignments, and B2B guest access. Documented a Free-tier manual review procedure with reviewer decisions, escalation, exception management, remediation, verification, and audit-evidence requirements.
```

After completing a full fictional review scenario, the portfolio may state:

```text
Manually simulated and validated an access-review lifecycle for selected Microsoft Entra assignments using structured review records, explicit reviewer decisions, remediation evidence, and post-remediation verification.
```

The portfolio must not state:

```text
Implemented automated Microsoft Entra access reviews.
```

unless native access reviews are later licensed, configured, tested, and supported by evidence.

### 11.26 Manual-to-Automated Transition

If appropriate licensing becomes available, the organization should evaluate moving from the manual procedure to native Microsoft Entra access reviews.

The transition assessment should consider:

- Resources eligible for native review
- Required licenses
- Reviewer configuration
- Recurrence schedules
- Review duration
- Reminder settings
- Default decisions
- Recommendations for reviewers
- Automatic application of results
- Guest-user review settings
- Privileged-role review through Privileged Identity Management
- Failed result handling
- Evidence export and retention
- Owner and reviewer training
- Pilot testing
- Rollback and exception procedures

The organization should begin with a limited pilot before expanding automation to all resources.

Manual records should remain available until the automated process has been validated and historical evidence has been retained appropriately.

### 11.27 Procedure Summary

The manual access-review process follows this sequence:

```text
Define Review
    ↓
Capture Access Snapshot
    ↓
Record Access Population
    ↓
Collect Supporting Information
    ↓
Perform Reviewer Assessment
    ↓
Record Explicit Decisions
    ↓
Resolve Escalations and Exceptions
    ↓
Implement Remediation
    ↓
Verify the Resulting Access State
    ↓
Complete the Final Summary
    ↓
Close the Review
```

The following rules apply:

- Every review requires a unique identifier.
- Every assignment requires an explicit decision.
- Missing responses do not constitute approval.
- Privileged, guest, vendor, and sensitive application access receive increased scrutiny.
- Remediation must be supported by evidence.
- Remediation must be verified before full closure.
- Simulations must be clearly labeled.
- Sensitive information must not be published.
- Manual procedures must not be described as native automation.
- Portfolio claims must match completed evidence.

  ## 12. Licensing and Advanced-Feature Assessment

This section evaluates Microsoft Entra licensing and advanced identity-governance capabilities relevant to the Northstar Health access-review design.

The lab currently uses Microsoft Entra ID Free capabilities. Therefore, native Microsoft Entra access reviews, Privileged Identity Management, and other premium governance features must not be represented as configured or operationally implemented.

Licensing, product packaging, prerequisites, and feature availability may change. A production organization must verify current Microsoft documentation, licensing terms, tenant configuration, and organizational requirements before purchasing or deploying a capability.

### 12.1 Assessment Objectives

The licensing and advanced-feature assessment is designed to:

- Identify governance capabilities unavailable in the current lab
- Separate implemented controls from proposed improvements
- Determine which features could strengthen a production environment
- Identify possible licensing and technical prerequisites
- Evaluate whether automation could reduce manual-review risk
- Prevent inaccurate portfolio claims
- Support future implementation planning
- Document limitations of the current environment
- Prioritize features based on identity risk and business value

### 12.2 Current Lab Licensing Position

The current Northstar Health lab is based on Microsoft Entra ID Free capabilities.

The lab has used available tenant functionality to configure and validate selected identity and access controls, including:

- Fictional member-user accounts
- Fictional security groups
- Selected administrative-role assignments
- Authentication-method targeting
- The Northstar Patient Records Portal application registration
- The Northstar Patient Records Portal service principal
- Assignment-required application access
- Direct user assignment to the enterprise application
- Minimal delegated Microsoft Graph permission
- Audit-log validation where available
- B2B guest invitation and redemption
- Membership in `GRP-External-Vendors`

The presence of these controls does not mean that premium identity-governance capabilities are available.

The lab must not assume that a feature is licensed merely because its menu, configuration page, trial option, or documentation is visible.

### 12.3 Native Access Reviews

Native Microsoft Entra access reviews can support governance of:

- Security-group membership
- Microsoft 365 group membership
- Enterprise-application access
- Guest-user access
- Access-package assignments
- Microsoft Entra administrative-role assignments through Privileged Identity Management
- Azure resource-role assignments through Privileged Identity Management

Depending on the licensed feature and scenario, native access reviews may provide:

- One-time reviews
- Recurring reviews
- Assigned reviewers
- Group-owner review
- Application-owner review
- User self-review
- Multi-stage review
- Email notifications
- Reviewer reminders
- Decision recommendations
- Review history
- Decision tracking
- Default decisions for unanswered items
- Automatic application of results
- Removal of denied access where technically supported
- Review of selected identity populations
- Reporting and audit support

These capabilities were assessed as potential production improvements.

They were not configured in the current lab.

### 12.4 Access-Review Licensing Status

The lab must use the following status for native access reviews:

```text
Assessed, Not Deployed
```

The reason is:

- The current lab uses Microsoft Entra ID Free.
- The manual access-review process was documented as a compensating governance procedure.
- No native recurring access review was created.
- No native reviewer workflow was started.
- No native access-review decisions were collected.
- No native review results were automatically applied.
- No native access-review history was generated.

The final portfolio must not state:

```text
Implemented Microsoft Entra access reviews.
```

unless the required licensing is available and the feature is configured, tested, and supported by appropriate evidence.

### 12.5 Microsoft Entra ID P1 Assessment

Microsoft Entra ID P1 may support identity and access capabilities that extend beyond the Free tier.

Potential areas for assessment include:

- Conditional Access
- Dynamic group membership
- Group-based licensing
- Enhanced self-service capabilities
- Hybrid identity capabilities
- Additional identity administration controls

Microsoft Entra ID P1 must not be assumed to include every identity-governance or risk-based feature.

Before relying on P1 for a production requirement, the organization must verify:

- The exact feature required
- The identities that require licensing
- Tenant prerequisites
- Administrative-role requirements
- Technical limitations
- Applicable Microsoft product terms
- Whether another license or add-on is required

Status for this lab:

```text
Assessed, Not Deployed
```

### 12.6 Microsoft Entra ID P2 Assessment

Microsoft Entra ID P2 may provide advanced identity-protection and identity-governance capabilities beyond P1.

Potential areas for assessment include:

- Privileged Identity Management
- Access reviews
- Risk-based identity protection
- Eligible administrative-role assignments
- Time-bound privileged-role activation
- Approval-based activation
- Privileged-access review
- Identity-risk and sign-in-risk capabilities
- Additional governance and reporting functionality

The exact availability of each capability must be confirmed against current Microsoft licensing documentation before implementation.

Status for this lab:

```text
Assessed, Not Deployed
```

### 12.7 Microsoft Entra ID Governance Assessment

Microsoft Entra ID Governance provides identity-governance capabilities intended to manage the access lifecycle.

Potential areas for assessment include:

- Access reviews
- Entitlement management
- Access packages
- Privileged Identity Management
- Lifecycle workflows
- Automated joiner, mover, and leaver processes
- Advanced access-review scenarios
- Application, group, guest, and privileged-access governance
- Governance reporting and audit support

The organization should evaluate Microsoft Entra ID Governance when it requires a coordinated governance platform rather than isolated manual controls.

The assessment should compare:

- Number of identities
- Number of guests
- Number of privileged users
- Number of applications
- Review frequency
- Reviewer workload
- Manual-remediation effort
- Compliance requirements
- Evidence-retention requirements
- Cost of manual processing
- Risk of stale or excessive access
- Need for automated lifecycle management

Status for this lab:

```text
Assessed, Not Deployed
```

### 12.8 Privileged Identity Management Assessment

Privileged Identity Management should be evaluated for administrative roles because permanent active privileged access increases risk.

Potential benefits include:

- Eligible rather than permanently active role assignments
- Time-bound role activation
- Approval requirements
- Activation justification
- Multifactor authentication requirements
- Limited activation duration
- Notifications
- Assignment and activation history
- Access reviews of privileged roles
- Alerts concerning privileged assignments

A proposed production model would evaluate whether the Helpdesk Administrator and Security Reader assignments should be:

- Eligible instead of permanently active
- Time-bound
- Approval-based
- Activated only when required
- Subject to recurring access review
- Removed automatically after expiration where supported
- Monitored for unnecessary activation

The lab assigned selected least-privilege administrative roles but did not implement Privileged Identity Management.

Status:

```text
Assessed, Not Deployed
```

### 12.9 Conditional Access Assessment

Conditional Access should be assessed as a production control for regulating access according to identity, application, device, location, authentication, and risk conditions.

Potential use cases include:

- Requiring multifactor authentication
- Protecting administrative-role access
- Protecting the Northstar Patient Records Portal
- Restricting guest access
- Requiring compliant or managed devices
- Blocking legacy authentication
- Applying stronger controls to sensitive applications
- Restricting access according to approved conditions
- Responding to identity or sign-in risk where supported

Conditional Access must be evaluated carefully before deployment because an incorrect policy can block legitimate access or create administrative lockout.

A production implementation should include:

- Emergency-access planning
- Report-only testing where available
- Pilot groups
- Exclusions limited to justified cases
- Change documentation
- Rollback planning
- Monitoring
- Periodic policy review
- Protection of administrative accounts

The lab did not implement Conditional Access and must not imply that the authentication-method targeting policy is equivalent to Conditional Access.

Status:

```text
Assessed, Not Deployed
```

### 12.10 Authentication-Method Targeting

The lab configured Microsoft Authenticator targeting for selected groups.

This control demonstrates:

- Group-based targeting
- Authentication-method configuration
- Use of fictional IT support and security-related identities
- Documentation of the intended security population

Authentication-method targeting does not by itself establish:

- A Conditional Access policy
- A sign-in requirement for every scenario
- Risk-based access control
- Device-compliance enforcement
- Application-specific access enforcement
- Proof that every targeted user completed registration

The implemented control must be described according to the configuration and validation evidence actually captured.

Status:

```text
Implemented and Validated
```

The exact scope of validation must be stated in the related evidence.

### 12.11 Entitlement Management Assessment

Entitlement management should be evaluated for structured access-request and approval processes.

Potential use cases include:

- Packaging group and application access
- Defining access-request policies
- Assigning approvers
- Setting assignment expiration
- Supporting external-user access
- Conducting access-package reviews
- Automating removal after expiration
- Managing access across projects or business functions
- Establishing repeatable onboarding and offboarding processes

For Northstar Health, a future access package could potentially contain:

- Approved Northstar Patient Records Portal access
- Required security-group membership
- A defined approval workflow
- An expiration period
- Guest-sponsor responsibility
- Terms or acknowledgment requirements
- A recurring access review

This is a proposed design only.

Status:

```text
Assessed, Not Deployed
```

### 12.12 Lifecycle Workflows Assessment

Lifecycle workflows should be evaluated for joiner, mover, and leaver automation.

Potential use cases include:

- Assigning onboarding tasks
- Removing access when a user leaves
- Updating access when responsibilities change
- Notifying managers or access owners
- Removing group memberships
- Removing application assignments
- Disabling accounts
- Initiating governance tasks
- Supporting evidence of completed lifecycle actions

A future production design could connect lifecycle events to:

- Security-group changes
- Northstar Patient Records Portal access
- Administrative-role removal
- Guest-sponsor review
- Vendor-access expiration
- Access-review initiation

The current lab does not use an authoritative human-resources data source or automated lifecycle workflow.

Status:

```text
Assessed, Not Deployed
```

### 12.13 Identity Protection Assessment

Identity Protection should be assessed for identifying and responding to identity-related risk.

Potential capabilities may include:

- User-risk detection
- Sign-in-risk detection
- Risk investigation
- Risk-based access policies
- Risk remediation
- Integration with Conditional Access
- Reporting and alerting

Identity-risk information could strengthen access-review decisions by identifying accounts requiring additional investigation.

However, an access reviewer must not describe an account as compromised solely because a risk indicator exists. Risk detections require appropriate investigation and response.

The current lab did not implement or validate Identity Protection.

Status:

```text
Assessed, Not Deployed
```

### 12.14 Dynamic Group Assessment

Dynamic groups should be evaluated where reliable user attributes can support rule-based membership.

Potential benefits include:

- Automatic membership updates
- Reduced manual administration
- Consistent department-based access
- Faster removal after attribute changes
- Support for role-based access models
- Reduced reliance on direct assignments

Potential risks include:

- Inaccurate source attributes
- Overly broad rules
- Delayed attribute updates
- Unintended membership
- Lack of appropriate rule testing
- Excessive access caused by incorrect logic
- Dependence on upstream data quality

Dynamic membership does not eliminate the need for governance. Group purpose, rule logic, effective membership, resource assignments, and exceptions must still be reviewed.

The lab used assigned group membership rather than dynamic membership.

Status:

```text
Assessed, Not Deployed
```

### 12.15 Group-Based Application Assignment Assessment

Group-based assignment should be evaluated for the Northstar Patient Records Portal as an alternative to direct user assignment.

Potential benefits include:

- Consistent role-based access
- Simplified assignment management
- Easier onboarding and offboarding
- Reduced direct-assignment exceptions
- Clearer ownership
- More efficient access review

The proposed implementation sequence is:

1. Define the application-access eligibility criteria.
2. Identify or create an approved security group.
3. Assign an accountable Group Owner.
4. Review existing group membership.
5. Assign the group to the enterprise application.
6. Test access with an approved user.
7. Test denial with a user outside the group.
8. Remove unnecessary direct assignments.
9. Verify effective access.
10. Capture sanitized evidence.
11. Update policy and portfolio wording.

The lab currently uses direct assignment to the Northstar Patient Records Portal.

Status:

```text
Designed, Not Implemented
```

### 12.16 Guest-Governance Assessment

Advanced guest governance should be assessed because external access may remain after the original business relationship ends.

Potential improvements include:

- Recurring guest-access reviews
- Sponsor-based review
- Guest-access expiration
- Access packages for external users
- Terms or acknowledgment requirements
- Automated removal of expired access
- Inactive-guest review
- Restricted application assignment
- Periodic review of external-user group membership
- Cross-tenant access controls where relevant

The lab implemented and validated:

- A B2B guest invitation
- Invitation acceptance
- Guest presence in the tenant
- Membership in `GRP-External-Vendors`

The lab did not implement automated guest expiration or native guest-access reviews.

Status:

```text
Partially Implemented: B2B guest invitation, redemption, and external-vendor group membership were validated. Automated guest governance was assessed but not deployed.
```

### 12.17 Automated Remediation Assessment

Native access reviews may support applying decisions after a review, depending on the review type, configuration, licensing, and technical limitations.

A production implementation should evaluate:

- Whether results will be applied automatically
- What happens to unanswered items
- Whether denied users can be removed automatically
- Whether nested membership affects removal
- Whether the resource is cloud-managed
- How failed result application will be detected
- Who reviews failed remediation
- Whether critical access requires manual approval
- How rollback will be handled
- How evidence of applied results will be retained

Automatic remediation must be tested before use with high-risk resources.

The lab uses manual remediation and manual verification.

Status:

```text
Assessed, Not Deployed
```

### 12.18 Microsoft Graph and PowerShell Automation Assessment

Microsoft Graph and PowerShell should be evaluated for repeatable access inventory, review preparation, remediation, and evidence collection.

Potential uses include:

- Exporting group membership
- Exporting administrative-role assignments
- Exporting enterprise-application assignments
- Identifying B2B guest users
- Identifying external-vendor membership
- Comparing access snapshots
- Creating review worksheets
- Tracking changes between review cycles
- Supporting remediation
- Verifying resulting access
- Producing sanitized reports

Automation must include safeguards such as:

- Least-privilege permissions
- Secure authentication
- No embedded secrets
- Error handling
- Logging
- Input validation
- Change previews
- Confirmation before destructive actions
- Test-mode support
- Clear output labeling
- Protection of exported identity information
- Independent verification of changes

Read-only inventory and reporting automation should be developed before destructive remediation automation.

Status:

```text
Planned for a Later Automation Phase
```

### 12.19 Microsoft Sentinel and KQL Assessment

Microsoft Sentinel and Kusto Query Language may be evaluated in a future security-monitoring phase.

Potential use cases include:

- Monitoring administrative-role changes
- Monitoring group-membership changes
- Monitoring guest invitations
- Monitoring application-assignment changes
- Identifying unusual identity activity
- Supporting investigation of access-review findings
- Producing governance dashboards
- Correlating identity events

This capability requires appropriate data connectors, retention, workspace configuration, licensing, and available log data.

The current access-review policy does not claim that Microsoft Sentinel or KQL monitoring was implemented.

Status:

```text
Future Assessment
```

### 12.20 Feature-Priority Assessment

Advanced features should be prioritized according to risk reduction, operational value, cost, and implementation complexity.

#### Priority 1: Privileged-Access Governance

Evaluate:

- Privileged Identity Management
- Eligible role assignments
- Time-bound activation
- Approval requirements
- Administrative-role access reviews
- Removal of unnecessary permanent assignments

#### Priority 2: Guest and Vendor Governance

Evaluate:

- Recurring guest reviews
- Sponsor accountability
- Expiration controls
- External-user access packages
- Automated removal of expired access

#### Priority 3: Application-Access Governance

Evaluate:

- Group-based Northstar Portal assignment
- Recurring application-access reviews
- Application-owner review
- Assignment expiration
- Removal of unnecessary direct assignments

#### Priority 4: Lifecycle Automation

Evaluate:

- Joiner, mover, and leaver workflows
- Group-membership automation
- Application-access removal
- Guest and vendor lifecycle controls
- Manager and owner notifications

#### Priority 5: Monitoring and Reporting

Evaluate:

- Microsoft Graph reporting
- PowerShell inventory
- Evidence automation
- Microsoft Sentinel
- KQL queries
- Governance metrics and dashboards

### 12.21 Production Pilot Requirements

Before deploying an advanced governance feature broadly, the organization should conduct a limited pilot.

The pilot should define:

- Business objective
- Feature being evaluated
- Licensing status
- Pilot identities
- Pilot resource
- Resource Owner
- Test cases
- Success criteria
- Failure criteria
- Security safeguards
- Rollback procedure
- Evidence requirements
- Pilot duration
- Responsible administrators
- Final recommendation

The pilot should test:

- Expected successful outcomes
- Expected denial outcomes
- Reviewer notifications
- Missed responses
- Remediation
- Failed remediation
- Exception handling
- Administrative lockout risk
- Evidence generation
- User and reviewer experience

The feature must not be represented as fully deployed based only on a limited pilot.

### 12.22 Licensing Verification Checklist

Before implementing a premium feature, confirm:

- The current Microsoft product name
- The current feature name
- The required license or add-on
- Which users require licenses
- Whether guests require separate or usage-based licensing
- Required base licenses
- Tenant prerequisites
- Required administrative roles
- Supported resource types
- Geographic or cloud limitations
- Preview or generally available status
- Technical dependencies
- Pricing or procurement approval
- Data-retention implications
- Privacy and compliance requirements
- Microsoft documentation date
- Date the licensing assessment was completed
- Person responsible for the assessment

Licensing conclusions should be reviewed again before production deployment.

### 12.23 Licensing Evidence

The licensing assessment should retain:

- Assessment date
- Feature assessed
- Current tenant license
- Microsoft documentation referenced
- Product or licensing page
- Document revision or access date
- Required licenses
- Technical prerequisites
- Known limitations
- Implementation decision
- Decision owner
- Next assessment date

A screenshot of a tenant menu or feature page is not sufficient proof that the organization is licensed to use the feature.

Licensing evidence must be reviewed when:

- Microsoft changes product packaging
- The organization changes subscriptions
- A trial begins or expires
- A feature moves from preview to general availability
- A production implementation is planned
- A portfolio claim is updated

### 12.24 Cost and Risk Considerations

The organization should assess licensing cost together with governance risk and manual-process cost.

The assessment should consider:

- Number of identities
- Number of privileged identities
- Number of guests and vendors
- Number of applications and groups
- Frequency of reviews
- Time required for manual evidence collection
- Time required for reviewer follow-up
- Cost of delayed remediation
- Risk of stale access
- Risk of excessive privilege
- Audit and compliance requirements
- Scalability
- Operational complexity
- Training requirements
- Integration requirements

The lowest-cost license is not necessarily the lowest-risk operating model.

Similarly, purchasing advanced licensing does not create effective governance without correct configuration, accountable ownership, trained reviewers, monitoring, and evidence.

### 12.25 Implementation Decision Categories

Every assessed feature should receive one of the following decisions:

#### Implemented and Validated

The capability was configured, tested, and supported by evidence.

#### Partially Implemented

Some components were configured and validated, while remaining limitations are clearly documented.

#### Designed, Not Implemented

The implementation design exists, but the feature was not configured.

#### Assessed, Not Deployed

The feature and licensing were evaluated, but no implementation occurred.

#### Planned for a Later Phase

The feature has been accepted as future work but has not entered implementation.

#### Not Recommended

The feature was assessed and rejected because the cost, risk, complexity, or business value did not support deployment.

#### Requires Further Assessment

Available information is insufficient for a reliable implementation decision.

The selected category must match the available evidence.

### 12.26 Current Capability Summary

The current lab status is:

#### Implemented and Validated

- Personal Microsoft Entra tenant
- Six fictional member users
- Six assigned security groups
- Helpdesk Administrator least-privilege assignment
- Security Reader least-privilege assignment
- Microsoft Authenticator targeting for selected groups
- Northstar Patient Records Portal application registration
- Northstar Patient Records Portal service principal
- Assignment-required application access
- Direct user assignment to the Northstar Patient Records Portal
- Minimal delegated Microsoft Graph `User.Read` permission
- Available audit-log validation
- B2B guest invitation and redemption
- `GRP-External-Vendors` membership

#### Designed, Not Yet Manually Executed

- Recurring access-review schedule
- Manual access-review workflow
- Reviewer decision process
- Escalation process
- Exception-management process
- Remediation workflow
- Independent verification process
- Evidence register
- Review metrics
- Review closure process

#### Assessed, Not Deployed

- Native Microsoft Entra access reviews
- Privileged Identity Management
- Conditional Access
- Entitlement management
- Access packages
- Lifecycle workflows
- Identity Protection
- Dynamic groups
- Automated guest-access governance
- Automated application of review results

#### Planned for a Later Phase

- Manual review templates
- Sample review simulation
- Microsoft Graph inventory
- PowerShell automation
- Group-based application-access assessment
- Sanitized evidence package
- Microsoft Sentinel and KQL assessment
- Final GitHub documentation
- Portfolio and resume updates

### 12.27 Accurate Portfolio Wording

Before a manual review simulation is completed, use:

```text
Designed a risk-based Microsoft Entra access-review framework covering privileged roles, security groups, enterprise-application assignments, B2B guests, and external vendors. Documented review schedules, ownership, decision criteria, escalation, exception management, remediation, verification, and Free-tier manual alternatives.
```

After a complete manual simulation is performed and supported by evidence, use:

```text
Designed and manually validated a Microsoft Entra access-governance process for privileged roles, security groups, application assignments, and B2B guest access. Produced structured review decisions, remediation evidence, verification records, and audit-ready documentation while distinguishing Free-tier controls from premium capabilities.
```

After automation scripts are created and tested, use:

```text
Developed read-only Microsoft Graph and PowerShell automation to inventory selected Microsoft Entra role, group, application, and guest assignments for access-review preparation and evidence collection.
```

Use the automation statement only when the scripts exist, have been tested, and are supported by evidence.

### 12.28 Prohibited Portfolio Claims

Do not state:

```text
Implemented automated Microsoft Entra access reviews.
```

```text
Deployed Privileged Identity Management.
```

```text
Implemented Conditional Access.
```

```text
Automated joiner, mover, and leaver workflows.
```

```text
Deployed Microsoft Sentinel identity monitoring.
```

```text
Implemented Identity Protection risk policies.
```

unless each feature was licensed, configured, tested, and supported by evidence.

Do not describe a documented design as a deployed control.

Do not describe a simulation as production experience.

Do not describe fictional Northstar Health records as real patient, employee, or vendor records.

### 12.29 Reassessment Triggers

The licensing and advanced-feature assessment must be revisited when:

- The tenant license changes
- A trial is activated
- A trial expires
- Microsoft changes feature packaging
- Microsoft changes licensing requirements
- A new application is introduced
- The number of guests or vendors increases
- Privileged-access requirements change
- A manual process becomes difficult to scale
- An audit identifies governance gaps
- A security incident exposes an access-control weakness
- Automation development begins
- A production pilot is proposed
- Portfolio wording is updated

The reassessment record should include the date, reviewer, feature evaluated, evidence considered, conclusion, and next action.

### 12.30 Assessment Summary

The licensing and advanced-feature assessment establishes that:

- The current lab uses Microsoft Entra ID Free capabilities.
- Native access-review automation was not deployed.
- The access-review process is currently a documented manual design.
- Premium features must be verified before implementation.
- Privileged-access governance is the highest advanced-feature priority.
- Guest, vendor, and application governance are important future priorities.
- Read-only inventory automation should precede destructive automation.
- Licensing does not replace governance ownership or evidence requirements.
- A visible feature interface does not prove licensing entitlement.
- Pilot testing is required before broad production deployment.
- Implementation labels must match the available evidence.
- Portfolio statements must distinguish implementation, simulation, design, and assessment.

  ## 13. Portfolio Representation and Control Status

This section defines how the Microsoft Entra IAM and Zero Trust Governance Lab must be represented in GitHub, resumes, cover letters, professional profiles, interviews, presentations, and other portfolio materials.

All statements must accurately distinguish among:

- Controls implemented and validated
- Controls partially implemented
- Processes designed but not executed
- Activities manually simulated and validated
- Premium capabilities assessed but not deployed
- Work planned for a later phase

A completed policy document does not, by itself, prove that the documented control was technically implemented or operationally executed.

### 13.1 Representation Principles

Portfolio descriptions must follow these principles:

- Describe only work that was actually completed.
- Use precise implementation-status labels.
- Separate technical configuration from governance design.
- Separate manual simulation from native automation.
- Identify licensing limitations accurately.
- Avoid presenting fictional scenarios as production experience.
- Link implementation claims to available evidence.
- Disclose important limitations without minimizing the value of the work.
- Update portfolio wording when the implementation status changes.
- Avoid claiming security outcomes that were not tested.
- Protect sensitive tenant, identity, credential, and personal information.
- Use consistent wording across GitHub, resumes, LinkedIn, and interviews.

### 13.2 Approved Control-Status Labels

Use one of the following labels for each project component.

#### Implemented and Validated

Use when the control was configured in the lab and the resulting state or behavior was examined.

```text
Implemented and Validated
```

This label requires:

- Completed configuration
- Successful validation
- Supporting evidence
- Accurate description of the validation scope
- Disclosure of any remaining limitation

#### Partially Implemented

Use when some components were completed but other required components remain unavailable, incomplete, or untested.

```text
Partially Implemented
```

The description must identify:

- What was implemented
- What was validated
- What remains incomplete
- Why the remaining component was not completed
- What future work is recommended

#### Designed, Not Implemented

Use when a technical or governance design exists, but the control was not configured.

```text
Designed, Not Implemented
```

Examples include:

- Group-based Northstar Portal assignment
- Automated access-remediation workflows
- Production emergency-access accounts
- Technical monitoring that was documented but not configured

#### Designed, Not Yet Manually Executed

Use when a manual governance process has been fully documented, but no complete sample review has been performed.

```text
Designed, Not Yet Manually Executed
```

This is the correct current status for the access-review procedure until a complete fictional review package is created.

#### Manually Simulated and Validated

Use only after a fictional manual process has been performed from initiation through closure and supported by evidence.

```text
Manually Simulated and Validated
```

For the access-review process, this requires:

- A review identifier
- Initial access snapshot
- Completed review worksheet
- Explicit reviewer decisions
- Escalation or exception records where applicable
- Remediation evidence
- Verification evidence
- Evidence-register entries
- Final review summary
- Accurate simulation labeling

#### Assessed, Not Deployed

Use when a product feature, licensing option, or advanced capability was researched and evaluated but not enabled.

```text
Assessed, Not Deployed
```

Examples include:

- Native Microsoft Entra access reviews
- Privileged Identity Management
- Conditional Access
- Entitlement management
- Lifecycle workflows
- Identity Protection
- Automated guest governance

#### Planned for a Later Phase

Use when future work has been identified but implementation or detailed assessment has not yet been completed.

```text
Planned for a Later Phase
```

Examples include:

- Microsoft Graph inventory automation
- PowerShell automation
- Microsoft Sentinel integration
- KQL queries
- Governance dashboards
- Final sanitized evidence publication

#### Future Assessment

Use when a capability might be relevant but has not yet received a complete licensing, technical, security, or business evaluation.

```text
Future Assessment
```

#### Not Recommended

Use when a capability or design was evaluated and rejected.

```text
Not Recommended
```

The reason for rejection should be documented.

### 13.3 Current Project Status

The current project status is divided into four categories.

#### Implemented and Validated

The following controls were configured and validated in the Microsoft Entra lab:

- Personal Microsoft Entra tenant
- Six fictional member-user identities
- Six assigned security groups
- Role-aligned direct group memberships
- Helpdesk Administrator least-privilege assignment
- Security Reader least-privilege assignment
- Microsoft Authenticator targeting for IT Support and Security Reader groups
- Northstar Patient Records Portal application registration
- Northstar Patient Records Portal service principal
- Assignment-required application access
- Direct application assignments for approved fictional users
- Minimal delegated Microsoft Graph `User.Read` permission
- Available audit-log validation
- B2B guest invitation
- B2B invitation acceptance and redemption
- Guest membership in `GRP-External-Vendors`

Each claim must remain limited to the configuration and validation evidence available.

#### Designed, Not Yet Manually Executed

The following governance processes were documented but have not yet completed a full manual simulation:

- Recurring access-review schedule
- Administrative-role review procedure
- Security-group membership review procedure
- Northstar Portal assignment review procedure
- B2B guest review procedure
- External-vendor review procedure
- Reviewer decision framework
- Escalation process
- Exception-management process
- Remediation workflow
- Verification process
- Evidence register
- Review metrics
- Review closure process

This status may be changed to `Manually Simulated and Validated` only after the required sample artifacts are created and reviewed.

#### Designed, Not Implemented

The following controls have a documented design but were not technically configured:

- Group-based Northstar Portal assignment
- Production emergency-access identities
- Automated review-result application
- Automated access-remediation workflow
- Centralized production evidence repository
- Automated expiration of guest and vendor access

#### Assessed, Not Deployed

The following premium or advanced capabilities were assessed but not deployed:

- Native Microsoft Entra access reviews
- Privileged Identity Management
- Conditional Access
- Entitlement management
- Access packages
- Lifecycle workflows
- Identity Protection
- Dynamic group membership
- Automated guest-access governance
- Automated application of review results
- Microsoft Sentinel identity monitoring

#### Planned for a Later Phase

The following work remains planned:

- Manual access-review templates
- Sample manual access-review simulation
- Sample escalation record
- Sample exception record
- Sample remediation record
- Sample verification record
- Evidence register
- Read-only Microsoft Graph inventory
- PowerShell reporting automation
- Sanitized screenshot publication
- Final repository quality review
- GitHub README update
- Resume and LinkedIn project update

### 13.4 GitHub Repository Wording

The GitHub repository should describe the project as an educational identity and access management lab that combines implemented Microsoft Entra controls with production-oriented governance designs.

Recommended repository summary:

```text
A Microsoft Entra IAM and Zero Trust Governance Lab demonstrating fictional user and group administration, least-privilege role assignment, authentication-method targeting, enterprise-application access control, audit validation, B2B guest collaboration, access-review design, privileged-access governance, Conditional Access planning, and licensing-aware implementation decisions.
```

Recommended implementation disclaimer:

```text
This repository distinguishes controls configured and validated in a Microsoft Entra ID Free lab from manual governance procedures, production recommendations, and premium Microsoft Entra capabilities assessed but not deployed.
```

Recommended fictional-environment disclaimer:

```text
Northstar Health Services, the Northstar Patient Records Portal, all identities, access decisions, review records, and business scenarios in this repository are fictional and were created for educational portfolio purposes.
```

### 13.5 Access-Review Portfolio Wording

Before completing a manual access-review simulation, use:

```text
Designed a risk-based Microsoft Entra access-review framework covering administrative roles, security groups, enterprise-application assignments, B2B guests, and external vendors. Documented review schedules, accountable owners, reviewer decisions, escalation, exception management, remediation, verification, evidence retention, and Free-tier manual alternatives.
```

After completing and validating a full fictional manual review, use:

```text
Designed and manually simulated a Microsoft Entra access-review lifecycle for selected administrative-role, security-group, application, and B2B guest assignments. Produced structured reviewer decisions, remediation evidence, verification records, and audit-ready documentation.
```

Do not use the second statement until the complete simulation evidence exists.

### 13.6 Privileged-Access Portfolio Wording

Approved wording:

```text
Implemented least-privilege Helpdesk Administrator and Security Reader assignments for fictional lab identities and developed a production-oriented privileged-access design covering eligible assignments, just-in-time activation, MFA, approval, time limits, monitoring, and recurring review.
```

Approved licensing-aware wording:

```text
Assessed Microsoft Entra Privileged Identity Management and documented a proposed just-in-time privileged-access model. PIM was not deployed because the personal lab used Microsoft Entra ID Free.
```

Prohibited wording:

```text
Implemented Microsoft Entra Privileged Identity Management.
```

```text
Deployed just-in-time administrator access.
```

These claims are prohibited unless PIM is later licensed, configured, tested, and supported by evidence.

### 13.7 Conditional Access Portfolio Wording

Approved wording:

```text
Developed licensing-aware Conditional Access policy designs for administrator MFA, legacy-authentication blocking, and application-specific MFA, including report-only deployment planning, emergency-access safeguards, testing, monitoring, and rollback procedures.
```

Approved limitation statement:

```text
Conditional Access remained design-specified because the personal lab used Microsoft Entra ID Free.
```

Prohibited wording:

```text
Implemented Conditional Access policies.
```

```text
Enforced MFA through Conditional Access.
```

Authentication-method targeting must not be described as Conditional Access enforcement.

### 13.8 Authentication-Method Portfolio Wording

Approved wording:

```text
Configured Microsoft Authenticator targeting for fictional IT Support and Security Reader groups in Microsoft Entra and documented the intended security population.
```

If registration completion was not validated for every targeted identity, do not state:

```text
Enforced and verified MFA registration for all targeted users.
```

The portfolio wording must reflect exactly what the evidence demonstrates.

### 13.9 Application-Access Portfolio Wording

Approved wording:

```text
Registered the fictional Northstar Patient Records Portal in Microsoft Entra, validated the corresponding service principal, required explicit assignment, granted minimal delegated Microsoft Graph User.Read permission, and restricted access through direct user assignments.
```

Approved future-state wording:

```text
Designed a proposed group-based access model to improve application assignment consistency and lifecycle governance.
```

Prohibited wording:

```text
Implemented group-based application assignment.
```

The group-based statement is prohibited until a group is assigned to the enterprise application and effective access is tested.

### 13.10 B2B Guest Portfolio Wording

Approved wording:

```text
Invited and validated a fictional Microsoft Entra B2B guest through invitation acceptance and assigned the guest to GRP-External-Vendors to demonstrate controlled external collaboration.
```

Approved governance wording:

```text
Designed sponsor-based recurring reviews, expiration controls, escalation procedures, and evidence requirements for external-vendor access.
```

Prohibited wording:

```text
Implemented automated guest-access reviews and expiration.
```

Automated guest governance was not deployed.

### 13.11 Emergency-Access Portfolio Wording

Approved wording:

```text
Developed an emergency-access and account-recovery runbook covering cloud-only recovery identities, controlled authorization, credential protection, monitoring, periodic testing, session revocation, credential rotation, and post-use review.
```

Approved limitation statement:

```text
The lab documented the production emergency-access design without creating additional permanent Global Administrator accounts.
```

Prohibited wording:

```text
Implemented and tested two production break-glass accounts.
```

The prohibited statement would not accurately represent the lab.

### 13.12 Resume Project Entry

Before the access-review simulation and automation phases are complete, the resume project entry may use wording such as:

```text
Microsoft Entra IAM and Zero Trust Governance Lab

Built a Microsoft Entra identity lab with fictional users and role-aligned security groups; assigned least-privilege Helpdesk Administrator and Security Reader roles; configured Microsoft Authenticator targeting; and documented joiner, mover, leaver, emergency-access, and access-certification procedures.

Registered and secured a fictional enterprise application using assignment-required access and minimal delegated Microsoft Graph permissions; validated direct user assignments, audit events, B2B guest invitation, invitation redemption, and external-vendor group membership.

Developed licensing-aware designs for Conditional Access, Privileged Identity Management, recurring access reviews, guest governance, escalation, exceptions, remediation, and evidence retention while distinguishing implemented Free-tier controls from premium features not deployed.
```

The final resume entry should be shortened to fit the available space while preserving technical accuracy.

### 13.13 LinkedIn Project Description

A broader LinkedIn description may use:

```text
Designed and built a Microsoft Entra IAM and Zero Trust Governance Lab using a fictional organizational environment. The project includes user and security-group administration, least-privilege administrative roles, Microsoft Authenticator targeting, enterprise-application registration and access assignment, minimal Microsoft Graph permissions, audit-log validation, and B2B guest collaboration.

The governance component includes joiner-mover-leaver procedures, an access-control matrix, emergency-access planning, Conditional Access design, privileged-access design, recurring access-review schedules, reviewer decision standards, escalation and exception management, remediation, verification, and evidence-retention requirements.

The repository clearly distinguishes controls implemented in Microsoft Entra ID Free from manual governance procedures and premium capabilities assessed but not deployed.
```

### 13.14 Interview Explanation

A clear interview explanation is:

```text
I built the project in a Microsoft Entra ID Free tenant, so I separated hands-on implementation from premium-feature design. I configured fictional users, security groups, least-privilege roles, authentication-method targeting, an enterprise application, assignment-required access, minimal Microsoft Graph permission, audit validation, and B2B collaboration.

For features such as Conditional Access, PIM, and native Access Reviews, I created production-oriented designs instead of claiming deployment. I also documented manual Free-tier alternatives, reviewer decisions, remediation, verification, evidence requirements, and the licensing conditions for future implementation.
```

If asked whether native Access Reviews were implemented, answer:

```text
No. Native Access Reviews were assessed but not deployed because the lab used Microsoft Entra ID Free. I documented a complete manual access-review procedure as a compensating governance design. I would describe the process as manually validated only after completing the planned fictional review simulation and evidence package.
```

### 13.15 Evidence-Based Claim Standard

Every significant portfolio claim should be supported by one or more of the following:

- Sanitized screenshot
- Configuration record
- Audit-log record
- Manual review worksheet
- Remediation record
- Verification record
- Policy or design document
- Script and test output
- Git commit history
- Evidence-register entry
- Final review summary

The evidence must support the exact claim.

For example:

- A role-assignment screenshot supports the existence of an assignment.
- An audit-log record may support that a change occurred.
- A design document supports governance planning.
- A completed worksheet and verification package support a manual simulation.
- A script file alone does not prove successful automation.
- A visible feature menu does not prove licensing entitlement or deployment.

### 13.16 Claim Review Checklist

Before publishing or updating a portfolio statement, confirm:

- [ ] The described activity was actually completed.
- [ ] The implementation status is accurate.
- [ ] The evidence supports the complete statement.
- [ ] A design is not described as implementation.
- [ ] A simulation is not described as production experience.
- [ ] A manual process is not described as native automation.
- [ ] A partially implemented control identifies its limitations.
- [ ] Premium features are identified as assessed or designed when not deployed.
- [ ] Licensing statements were reviewed for current accuracy.
- [ ] Fictional identities and scenarios are clearly identified.
- [ ] Sensitive information has been removed.
- [ ] The wording is consistent across GitHub, resume, LinkedIn, and interview materials.

### 13.17 Prohibited General Claims

Do not use broad statements such as:

```text
Implemented enterprise-wide Zero Trust.
```

```text
Secured a production healthcare environment.
```

```text
Protected real patient records.
```

```text
Eliminated unauthorized access.
```

```text
Achieved complete regulatory compliance.
```

```text
Automated the entire identity lifecycle.
```

```text
Deployed enterprise identity governance.
```

These statements would overstate the scope, environment, evidence, or outcome of the project.

### 13.18 Approved General Claims

Use precise statements such as:

```text
Built a fictional Microsoft Entra IAM lab demonstrating selected identity, access, application, authentication, audit, and B2B collaboration controls.
```

```text
Applied least-privilege principles to selected administrative-role and enterprise-application assignments.
```

```text
Developed production-oriented identity-governance designs while documenting Free-tier licensing limitations.
```

```text
Created manual governance procedures for access review, escalation, exception management, remediation, verification, and evidence retention.
```

```text
Assessed premium Microsoft Entra capabilities without representing them as deployed.
```

### 13.19 Status Update Procedure

When additional work is completed:

1. Update the relevant implementation-status label.
2. Add or update supporting evidence.
3. Update the evidence register.
4. Revise the related policy or design document.
5. Update the repository README.
6. Review the licensing statement.
7. Review the GitHub project description.
8. Update resume or LinkedIn wording only if appropriate.
9. Preserve the previous status through version history.
10. Confirm that the updated claim does not exceed the evidence.

A planned control must not move directly to `Implemented and Validated` without configuration, testing, and evidence.

### 13.20 Final Control-Status Matrix

The final repository should maintain a control-status matrix containing:

```text
Control
Implementation Status
Licensing Requirement
Configuration Evidence
Validation Evidence
Known Limitation
Future Action
Portfolio Wording
Last Reviewed Date
```

The matrix should be updated whenever:

- A control is implemented
- A simulation is completed
- New evidence is added
- Licensing changes
- A control is removed
- A limitation is resolved
- Automation is introduced
- Portfolio wording changes

The existing access-control matrix may be extended or cross-referenced rather than creating unnecessary duplicate records.

### 13.21 Portfolio Review Frequency

Portfolio wording should be reviewed:

- Before publishing the repository
- Before submitting a resume
- Before updating LinkedIn
- Before an interview
- After completing a new project phase
- After changing tenant licensing
- After adding automation
- After completing a manual review simulation
- After discovering inaccurate or incomplete evidence
- At least annually while the project remains publicly available

Outdated portfolio wording must be corrected promptly.

### 13.22 Repository Completion Criteria

The access-review documentation phase is complete when:

- The access-review scope is documented.
- Review targets and frequencies are defined.
- Review owners and reviewer responsibilities are assigned.
- Decision criteria are documented.
- Escalation and exception procedures are documented.
- Evidence and audit requirements are documented.
- The Free-tier manual procedure is documented.
- Licensing and advanced-feature assessments are documented.
- Portfolio wording and prohibited claims are documented.
- The document clearly distinguishes implementation, simulation, design, and assessment.
- Markdown formatting has been reviewed.
- Internal citation markers and drafting instructions have been removed.
- The completed file has been committed to the correct repository folder.

A full manual access-review simulation is a separate future phase and is not required to classify the policy design itself as complete.

### 13.23 Final Portfolio Statement

The approved current project statement is:

```text
Built a Microsoft Entra IAM and Zero Trust Governance Lab with fictional users, role-aligned security groups, least-privilege administrative assignments, Microsoft Authenticator targeting, enterprise-application access controls, minimal Microsoft Graph permissions, audit validation, and B2B guest collaboration. Developed licensing-aware governance designs for privileged access, Conditional Access, recurring access reviews, external access, escalation, exceptions, remediation, verification, and audit evidence, while clearly separating implemented Free-tier controls from premium capabilities assessed but not deployed.
```

This statement may be shortened for a resume, but its meaning and implementation boundaries must remain accurate.

### 13.24 Section Summary

The following representation rules apply:

- Portfolio statements must be evidence-based.
- Technical configuration must be distinguished from governance design.
- Manual simulation must be distinguished from native automation.
- Fictional scenarios must not be described as production experience.
- Premium features must not be described as deployed without licensing, configuration, testing, and evidence.
- Partially implemented controls must disclose their limitations.
- Failed or incomplete controls must not be presented as successful.
- Public evidence must be sanitized and safe to disclose.
- GitHub, resume, LinkedIn, and interview wording must remain consistent.
- Project status must be updated as new evidence is produced.
- The current access-review process is designed but not yet manually executed.
- The policy design may be completed before the future simulation phase.
## 14. Review and Maintenance

This access-review design must be reviewed and maintained to ensure that the documented procedures remain accurate, practical, and aligned with the Microsoft Entra lab environment.

The document must be updated when the tenant configuration, project scope, licensing position, governance requirements, or implementation status changes.

### 14.1 Document Owner

The document owner is responsible for:

- Maintaining the access-review design
- Reviewing the document for accuracy
- Updating control-status labels
- Confirming that portfolio wording matches available evidence
- Recording significant changes
- Removing outdated or inaccurate statements
- Scheduling the next document review
- Confirming that sensitive information is not published

For this educational lab, the document owner is:

```text
Wisdom Kwame Djam
```

### 14.2 Review Frequency

This document should be reviewed:

- At least once every 12 months
- Before publishing a major repository update
- After completing a manual access-review simulation
- After implementing an advanced governance capability
- After changing the tenant licence
- After introducing Microsoft Graph or PowerShell automation
- After changing the Northstar Portal access model
- After creating or removing administrative roles
- After changing the B2B guest-governance process
- After changing the emergency-access design
- After discovering inaccurate documentation
- Before making significant resume, LinkedIn, or interview claims

### 14.3 Event-Driven Maintenance

An immediate document review should occur when:

- A new security group is created
- A security group is deleted or repurposed
- A new administrative role is assigned
- An administrative role is removed
- A new enterprise application is introduced
- Application ownership changes
- Group ownership changes
- A new B2B guest or vendor-access process is introduced
- Native Microsoft Entra access reviews are licensed or configured
- Privileged Identity Management is introduced
- Conditional Access is introduced
- Entitlement management or lifecycle workflows are introduced
- A manual review identifies a significant governance weakness
- A security incident reveals an access-control gap
- Microsoft changes relevant feature names, packaging, or licensing
- A project claim no longer matches the available evidence

### 14.4 Maintenance Procedure

The document-maintenance process is:

1. Identify the change requiring review.
2. Examine the affected section.
3. Compare the document with the current lab configuration.
4. Confirm the current implementation status.
5. Review supporting evidence.
6. Verify relevant licensing statements.
7. Update inaccurate or outdated wording.
8. Update the control-status matrix.
9. Update related templates and procedures.
10. Update portfolio wording where necessary.
11. Record the change in the version history.
12. Review Markdown formatting.
13. Confirm that internal drafting notes and citation markers were removed.
14. Commit the approved revision using a descriptive Git message.
15. Record the next review date.

### 14.5 Change-Control Requirements

Significant changes should document:

- Description of the change
- Reason for the change
- Sections affected
- Previous control status
- New control status
- Evidence supporting the change
- Licensing effect
- Security or governance effect
- Person making the change
- Review date
- Approval status
- Next review date

A policy update must not change a control from `Designed, Not Implemented` to `Implemented and Validated` unless the control was configured, tested, and supported by evidence.

### 14.6 Version History

Maintain a version history using the following structure:

| Version | Date | Description | Status |
|---|---|---|---|
| 1.0 | 2026-09-17 | Initial access-review design completed | Designed, Not Yet Manually Executed |

Future versions should record substantial updates such as:

- Completion of the first manual access-review simulation
- Addition of review templates
- Addition of remediation and verification evidence
- Introduction of Microsoft Graph inventory automation
- Introduction of PowerShell reporting
- Changes to Microsoft Entra licensing
- Deployment of a previously assessed premium capability
- Changes to approved portfolio wording

### 14.7 Related Documents

This access-review design should remain consistent with:

```text
README.md
SECURITY.md
documentation/access-control-matrix.md
documentation/joiner-mover-leaver.md
documentation/emergency-access-runbook.md
documentation/licensing-assessment.md
policies/conditional-access-design.md
policies/privileged-access-design.md
```

If the actual repository paths differ, update these references to match the final repository structure.

### 14.8 Document Quality Checklist

Before approving an updated version, confirm:

- [ ] All headings display correctly.
- [ ] All code blocks are properly closed.
- [ ] Lists render correctly.
- [ ] Internal citation markers were removed.
- [ ] Drafting instructions were removed.
- [ ] Repeated content was minimized.
- [ ] File paths match the repository.
- [ ] Resource names match the lab.
- [ ] Licensing statements remain accurate.
- [ ] Implementation-status labels match the evidence.
- [ ] Simulations are clearly identified.
- [ ] Sensitive information is absent or permanently redacted.
- [ ] Portfolio wording does not exaggerate implementation.
- [ ] The version history was updated.
- [ ] The next review date was recorded.

### 14.9 Review Approval

The document review record should contain:

```text
Document Name:
Document Version:
Document Owner:
Reviewer:
Review Date:
Changes Required:
Approval Status:
Next Review Date:
Notes:
```

For the current educational project, self-review may be necessary. This limitation should be acknowledged.

A production environment should use an independent identity, security, risk, compliance, or management reviewer where practical.

### 14.10 Maintenance Summary

The following maintenance rules apply:

- Review this document at least annually.
- Update the document after major project or licensing changes.
- Preserve accurate version history.
- Verify control status before changing portfolio wording.
- Keep related repository documents consistent.
- Remove obsolete or misleading statements.
- Protect sensitive information during every update.
- Review Markdown formatting before committing.
- Use descriptive Git commit messages.
- Record the next scheduled review date.

## 15. Conclusion

This access-review design establishes a risk-based governance framework for reviewing administrative roles, security-group memberships, Northstar Patient Records Portal assignments, B2B guest identities, and external-vendor access in the fictional Northstar Health environment.

The framework defines:

- Access-review scope
- Risk-based review frequencies
- Resource ownership
- Primary and backup reviewers
- Reviewer responsibilities
- Explicit decision criteria
- Escalation procedures
- Exception-management requirements
- Remediation deadlines
- Verification requirements
- Evidence and audit-documentation standards
- A Free-tier manual review procedure
- Licensing and advanced-feature assessments
- Accurate portfolio representation
- Document review and maintenance requirements

The current lab demonstrates selected Microsoft Entra identity, access, authentication, application, audit, and B2B collaboration controls.

The access-review process itself is currently classified as:

```text
Designed, Not Yet Manually Executed
```

Native Microsoft Entra access reviews are classified as:

```text
Assessed, Not Deployed
```

These classifications must remain in place until additional implementation or manual validation evidence supports a status change.

A future phase may validate the governance design through a complete fictional manual access-review simulation. That phase should include an access snapshot, completed worksheet, explicit decisions, remediation, verification, an evidence register, and a final review summary.

The overall design supports Zero Trust by requiring continued access to be revalidated rather than trusted indefinitely. It also supports least privilege by requiring unnecessary, excessive, expired, or unsupported access to be removed or modified.

The value of this project depends on accurate documentation. Technical implementation, manual simulation, governance design, and premium-feature assessment must remain clearly separated throughout the repository and all related professional materials.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Document Control

```text
Document: Access Review Design
File: policies/access-review-design.md
Version: 1.0
Status: Designed, Not Yet Manually Executed
Owner: Wisdom Kwame Djam
Initial Completion Date: 2026-09-17
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17
```

## Disclaimer

This document is an educational identity-governance design for a fictional organization.

Northstar Health, the Northstar Patient Records Portal, all user identities, access decisions, vendor relationships, review records, and business scenarios described in this document are fictional and were created for portfolio and learning purposes.

This document does not represent:

- A production Microsoft Entra deployment
- A real healthcare environment
- Real patient information
- A completed regulatory assessment
- Legal advice
- A compliance certification
- A security guarantee
- Native Microsoft Entra access-review implementation

Any production implementation should be independently assessed, appropriately licensed, tested, approved, monitored, and adapted to the organization's technical environment, business requirements, legal obligations, and risk tolerance.
  
