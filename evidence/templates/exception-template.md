# Access Review Exception Template

## Simulation Notice

This template supports fictional access-exception scenarios for the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not document a real production exception, employee decision, patient environment, vendor relationship, security incident, or native Microsoft Entra access-review workflow.

All identities, resources, access decisions, business justifications, and scenarios entered in this template must be fictional, sanitized, or appropriately redacted.

## 1. Exception Information

```text
Exception ID:
Related Review ID:
Related Review Item ID:
Related Escalation ID:
Exception Title:
Identity:
Identity Type:
Resource:
Current Assignment:
Request Date:
Effective Date:
Expiration Date:
Re-review Date:
Closure Date:
Current Status:
Risk Classification:
```

Use the following exception identifier format:

```text
EXC-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Example:

```text
EXC-2026-NORTHSTAR-001
```

Approved status values include:

```text
Draft
Pending Review
Pending Approval
Approved
Rejected
Active
Approaching Expiration
Expired
Renewal Requested
Remediation Required
Closed
Closed with Outstanding Actions
```

Approved risk classifications include:

```text
Low
Medium
High
Critical
```

## 2. Exception Purpose

Describe why the exception is being requested.

```text
Purpose:
```

Example:

```text
Request temporary retention of direct access to the Northstar Patient Records Portal while the proposed group-based application-access model is being designed and tested.
```

An exception must address a legitimate temporary operational requirement. Operational convenience alone is not sufficient.

## 3. Standard Requirement Not Met

Identify the policy, standard, or access requirement that cannot currently be satisfied.

```text
Applicable Policy:
Applicable Section:
Standard Requirement:
Requirement Not Met:
Reason Compliance Is Not Currently Achievable:
```

The exception must not be used to bypass a requirement that can reasonably be satisfied through normal remediation.

## 4. Exception Scope

```text
Identity:
Identity Type:
Account Status:
Resource:
Resource Type:
Current Assignment:
Assignment Type:
Assignment Source:
Business Function:
Resource Owner:
Internal Sponsor:
Access Start Date:
Existing Expiration Date:
Related Evidence IDs:
```

### In Scope

- Identity receiving the exception:
- Resource affected:
- Assignment covered:
- Activities permitted:
- Approved access period:

### Out of Scope

- Unrelated identities:
- Unrelated resources:
- Additional privileges:
- Activities not permitted:
- Access after the expiration date:

The scope must be narrow, specific, and limited to the approved requirement.

## 5. Exception Roles

```text
Requester:
Identity Receiving Exception:
Exception Owner:
Resource Owner:
Primary Reviewer:
Approval Authority:
Security Reviewer:
Privacy or Compliance Reviewer:
Remediation Owner:
Verification Owner:
```

If one person performs multiple roles in the lab, record:

```text
Separation-of-Duties Limitation:
Compensating Measure:
```

The identity receiving the exception must not be the sole approver.

## 6. Business Justification

```text
Current Business Need:
Operational Requirement:
Reason Normal Access Cannot Be Used:
Effect of Immediate Access Removal:
Expected Benefit:
Requested Duration:
Reason Duration Is Necessary:
Lower-Risk Alternatives Considered:
Reason Alternatives Were Not Selected:
```

The justification must be:

- Specific
- Current
- Time-limited
- Connected to the affected resource
- Supported by available evidence
- Proportionate to the requested access

Insufficient example:

```text
Access is needed.
```

Acceptable example:

```text
The fictional application-support user requires direct Northstar Patient Records Portal access for 14 days while the proposed role-based group assignment is configured and tested. Access will be removed when validation is complete or when the exception expires, whichever occurs first.
```

## 7. Exception Eligibility

Confirm that the request meets the minimum eligibility requirements:

- [ ] A legitimate temporary operational need exists.
- [ ] Immediate compliance is not reasonably achievable.
- [ ] The risk of retaining access has been assessed.
- [ ] Lower-risk alternatives were considered.
- [ ] Compensating controls are available.
- [ ] An accountable Exception Owner is assigned.
- [ ] An independent Approval Authority is assigned.
- [ ] A specific expiration date is established.
- [ ] A remediation or transition plan exists.
- [ ] The request does not violate a prohibited-exception condition.

```text
Eligibility Result:
Eligibility Assessed By:
Assessment Date:
Eligibility Notes:
```

If any required condition is not satisfied, the request should be rejected or escalated.

## 8. Prohibited-Exception Check

Confirm that none of the following conditions applies:

- [ ] No valid business need exists.
- [ ] The request is intended to avoid the normal approval process.
- [ ] The account is known or reasonably suspected to be compromised.
- [ ] The identity cannot be verified.
- [ ] The requested access violates a legal or contractual obligation.
- [ ] Required compensating controls cannot be applied.
- [ ] No accountable Exception Owner is available.
- [ ] No expiration date can be established.
- [ ] The exception creates unacceptable or uncontrolled risk.
- [ ] The same control gap has been repeatedly extended without remediation.
- [ ] The person receiving the exception is the sole approver.

```text
Prohibited Condition Identified:
Explanation:
Required Action:
Escalation ID:
```

An identified prohibited condition normally requires rejection, access restriction, remediation, or further escalation.

## 9. Risk Assessment

### 9.1 Risk of Retaining Access

```text
Security Risk:
Privacy Risk:
Operational Risk:
Governance Risk:
Potential for Misuse:
Potential Information Exposure:
Likelihood:
Impact:
Overall Risk:
```

### 9.2 Risk of Removing Access

```text
Service Effect:
Project Effect:
Operational Effect:
Recovery Requirement:
Likelihood:
Impact:
Overall Risk:
```

### 9.3 Overall Risk Classification

Select one:

- [ ] Low
- [ ] Medium
- [ ] High
- [ ] Critical

```text
Selected Risk Classification:
Risk Rationale:
Risk Assessed By:
Assessment Date:
```

Critical exceptions should not normally be approved.

If a critical exception is considered unavoidable, document senior authorization, immediate safeguards, close monitoring, and the shortest practical duration.

## 10. Compensating Controls

Select every control that will reduce the temporary risk:

- [ ] Reduce the scope of access
- [ ] Assign a lower-privilege role
- [ ] Limit the access duration
- [ ] Increase the manual review frequency
- [ ] Require managerial oversight
- [ ] Review relevant activity where data is available
- [ ] Restrict access to approved tasks
- [ ] Require separate approval for sensitive actions
- [ ] Remove unrelated assignments
- [ ] Document activities performed under the exception
- [ ] Require immediate reporting of responsibility changes
- [ ] Conduct an event-driven review before expiration
- [ ] Apply another approved control

### Compensating Control 1

```text
Control:
Purpose:
Control Owner:
Implementation Date:
Monitoring Frequency:
Evidence Required:
Failure Condition:
Action if Control Fails:
```

Copy this subsection for each additional compensating control.

Controls must be specific and measurable.

Insufficient example:

```text
The user will be monitored.
```

Acceptable example:

```text
The Resource Owner will inspect the fictional direct Northstar Portal assignment every five business days during the 14-day exception period. Access outside the approved scope will result in immediate suspension and escalation.
```

The lab must not claim that monitoring occurred unless the relevant data was actually available and reviewed.

## 11. Exception Duration

```text
Requested Effective Date:
Requested Expiration Date:
Total Requested Duration:
Maximum Permitted Duration:
Duration Within Internal Target:
Reason for Requested Duration:
Early Termination Condition:
```

Internal fictional Northstar Health design targets are:

```text
Privileged-role exception: Maximum 30 days
Guest or vendor exception: Maximum 30 days
Northstar Portal exception: Maximum 30 days
Standard group-membership exception: Maximum 90 days
Critical operational exception: Shortest practical duration with frequent reassessment
```

These are internal fictional governance targets, not Microsoft Entra service limits.

The exception becomes invalid at expiration unless a new request is assessed and independently approved.

## 12. Remediation or Transition Plan

Document how the underlying control gap will be resolved.

```text
Control Gap:
Required Remediation:
Transition Target:
Remediation Owner:
Start Date:
Target Completion Date:
Required Resources:
Dependencies:
Expected Access State After Completion:
Verification Method:
Risk if Remediation Is Delayed:
Escalation Trigger:
```

### Remediation Milestones

```text
Milestone 1:
Owner:
Target Date:
Status:
Evidence:
```

Copy the milestone fields as needed.

An exception without a realistic remediation or transition plan should not be approved.

## 13. Approval Decision

Select one:

- [ ] Approved
- [ ] Approved with additional conditions
- [ ] Rejected
- [ ] Returned for more evidence
- [ ] Escalated for higher approval

```text
Decision:
Decision Date:
Approval Authority:
Decision Rationale:
Evidence Considered:
Approved Effective Date:
Approved Expiration Date:
Approved Compensating Controls:
Additional Conditions:
Required Monitoring:
Next Re-review Date:
Related Escalation ID:
```

Approval must confirm that:

- The business need is valid.
- Risks were assessed.
- Lower-risk alternatives were considered.
- Compensating controls are sufficient.
- The duration is no longer than necessary.
- The Exception Owner accepts accountability.
- The remediation or transition plan is reasonable.
- No prohibited-exception condition prevents approval.

Approval must be documented in writing.

## 14. Monitoring Record

The Exception Owner must monitor the exception during its active period.

### Monitoring Review 1

```text
Monitoring Date:
Performed By:
Business Need Still Valid:
Identity Still Authorized:
Access Scope Unchanged:
Compensating Controls 
