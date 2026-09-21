# Microsoft Graph Permission Evidence

This folder contains sanitized evidence of Microsoft Graph permissions configured for the fictional Northstar Patient Records Portal.

## Evidence Item

**Evidence ID:** `EVD-2026-GRAPH-001`  
**Application:** Northstar Patient Records Portal  
**API:** Microsoft Graph  
**Permission:** `User.Read`  
**Permission type:** Delegated  
**Purpose:** Sign in and read the signed-in user's profile  
**Admin consent required:** No  
**Implementation status:** Implemented and Validated  

## Control Demonstrated

The screenshot demonstrates that the Northstar Patient Records Portal was configured with the minimal delegated Microsoft Graph `User.Read` permission rather than broad application or tenant-wide permissions.

This supports:

- Least-privilege API access
- Minimal permission selection
- Delegated user-context access
- Application-permission documentation
- Evidence-based configuration review

## Evidence File

```text
northstar-microsoft-graph-user-read-permission_2026-09-17.png
