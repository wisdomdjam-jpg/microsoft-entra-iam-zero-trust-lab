# Access Review Remediation Template

## Simulation Notice

This template supports fictional access-remediation scenarios for the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not document a real production access change, employee decision, patient environment, vendor action, security incident, or native Microsoft Entra access-review workflow.

All identities, resources, decisions, evidence, and business scenarios entered in this template must be fictional, sanitized, or appropriately redacted.

## 1. Remediation Information

```text
Remediation ID:
Related Review ID:
Related Review Item ID:
Related Escalation ID:
Related Exception ID:
Remediation Title:
Identity:
Identity Type:
Resource:
Previous Access State:
Approved Access State:
Date Opened:
Required Completion Date:
Actual Completion Date:
Current Status:
Risk Classification:
```

Use the following remediation identifier format:

```text
REM-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Example:

```text
REM-2026-HELPDESK-001
```

Approved status values include:

```text
Draft
Not Started
Scheduled
In Progress
Blocked
Partially Completed
Completed
Failed
Overdue
Pending Verification
Closed
Closed with Outstanding Actions
```

Approved risk classifications include:

```text
Standard
High
Critical
```

## 2. Remediation Purpose

Describe why the access change is required.

```text
Purpose:
```

Example:

```text
Remove an unsupported Helpdesk Administrator assignment after the manual access review determined that the fictional user no longer performs an approved IT support function.
```

The remediation purpose must correspond to an approved reviewer, escalation, or exception decision.

## 3. Approved Decision

```text
Decision Source:
Decision Date:
Decision Authority:
Decision:
Decision Justification:
Evidence Considered:
Conditions:
Required Completion Date:
```

Approved decision sources include:

```text
Access Review
Escalation
Exception Expiration
Exception Closure
Security Response
Authorized Management Decision
```

The Remediation Owner must not independently change the approved decision.

If clarification is required, the item must be returned to the appropriate reviewer or decision authority.

## 4. Remediation Scope

```text
Identity:
Identity Type:
Account Status:
Resource:
Resource Type:
Current Assignment:
Assignment Type:
Assignment Source:
Related Group:
Related Application:
Related Administrative Role:
Current Internal Sponsor:
Current Resource Owner:
Relevant Expiration Date:
```

### In Scope

- Identity affected:
- Resource affected:
- Assignment affected:
- Access path affected:
- Approved change:
- Required completion period:

### Out of Scope

- Unrelated identities:
- Unrelated resources:
- Additional access changes:
- Account-wide actions not approved:
- Technical changes not included in the decision:

Remediation must be limited to the approved scope.

## 5. Roles and Responsibilities

```text
Decision Authority:
Remediation Owner:
Authorized Administrator:
Resource Owner:
Verification Owner:
Escalation Authority:
Security Authority:
Exception Owner:
```

If one person performs multiple roles in the lab, record:

```text
Separation-of-Duties Limitation:
Compensating Measure:
```

Whenever practical, the Verification Owner should be different from the person who performs the remediation.

## 6. Pre-Remediation Validation

Before making any change, confirm:

- [ ] The correct identity has been selected.
- [ ] The correct resource has been selected.
- [ ] The current assignment matches the review record.
- [ ] The approved decision is clear.
- [ ] The required change is within scope.
- [ ] The Remediation Owner is authorized.
- [ ] The effect of the change is understood.
- [ ] Related dependencies were considered.
- [ ] Alternative access paths were identified where possible.
- [ ] Initial evidence was captured.
- [ ] A rollback or correction approach was considered.
- [ ] No password, secret, token, or sensitive information will be exposed.

```text
Pre-Remediation Validation Completed By:
Validation Date:
Initial Evidence ID:
Known Dependency:
Known Limitation:
Proceed with Remediation:
```

If the current access state differs from the review evidence, stop and reassess the remediation before proceeding.

## 7. Remediation Action

Select the approved action:

- [ ] Remove administrative-role assignment
- [ ] Replace administrative role with a lower-privilege role
- [ ] Remove security-group membership
- [ ] Add approved security-group membership
- [ ] Remove enterprise-application assignment
- [ ] Replace direct application access with approved group-based access
- [ ] Remove guest from `GRP-External-Vendors`
- [ ] Disable guest identity
- [ ] Remove guest identity
- [ ] Update internal sponsor
- [ ] Update Resource Owner
- [ ] Add or correct an expiration date
- [ ] Restrict access scope
- [ ] Remove duplicate access path
- [ ] Close expired exception
- [ ] Apply another authorized change

```text
Selected Action:
Action Description:
Reason:
Expected Access State:
Required Completion Date:
```

## 8. Change Procedure

Document the exact steps used to implement the approved action.

### Procedure Step 1

```text
Step:
Expected Result:
Actual Result:
Performed By:
Date and Time:
Evidence ID:
Error or Limitation:
```

Copy this subsection for every additional step.

The procedure must describe what was actually performed.

Do not state that an action was completed if the administrator only opened or inspected the configuration page.

## 9. Administrative-Role Remediation

Complete this section when changing Helpdesk Administrator, Security Reader, or another Microsoft Entra administrative-role assignment.

```text
Administrative Role:
Identity:
Previous Role State:
Approved Role State:
Removal or Modification Required:
Reason:
Role Assignment Changed:
Completion Date:
Evidence ID:
```

Validation steps should include:

1. Open the appropriate Microsoft Entra role.
2. Confirm the selected identity.
3. Confirm the existing assignment.
4. Perform the approved removal or modification.
5. Reopen or refresh the assignment list.
6. Confirm the resulting role state.
7. Capture sanitized evidence.
8. Send the item for independent verification.

The template must not claim that Privileged Identity Management was used unless PIM was licensed, configured, and validated.

## 10. Security-Group Remediation

Complete this section when changing group membership.

```text
Group Name:
Group Purpose:
Identity:
Previous Membership State:
Approved Membership State:
Membership Changed:
Completion Date:
Evidence ID:
```

Validation steps should include:

1. Open the correct security group.
2. Confirm the Group Owner and group purpose.
3. Confirm the selected member.
4. Make the approved membership change.
5. Refresh the membership list.
6. Confirm the resulting membership state.
7. Check for known duplicate or related memberships.
8. Capture sanitized evidence.
9. Send the item for verification.

For the external-vendor group, record the group exactly as:

```text
GRP-External-Vendors
```

## 11. Northstar Portal Remediation

Complete this section when changing access to the Northstar Patient Records Portal.

```text
Enterprise Application:
Identity:
Previous Assignment State:
Approved Assignment State:
Direct or Group-Based Assignment:
Assignment Changed:
Completion Date:
Evidence ID:
```

Validation steps should include:

1. Open Enterprise applications.
2. Open the Northstar Patient Records Portal.
3. Confirm that assignment is required.
4. Open the user and group assignment area.
5. Confirm the selected identity or group.
6. Perform the approved assignment change.
7. Refresh the assignment list.
8. Confirm the resulting access state.
9. Capture sanitized evidence.
10. Send the item for verification.

Do not treat the application registration and enterprise application as the same object.

Group-based access must not be described as implemented unless the group was assigned and effective access was tested.

## 12. B2B Guest Remediation

Complete this section when changing a guest identity or assignment.

```text
Guest Identity:
Internal Sponsor:
Guest Account Status:
Previous Access:
Approved Access:
Guest Action:
Group Membership Changed:
Application Assignment Changed:
Administrative Role Changed:
Account Status Changed:
Completion Date:
Evidence ID:
```

Potential remediation actions include:

- Remove unnecessary group membership
- Remove application assignment
- Remove privileged role
- Update the internal sponsor
- Add an approved expiration date
- Disable an unsupported guest
- Remove a guest who no longer requires any access

Before disabling or removing a guest identity, confirm that the approved decision applies to the entire account rather than only one assignment.

## 13. External-Vendor Remediation

Complete this section when changing external-vendor access.

```text
Vendor Identity:
Vendor Relationship:
Internal Sponsor:
Contract or Project End Date:
Previous Membership:
Approved Membership:
GRP-External-Vendors Membership Changed:
Other Assignments Reviewed:
Completion Date:
Evidence ID:
```

The existence of a vendor agreement does not automatically justify continued access for every external identity.

Each affected vendor identity must be handled according to the approved decision.

## 14. Exception Remediation

Complete this section when an exception expires, is rejected, or is closed early.

```text
Exception ID:
Exception Status:
Exception Expiration Date:
Approved Closure Action:
Compensating Controls to Close:
Access Change Required:
Transition Completed:
Completion Date:
Evidence ID:
```

An expired exception must not remain active without a new, independently approved exception request.

## 15. Execution Record

```text
Remediation Start Date and Time:
Remediation Completion Date and Time:
Performed By:
Administrative Account or Role Used:
Change Result:
System Message or Result:
Unexpected Effect:
Error Encountered:
Retry Required:
Rollback Required:
Escalation Required:
```

Do not publish private account identifiers, secrets, or sensitive system information.

## 16. Remediation Result

Select one result:

- [ ] Completed Successfully
- [ ] Partially Completed
- [ ] Failed
- [ ] Blocked
- [ ] Overdue
- [ ] Cancelled by Authorized Decision
- [ ] Returned for Clarification

```text
Selected Result:
Result Description:
Expected Access State:
Observed Access State:
Difference Identified:
Remaining Risk:
Follow-up Action:
Action Owner:
Target Date:
```

A partially completed or failed remediation must not be marked as successful.

## 17. Errors and Limitations

```text
Error or Limitation Identified:
Date Identified:
Effect on Remediation:
Effect on Security or Governance:
Temporary Control:
Escalation ID:
Corrective Action:
Corrective Action Owner:
Corrective Action Deadline:
Current Status:
```

Examples include:

- Insufficient administrative permission
- Incorrect resource selection
- Assignment not found
- Nested or indirect access path
- Guest identity unavailable
- Licensing limitation
- Portal error
- Evidence not captured
- Verification unavailable
- Approved decision unclear

Errors must be recorded accurately rather than omitted.

## 18. Rollback or Correction

Complete this section if the remediation causes an unintended result.

```text
Rollback Required:
Reason:
Previous Access State:
Unintended Access State:
Approved Corrective State:
Rollback Approved By:
Rollback Performed By:
Rollback Date:
Rollback Result:
Evidence ID:
Further Action:
```

Rollback must not become a permanent bypass of the approved review decision.

After rollback, the original issue must be reassessed and an authorized final action must be documented.

## 19. Remediation Evidence

### Evidence Item 1

```text
Evidence ID:
Related Review ID:
Related Review Item ID:
Remediation ID:
Evidence Type:
Resource:
Description:
File Name:
Capture Date:
Captured By:
Sensitivity Classification:
Redaction Status:
Repository Location:
Evidence Status:
```

Copy this subsection for every evidence item.

Evidence should show:

- The initial access state
- The approved action
- The resulting access state
- Any error or limitation
- The date of the change
- The person or role performing the change

Approved sensitivity classifications include:

```text
Public
Internal
Confidential
Restricted
```

Restricted information must never be committed to the public repository.

## 20. Verification Handoff

After remediation, send the item to the Verification Owner.

```text
Verification Required:
Verification Owner:
Handoff Date:
Expected Access State:
Known Alternative Access Paths:
Required Verification Date:
Evidence Provided:
Special Verification Instructions:
```

The Remediation Owner should not mark the item fully closed before verification is completed.

## 21. Verification Result

Record the verification outcome after the Verification Owner completes the separate verification process.

```text
Verification Date:
Verification Owner:
Verification Result:
Observed Access State:
Verification Evidence ID:
Corrective Action Required:
Corrective Action Owner:
Corrective Action Deadline:
```

Approved verification results include:

```text
Verified
Failed Verification
Partially Verified
Unable to Verify
Not Applicable
```

If verification fails, reopen the remediation record or create a linked corrective-action record.

## 22. Outstanding Actions

### Outstanding Action 1

```text
Action:
Reason:
Related Resource:
Risk:
Action Owner:
Target Date:
Current Status:
Required Evidence:
Escalation Required:
```

Copy this subsection for every outstanding action.

If no actions remain, record:

```text
Outstanding Actions: None
```

## 23. Remediation Metrics

```text
Required Completion Date:
Actual Completion Date:
Remediation Target Met:
Number of Actions Required:
Number Completed:
Number Partially Completed:
Number Failed:
Number Blocked:
Rollback Required:
Verification Result:
Outstanding Actions:
```

Do not invent or estimate metrics.

## 24. Lessons Learned

```text
What caused the remediation:
What part of the change worked well:
What error or limitation occurred:
What evidence was difficult to capture:
What alternative access path was identified:
What should be improved:
What policy or template requires an update:
What could be automated later:
```

## 25. Closure Criteria

A remediation record may be closed only when:

- [ ] The related decision is documented.
- [ ] The correct identity and resource were selected.
- [ ] The approved change was implemented.
- [ ] The actual result was recorded.
- [ ] Initial and resulting access states were documented.
- [ ] Errors and limitations were recorded.
- [ ] Required evidence was registered.
- [ ] Required verification was completed.
- [ ] Failed verification was corrected or escalated.
- [ ] Outstanding actions have accountable owners.
- [ ] Sensitive information was protected.
- [ ] Simulated evidence was clearly labeled.
- [ ] The closure date was recorded.

## 26. Closure Record

```text
Remediation ID:
Related Review ID:
Related Review Item ID:
Final Remediation Result:
Final Access State:
Verification Result:
Outstanding Risk:
Outstanding Action:
Closed By:
Closure Date:
Final Status:
Next Review Date:
```

## 27. Control Status

Select one:

- [ ] Empty Template
- [ ] Simulation in Progress
- [ ] Remediation in Progress
- [ ] Pending Verification
- [ ] Closed with Outstanding Actions
- [ ] Manually Simulated and Validated

```text
Selected Status:
Status Justification:
Supporting Evidence:
```

Do not select `Manually Simulated and Validated` unless the authorized remediation, resulting access state, evidence, verification, and closure record are complete.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Template Control

```text
Template: Access Review Remediation Template
File: evidence/templates/remediation-template.md
Version: 1.0
Status: Empty Template
Owner: Wisdom Kwame Djam
Created: 2026-09-17
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17
```

## Disclaimer

This template is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not document a real production access change, employee decision, patient environment, vendor action, security incident, or native Microsoft Entra access-review workflow.
