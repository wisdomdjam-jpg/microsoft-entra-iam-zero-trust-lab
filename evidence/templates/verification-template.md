# Access Review Verification Template

## Simulation Notice

This template supports fictional access-verification scenarios for the Northstar Health Microsoft Entra IAM and Zero Trust Governance Lab.

It does not document a real production access decision, employee record, patient environment, vendor action, security incident, or native Microsoft Entra access-review workflow.

All identities, resources, access states, findings, and evidence entered in this template must be fictional, sanitized, or appropriately redacted.

## 1. Verification Information

```text
Verification ID:
Related Review ID:
Related Review Item ID:
Related Remediation ID:
Related Escalation ID:
Related Exception ID:
Verification Title:
Identity:
Identity Type:
Resource:
Expected Access State:
Verification Start Date:
Required Completion Date:
Actual Completion Date:
Current Status:
Risk Classification:
```

Use the following verification identifier format:

```text
VER-[YEAR]-[RESOURCE]-[SEQUENCE]
```

Example:

```text
VER-2026-HELPDESK-001
```

Approved status values include:

```text
Draft
Not Started
In Progress
Blocked
Completed
Failed
Partially Completed
Unable to Verify
Corrective Action Required
Closed
Closed with Outstanding Actions
```

Approved risk classifications include:

```text
Standard
High
Critical
```

## 2. Verification Purpose

Describe what access state must be independently confirmed.

```text
Purpose:
```

Example:

```text
Verify that the unsupported Helpdesk Administrator assignment was removed and that the fictional user no longer appears in the role-assignment list.
```

Verification must confirm the resulting access state rather than relying only on a statement from the Remediation Owner.

## 3. Decision and Remediation Reference

