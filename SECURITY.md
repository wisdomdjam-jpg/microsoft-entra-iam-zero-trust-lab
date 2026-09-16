# Security Policy

## Project Scope

This repository documents a personal Microsoft Entra identity and access management laboratory created for education, skills development, and professional portfolio purposes.

Northstar Health Services and all users, groups, departments, employee identifiers, applications, and access scenarios in this repository are fictional.

This repository does not represent a production environment, employer tenant, school tenant, medical system, customer deployment, or security guarantee.

## Data Classification

The repository is intended to contain only:

- Sanitized Microsoft Entra configuration screenshots
- Fictional identity and group information
- Access-control matrices
- Governance and policy designs
- Licensing assessments
- Joiner-mover-leaver documentation
- Security architecture explanations
- Publicly shareable project notes

The repository must not contain production, employer, school, patient, customer, or confidential organizational data.

## Prohibited Information

Do not commit, upload, or disclose:

- Passwords or temporary passwords
- Access tokens or refresh tokens
- Client secrets
- Private keys or certificates containing private keys
- Authentication QR codes
- Guest invitation or redemption links
- Device authentication codes
- Tenant IDs
- Subscription IDs
- Object IDs
- Application or client IDs unless specifically required and risk-reviewed
- Service-principal IDs
- Session IDs
- Correlation IDs
- Request IDs
- IP addresses
- Private tenant domains
- Administrator sign-in addresses
- External guest email addresses
- User principal names containing private tenant information
- Billing or payment details
- Recovery codes
- Browser cookies or session data
- PowerShell authentication or troubleshooting output containing identifiers

## Screenshot Sanitization

Before an image is uploaded, review the complete screenshot and remove or obscure sensitive information using opaque redaction or safe cropping.

Redact or crop:

- Browser address bars containing identifiers
- Tenant and directory identifiers
- Administrator email addresses
- External guest email addresses
- User principal names
- Object and application identifiers
- Session, correlation, and request identifiers
- IP addresses
- Invitation links
- Authentication details
- Unrelated desktop applications and notifications

The following may remain visible when they contain only fictional or non-sensitive information:

- Fictional user display names
- Fictional group names
- Fictional application names
- Configuration headings
- Role names
- Account and invitation states
- Successful audit status
- Licensing requirement messages
- The project author's professional name

Redaction must be permanent in the uploaded image. Transparent highlighting, blur that remains readable, or movable overlays must not be used.

## Identity and Access Safety

The lab follows these principles:

- Use least-privilege administrative roles
- Avoid assigning Global Administrator to fictional users
- Separate identity creation from access authorization
- Remove obsolete access during role changes
- Revoke sessions and disable accounts during offboarding
- Avoid unnecessary standing privileged accounts
- Review application permissions before granting consent
- Do not create secrets unless a documented technical requirement exists
- Test restrictive policies carefully before enforcement
- Preserve emergency-access planning for production designs

## Configured and Design-Specified Controls

The repository distinguishes between controls that were configured and validated and controls that were designed but not deployed because of licensing limitations.

Configured controls may be described as implemented only when supported by sanitized evidence.

Premium controls such as Conditional Access, Privileged Identity Management, Access Reviews, Entitlement Management, and Lifecycle Workflows must be described as assessed or design-specified unless they were actually deployed and validated in an appropriately licensed environment.

## Responsible Disclosure

If sensitive information, an exposed credential, or another security concern is discovered in this repository:

1. Do not open a public GitHub issue containing the sensitive information.
2. Use GitHub's private vulnerability reporting feature if it is enabled.
3. Otherwise, contact the repository owner privately through the public contact method listed on the GitHub profile.
4. Include the affected file path, a concise description, and safe reproduction details.
5. Do not include live credentials, tokens, or unnecessary personal information in the report.

The repository owner will review legitimate reports and take reasonable corrective action, which may include removing the affected content, rotating credentials, invalidating sessions, updating documentation, and reviewing repository history.

## Incident Response for Accidental Exposure

If sensitive information is committed accidentally:

1. Remove public access to the exposed material immediately.
2. Revoke or rotate the affected credential, token, secret, invitation, or key.
3. Invalidate affected sessions where applicable.
4. Remove the information from the current repository content.
5. Review Git history and cached copies for persistent exposure.
6. Replace affected identifiers or resources when appropriate.
7. Document the corrective action privately.
8. Recheck all related screenshots and documentation before restoring public visibility.

Deleting a file from the latest commit alone may not remove it from repository history. Credential rotation remains necessary whenever a usable secret may have been exposed.

## Dependencies and Automation

This repository currently focuses on portal-based Microsoft Entra configuration and governance documentation.

Microsoft Graph PowerShell automation is listed as a future enhancement and must not be represented as a completed implementation until it has been executed and validated successfully.

Future scripts must:

- Use the minimum permissions required
- Prefer read-only operations for reporting
- Avoid hard-coded credentials and tenant identifiers
- Store no tokens or secrets in the repository
- Include clear prerequisites and scope descriptions
- Avoid modifying production environments
- Be tested in an isolated laboratory tenant

## Supported Versions

This is a portfolio and educational repository rather than a released software product. Security and documentation updates apply to the current `main` branch.

## Disclaimer

The controls and procedures documented here are educational examples. Organizations should perform their own security, legal, privacy, regulatory, operational, and licensing assessments before adopting similar configurations in production.

## Author

**Wisdom Kwame Djam**  
Graduate Informatics Student, Information Security Management  
GitHub: https://github.com/wisdomdjam-jpg