```text
Decision Source:
Decision Date:
Decision Authority:
Approved Decision:
Decision Justification:
Remediation ID:
Remediation Owner:
Remediation Date:
Reported Remediation Result:
Remediation Evidence ID:
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

## 4. Verification Scope

```text
Identity:
Identity Type:
Account Status:
Resource:
Resource Type:
Previous Access State:
Approved Access State:
Reported Access State:
Assignment Type:
Assignment Source:
Related Group:
Related Application:
Related Administrative Role:
```

### In Scope

- Identity:
- Resource:
- Assignment:
- Expected access state:
- Known alternative access paths:
- Required evidence:

### Out of Scope

- Unrelated identities:
- Unrelated resources:
- Assignments not included:
- Technical limitations:
- Evidence limitations:

Verification must remain within the approved scope while also checking known alternative access paths that could preserve equivalent access.

## 5. Roles and Responsibilities

```text
Decision Authority:
Remediation Owner:
Verification Owner:
Resource Owner:
Identity and Access Management Administrator:
Escalation Authority:
Security Authority:
```

If one person performs multiple roles in the lab, record:

```text
Separation-of-Duties Limitation:
Compensating Measure:
```

Whenever practical, the Verification Owner should be different from the person who implemented the remediation.

## 6. Independence Assessment

Confirm whether the verification is sufficiently independent.

- [ ] The Verification Owner did not perform the remediation.
- [ ] The Verification Owner is authorized to inspect the resource.
- [ ] The Verification Owner understands the approved decision.
- [ ] The Verification Owner has access to the required evidence.
- [ ] No conflict of interest was identified.
- [ ] Any separation-of-duties limitation was documented.

```text
Independent Verification Available:
Conflict of Interest Identified:
Limitation:
Compensating Measure:
Assessment Completed By:
Assessment Date:
```

If independent verification is unavailable in the lab, document the limitation rather than claiming full separation of duties.

## 7. Pre-Verification Validation

Before verifying the resulting access state, confirm:

- [ ] The correct identity was selected.
- [ ] The correct resource was selected.
- [ ] The approved decision was reviewed.
- [ ] The expected access state is clear.
- [ ] The remediation record was reviewed.
- [ ] The initial access evidence was reviewed.
- [ ] The reported remediation evidence was reviewed.
- [ ] Known alternative access paths were identified.
- [ ] Sensitive information will not be exposed.
- [ ] The Verification Owner is authorized to inspect the resource.

```text
Pre-Verification Completed By:
Completion Date:
Proceed with Verification:
Known Limitation:
```

If the expected access state is unclear, return the item for clarification before verification.

## 8. Expected Access State

Document the precise state that should exist after remediation.

```text
Identity:
Resource:
Expected Role Assignment:
Expected Group Membership:
Expected Application Assignment:
Expected Guest Status:
Expected Sponsor:
Expected Expiration Date:
Expected Exception Status:
Other Expected Condition:
```

The expected state must be measurable.

Insufficient example:

```text
Access should be correct.
```

Acceptable example:

```text
The fictional user must no longer appear as an active Helpdesk Administrator. The standard member account should remain enabled, and no other role change is included in this verification.
```

## 9. Verification Procedure

Document each step actually performed.

### Verification Step 1

```text
Step:
Expected Result:
Observed Result:
Performed By:
Date and Time:
Evidence ID:
Error or Limitation:
```

Copy this subsection for each additional verification step.

The procedure must describe what was inspected and what was observed.

## 10. Administrative-Role Verification

Complete this section when verifying an administrative-role change.

```text
Administrative Role:
Identity:
Previous Role State:
Expected Role State:
Observed Role State:
Identity Still Listed:
Equivalent Administrative Role Identified:
Verification Result:
Evidence ID:
```

Suggested verification steps:

1. Open the applicable Microsoft Entra role.
2. Inspect the current assignment list.
3. Confirm whether the identity appears.
4. Check known related administrative assignments.
5. Compare the observed state with the approved decision.
6. Capture sanitized evidence.
7. Record the result.

Do not claim that Privileged Identity Management was used unless PIM was licensed, configured, and validated.

## 11. Security-Group Verification

Complete this section when verifying group membership.

```text
Group Name:
Group Purpose:
Identity:
Previous Membership State:
Expected Membership State:
Observed Membership State:
Direct Membership Present:
Known Indirect Membership Present:
Verification Result:
Evidence ID:
```

Suggested verification steps:

1. Open the correct security group.
2. Inspect the current membership.
3. Confirm whether the identity appears as a direct member.
4. Check known related or duplicate groups.
5. Compare the observed state with the approved decision.
6. Capture sanitized evidence.
7. Record the result.

For the external-vendor group, use the exact name:

```text
GRP-External-Vendors
```

## 12. Northstar Portal Verification

Complete this section when verifying access to the Northstar Patient Records Portal.

```text
Enterprise Application:
Identity:
Previous Assignment State:
Expected Assignment State:
Observed Assignment State:
Direct Assignment Present:
Group-Based Assignment Present:
Assignment Required:
Alternative Access Path Identified:
Verification Result:
Evidence ID:
```

Suggested verification steps:

1. Open Enterprise applications.
2. Open the Northstar Patient Records Portal.
3. Confirm that user assignment remains required.
4. Open the user and group assignment list.
5. Search for the relevant identity or group.
6. Compare the observed assignment with the approved decision.
7. Check known alternative assignment paths.
8. Capture sanitized evidence.
9. Record the result.

Do not treat the application registration and enterprise application as the same object.

Group-based access must not be described as implemented unless the group was assigned and effective access was tested.

## 13. B2B Guest Verification

Complete this section when verifying a guest-account or guest-access change.

```text
Guest Identity:
Internal Sponsor:
Previous Guest Status:
Expected Guest Status:
Observed Guest Status:
Expected Group Membership:
Observed Group Membership:
Expected Application Assignment:
Observed Application Assignment:
Expected Administrative Role:
Observed Administrative Role:
Verification Result:
Evidence ID:
```

Suggested verification steps:

1. Open the Microsoft Entra user record.
2. Confirm the guest identity and account status.
3. Inspect current group memberships.
4. Inspect relevant application assignments.
5. Inspect administrative roles where applicable.
6. Confirm the internal sponsor where recorded.
7. Compare the observed state with the approved decision.
8. Capture sanitized evidence.
9. Record the result.

Removing a guest from one group does not prove that all guest access was removed.

## 14. External-Vendor Verification

Complete this section when verifying external-vendor access.

```text
Vendor Identity:
Internal Sponsor:
Vendor Relationship Status:
Expected GRP-External-Vendors Membership:
Observed GRP-External-Vendors Membership:
Other Group Assignments Checked:
Application Assignments Checked:
Administrative Roles Checked:
Verification Result:
Evidence ID:
```

The verifier must check whether the external identity retains access through another known group, application, or role.

## 15. Exception Verification

Complete this section when verifying exception expiration or closure.

```text
Exception ID:
Previous Exception Status:
Expected Exception Status:
Observed Exception Status:
Expected Access State:
Observed Access State:
Compensating Controls Closed:
Renewal Record Present:
Unauthorized Extension Identified:
Verification Result:
Evidence ID:
```

An expired exception must not be treated as active unless a new exception request was independently assessed and approved.

## 16. Alternative Access Path Check

The verifier should determine whether equivalent access remains through another assignment.

Select all paths checked:

- [ ] Direct administrative-role assignment
- [ ] Direct security-group membership
- [ ] Nested or indirect group membership
- [ ] Direct enterprise-application assignment
- [ ] Group-based enterprise-application assignment
- [ ] Guest assignment
- [ ] External-vendor group membership
- [ ] Temporary exception
- [ ] Another known access path
- [ ] Alternative-path review was not technically available

```text
Alternative Paths Checked:
Equivalent Access Found:
Description:
Evidence ID:
Limitation:
Required Action:
```

Do not state that all possible access paths were checked when the available lab tools or evidence did not support that conclusion.

## 17. Observed Access State

```text
Observed Role Assignment:
Observed Group Membership:
Observed Application Assignment:
Observed Guest Status:
Observed Sponsor:
Observed Expiration Date:
Observed Exception Status:
Other Observed Condition:
Observation Date:
Observed By:
```

The observed state must be compared directly with the expected state.

## 18. Verification Result

Select one:

- [ ] Verified
- [ ] Failed Verification
- [ ] Partially Verified
- [ ] Unable to Verify
- [ ] Not Applicable

```text
Selected Result:
Result Date:
Result Rationale:
Expected Access State:
Observed Access State:
Difference Identified:
Remaining Risk:
Corrective Action Required:
```

### Verified

Use when the observed access state fully matches the approved expected state.

### Failed Verification

Use when the remediation did not produce the approved result.

### Partially Verified

Use when some components were confirmed but other required components remain incomplete or uncertain.

### Unable to Verify

Use when technical access, evidence, licensing, or another limitation prevents a reliable conclusion.

### Not Applicable

Use only when independent verification is not required and the reason is documented.

A partial, failed, or unavailable verification must not be reported as successful.

## 19. Failed Verification Response

Complete this section when verification fails.

```text
Failure Identified:
Failure Date:
Expected Result:
Observed Result:
Potential Cause:
Security or Governance Effect:
Immediate Control Required:
Corrective Action:
Corrective Action Owner:
Corrective Action Deadline:
New Remediation ID:
Escalation ID:
Reverification Required:
```

Actions may include:

- Reopen the remediation record
- Create a corrective-action remediation
- Restrict access temporarily
- Escalate the failure
- Correct the selected identity or resource
- Investigate an indirect access path
- Collect missing evidence
- Repeat verification after correction

## 20. Partial or Unavailable Verification

Complete this section when verification is partial or unavailable.

```text
Verification Limitation:
Cause:
Elements Successfully Verified:
Elements Not Verified:
Evidence Missing:
Risk of Incomplete Verification:
Temporary Control:
Follow-up Action:
Action Owner:
Target Date:
Escalation Required:
```

Examples include:

- Required portal information unavailable
- Insufficient permissions
- Indirect access could not be examined
- Evidence was not captured
- Resource no longer exists
- Licensing limitation
- Remediation record is incomplete
- Expected state is unclear

The limitation must be disclosed in the final review summary.

## 21. Corrective Action and Reverification

```text
Corrective Action Required:
Corrective Action Description:
Corrective Action Owner:
Required Completion Date:
Actual Completion Date:
Corrective Action Result:
New Remediation Evidence ID:
Reverification Date:
Reverification Owner:
Reverification Result:
Reverification Evidence ID:
```

A failed verification remains open until:

- The issue is corrected and verified
- The risk is formally accepted through an approved exception
- The issue is escalated to an accountable authority
- The review closes with clearly documented outstanding actions

## 22. Verification Evidence

### Evidence Item 1

```text
Evidence ID:
Related Review ID:
Related Review Item ID:
Related Remediation ID:
Verification ID:
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

Verification evidence should demonstrate:

- The identity and resource examined
- The observed access state
- The date of verification
- The comparison with the expected state
- Any alternative access path identified
- Any error or limitation

Approved sensitivity classifications include:

```text
Public
Internal
Confidential
Restricted
```

Restricted information must never be committed to the public repository.

## 23. Evidence Quality Check

Confirm:

- [ ] The evidence shows the correct resource.
- [ ] The evidence relates to the correct identity.
- [ ] The observed state is readable.
- [ ] The capture date is recorded.
- [ ] The evidence is linked to the Verification ID.
- [ ] The evidence was not altered misleadingly.
- [ ] Sensitive information was permanently redacted.
- [ ] No password, secret, token, or authentication code is visible.
- [ ] The evidence supports the selected verification result.
- [ ] Any limitation is documented.

```text
Evidence Quality Result:
Reviewed By:
Review Date:
Issue Identified:
Required Correction:
```

## 24. Outstanding Actions

### Outstanding Action 1

```text
Action:
Reason:
Related Identity:
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

## 25. Verification Metrics

```text
Required Completion Date:
Actual Completion Date:
Verification Target Met:
Number of Access Paths Checked:
Expected State Confirmed:
Failed Elements:
Partial Elements:
Corrective Actions Required:
Corrective Actions Completed:
Reverification Required:
Final Verification Result:
Outstanding Actions:
```

Do not invent or estimate metrics.

## 26. Lessons Learned

```text
What was verified:
What was difficult to verify:
What alternative access path was found:
What evidence limitation existed:
What caused any verification failure:
What corrective action was required:
What should be improved:
What policy or template requires an update:
What could be automated later:
```

## 27. Closure Criteria

A verification record may be closed only when:

- [ ] The related decision was reviewed.
- [ ] The remediation record was reviewed.
- [ ] The expected access state was clearly defined.
- [ ] The correct identity and resource were inspected.
- [ ] The observed access state was recorded.
- [ ] Known alternative access paths were considered.
- [ ] The verification result was explicitly selected.
- [ ] The result rationale was documented.
- [ ] Required evidence was registered.
- [ ] Failed verification was corrected or escalated.
- [ ] Partial or unavailable verification was disclosed.
- [ ] Outstanding actions have accountable owners.
- [ ] Sensitive information was protected.
- [ ] Simulated evidence was clearly labeled.
- [ ] The closure date was recorded.

## 28. Closure Record

```text
Verification ID:
Related Review ID:
Related Review Item ID:
Related Remediation ID:
Expected Access State:
Final Observed Access State:
Final Verification Result:
Remaining Risk:
Outstanding Action:
Closed By:
Closure Date:
Final Status:
Next Review Date:
```

## 29. Control Status

Select one:

- [ ] Empty Template
- [ ] Simulation in Progress
- [ ] Verification in Progress
- [ ] Corrective Action Required
- [ ] Closed with Outstanding Actions
- [ ] Manually Simulated and Validated

```text
Selected Status:
Status Justification:
Supporting Evidence:
```

Do not select `Manually Simulated and Validated` unless the expected access state, verification procedure, evidence, result, required corrective action, and closure record are complete.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student  
Information Security Management  
Toronto, Ontario, Canada

## Template Control

```text
Template: Access Review Verification Template
File: evidence/templates/verification-template.md
Version: 1.0
Status: Empty Template
Owner: Wisdom Kwame Djam
Created: 2026-09-17
Review Frequency: Annual and event-driven
Next Scheduled Review: 2027-09-17
```

## Disclaimer

This template is an educational identity-governance artifact for a fictional Microsoft Entra environment.

It does not document a real production verification, employee decision, patient environment, vendor action, security incident, or native Microsoft Entra access-review workflow.
