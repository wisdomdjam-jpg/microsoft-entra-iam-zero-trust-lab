<#
.SYNOPSIS
    Produces a sanitized read-only inventory of selected Microsoft Entra
    identities, groups, memberships, administrative roles, and enterprise
    application assignments.

.DESCRIPTION
    This script supports the fictional Northstar Health Microsoft Entra IAM
    and Zero Trust Governance Lab.

    The script uses delegated Microsoft Graph read permissions and exports
    selected non-sensitive fields to CSV files. It does not create, update,
    remove, disable, or otherwise modify Microsoft Entra resources.

    Microsoft Entra Security Defaults should remain enabled. The script uses
    interactive browser authentication because device-code authentication was
    blocked by Security Defaults during lab validation.

    The script excludes tenant IDs, object IDs, application IDs, user principal
    names, email addresses, authentication data, tokens, and diagnostic IDs
    from exported portfolio evidence.

.NOTES
    File: Get-EntraReadOnlyInventory.ps1
    Version: 1.0
    Status: Partially Validated
    Owner: Wisdom Kwame Djam
    Project: Microsoft Entra IAM and Zero Trust Governance Lab
    Environment: Fictional educational lab

    Successfully validated inventory areas:
    - Users and guests
    - Account-enabled status
    - Security groups
    - GRP-External-Vendors membership
    - Northstar service-principal discovery

    Areas requiring additional validation:
    - Administrative-role assignment inventory
    - Northstar application-assignment inventory

    No tenant changes are performed by this script.
#>

[CmdletBinding()]
param(
    [Parameter(Mandatory = $false)]
    [string]$TenantDomain,

    [Parameter(Mandatory = $false)]
    [string]$OutputDirectory = (Join-Path -Path $PWD -ChildPath "entra-inventory-output"),

    [Parameter(Mandatory = $false)]
    [string]$NorthstarApplicationName = "Northstar Patient Records Portal",

    [Parameter(Mandatory = $false)]
    [string]$ExternalVendorGroupName = "GRP-External-Vendors"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$RequiredScopes = @(
    "User.Read.All"
    "Group.Read.All"
    "RoleManagement.Read.Directory"
    "Application.Read.All"
)

$ExpectedSecurityGroups = @(
    "GRP-Clinical-Users"
    "GRP-External-Vendors"
    "GRP-Finance-Users"
    "GRP-HR-Users"
    "GRP-IT-Support"
    "GRP-Security-Readers"
)

$SelectedAdministrativeRoles = @(
    "Helpdesk Administrator"
    "Security Reader"
)

$Results = [ordered]@{
    Authentication               = "Not Started"
    UsersAndGuests               = "Not Started"
    SecurityGroups               = "Not Started"
    ExternalVendorMembership     = "Not Started"
    NorthstarServicePrincipal    = "Not Started"
    AdministrativeRoleInventory  = "Not Started"
    NorthstarAssignmentInventory = "Not Started"
    TenantChanges                = "None"
}

function Write-Section {
    param(
        [Parameter(Mandatory)]
        [string]$Title
    )

    Write-Host ""
    Write-Host ("=" * 72) -ForegroundColor DarkCyan
    Write-Host $Title -ForegroundColor Cyan
    Write-Host ("=" * 72) -ForegroundColor DarkCyan
}

function Export-SanitizedCsv {
    param(
        [Parameter(Mandatory)]
        [object[]]$InputData,

        [Parameter(Mandatory)]
        [string]$FileName
    )

    $Path = Join-Path -Path $OutputDirectory -ChildPath $FileName

    if ($null -eq $InputData -or @($InputData).Count -eq 0) {
        Write-Warning "No records were available for $FileName. No CSV was created."
        return
    }

    $InputData |
        Export-Csv -Path $Path -NoTypeInformation -Encoding UTF8

    Write-Host "Created: $Path" -ForegroundColor Green
}

function Get-ResponseValue {
    param(
        [Parameter(Mandatory)]
        [object]$Response
    )

    if ($Response -is [System.Collections.IDictionary]) {
        return @($Response["value"])
    }

    if ($null -ne $Response.PSObject.Properties["value"]) {
        return @($Response.value)
    }

    return @()
}

function Get-GraphValue {
    param(
        [Parameter(Mandatory = $false)]
        [object]$Object,

        [Parameter(Mandatory)]
        [string]$PropertyName
    )

    if ($null -eq $Object) {
        return $null
    }

    if ($Object -is [System.Collections.IDictionary]) {
        return $Object[$PropertyName]
    }

    $Property = $Object.PSObject.Properties[$PropertyName]

    if ($null -ne $Property) {
        return $Property.Value
    }

    return $null
}

function Test-RequiredCommand {
    param(
        [Parameter(Mandatory)]
        [string]$CommandName
    )

    $Command = Get-Command -Name $CommandName -ErrorAction SilentlyContinue

    if ($null -eq $Command) {
        throw "Required command '$CommandName' is unavailable."
    }
}

function Test-GraphConnection {
    $Context = Get-MgContext

    if ($null -eq $Context) {
        return $false
    }

    foreach ($Scope in $RequiredScopes) {
        if ($Scope -notin $Context.Scopes) {
            return $false
        }
    }

    return $true
}

function Connect-ReadOnlyGraph {
    Write-Section "Microsoft Graph Read-Only Authentication"

    if ([string\]::IsNullOrWhiteSpace($TenantDomain)) {
        $script:TenantDomain = Read-Host "Enter the Microsoft Entra tenant primary domain"
    }

    if ([string\]::IsNullOrWhiteSpace($TenantDomain)) {
        throw "A tenant primary domain is required."
    }

    Write-Host "Connecting with delegated read-only permissions..." -ForegroundColor Yellow
    Write-Host "Security Defaults must remain enabled." -ForegroundColor Yellow
    Write-Host "Do not approve any permission containing ReadWrite." -ForegroundColor Yellow

    Connect-MgGraph `
        -TenantId $TenantDomain `
        -Scopes $RequiredScopes `
        -ContextScope Process `
        -NoWelcome

    if (-not (Test-GraphConnection)) {
        throw "The Microsoft Graph connection does not contain all required read-only scopes."
    }

    $Context = Get-MgContext

    $SafeContext = [pscustomobject]@{
        AuthenticationType = $Context.AuthType
        ContextScope       = $Context.ContextScope
        RequiredScopes     = ($RequiredScopes -join ", ")
        TenantIdentifiers  = "Excluded from public output"
        AccountIdentifiers = "Excluded from public output"
    }

    $SafeContext | Format-List

    $Results.Authentication = "Validated"
}

function Get-SanitizedUserInventory {
    Write-Section "Users and Guests"

    try {
        $Inventory = Get-MgUser `
            -All `
            -Property DisplayName,UserType,AccountEnabled |
            Select-Object `
                DisplayName,
                UserType,
                AccountEnabled |
            Sort-Object DisplayName

        $Inventory | Format-Table -AutoSize

        Export-SanitizedCsv `
            -InputData @($Inventory) `
            -FileName "entra-users-and-guests.csv"

        $Results.UsersAndGuests = "Validated"
    }
    catch {
        $Results.UsersAndGuests = "Not Validated"
        Write-Warning "User and guest inventory failed: $($_.Exception.Message)"
    }
}

function Get-SanitizedSecurityGroupInventory {
    Write-Section "Security Groups"

    try {
        $Inventory = Get-MgGroup `
            -All `
            -Property DisplayName,SecurityEnabled,GroupTypes |
            Where-Object {
                $_.SecurityEnabled -eq $true
            } |
            Select-Object `
                DisplayName,
                SecurityEnabled,
                @{
                    Name = "GroupTypes"
                    Expression = {
                        $_.GroupTypes -join ","
                    }
                },
                @{
                    Name = "ExpectedLabGroup"
                    Expression = {
                        $_.DisplayName -in $ExpectedSecurityGroups
                    }
                } |
            Sort-Object DisplayName

        $Inventory | Format-Table -AutoSize

        Export-SanitizedCsv `
            -InputData @($Inventory) `
            -FileName "entra-security-groups.csv"

        $Results.SecurityGroups = "Validated"
    }
    catch {
        $Results.SecurityGroups = "Not Validated"
        Write-Warning "Security-group inventory failed: $($_.Exception.Message)"
    }
}

function Get-SanitizedExternalVendorMembership {
    Write-Section "External-Vendor Group Membership"

    try {
        $VendorGroup = Get-MgGroup `
            -All `
            -Property Id,DisplayName |
            Where-Object {
                $_.DisplayName -eq $ExternalVendorGroupName
            } |
            Select-Object -First 1

        if ($null -eq $VendorGroup) {
            $Results.ExternalVendorMembership = "Object Not Found"
            Write-Warning "The group '$ExternalVendorGroupName' was not found."
            return
        }

        $Inventory = Get-MgGroupMember `
            -GroupId $VendorGroup.Id `
            -All |
            ForEach-Object {
                [pscustomobject]@{
                    GroupName   = $ExternalVendorGroupName
                    DisplayName = $_.AdditionalProperties.displayName
                    ObjectType  = (
                        $_.AdditionalProperties.'@odata.type' `
                            -replace "#microsoft.graph.", ""
                    )
                }
            } |
            Sort-Object DisplayName

        $Inventory | Format-Table -AutoSize

        Export-SanitizedCsv `
            -InputData @($Inventory) `
            -FileName "entra-external-vendor-membership.csv"

        $Results.ExternalVendorMembership = "Validated"
    }
    catch {
        $Results.ExternalVendorMembership = "Not Validated"
        Write-Warning "External-vendor membership inventory failed: $($_.Exception.Message)"
    }
}

function Get-SanitizedNorthstarServicePrincipal {
    Write-Section "Northstar Service Principal"

    try {
        $ServicePrincipals = Get-MgServicePrincipal `
            -All `
            -Property Id,DisplayName,AccountEnabled

        $Northstar = $ServicePrincipals |
            Where-Object {
                $_.DisplayName -eq $NorthstarApplicationName
            } |
            Select-Object -First 1

        if ($null -eq $Northstar) {
            $Results.NorthstarServicePrincipal = "Object Not Found"
            Write-Warning "The service principal '$NorthstarApplicationName' was not found."
            return $null
        }

        $SafeInventory = [pscustomobject]@{
            DisplayName    = $Northstar.DisplayName
            AccountEnabled = $Northstar.AccountEnabled
        }

        $SafeInventory | Format-Table -AutoSize

        Export-SanitizedCsv `
            -InputData @($SafeInventory) `
            -FileName "entra-northstar-service-principal.csv"

        $Results.NorthstarServicePrincipal = "Validated"

        return $Northstar
    }
    catch {
        $Results.NorthstarServicePrincipal = "Not Validated"
        Write-Warning "Northstar service-principal discovery failed: $($_.Exception.Message)"
        return $null
    }
}

function Get-SanitizedAdministrativeRoleInventory {
    Write-Section "Selected Administrative-Role Assignments"

    try {
        $Uri = "https://graph.microsoft.com/v1.0/roleManagement/directory/roleAssignments?`$expand=principal,roleDefinition"
        $Response = Invoke-MgGraphRequest `
            -Method GET `
            -Uri $Uri `
            -OutputType PSObject

        $Assignments = Get-ResponseValue -Response $Response

        $Inventory = foreach ($Assignment in $Assignments) {
            $Principal = Get-GraphValue `
                -Object $Assignment `
                -PropertyName "principal"

            $RoleDefinition = Get-GraphValue `
                -Object $Assignment `
                -PropertyName "roleDefinition"

            $RoleName = Get-GraphValue `
                -Object $RoleDefinition `
                -PropertyName "displayName"

            if ($RoleName -in $SelectedAdministrativeRoles) {
                [pscustomobject]@{
                    Identity = Get-GraphValue `
                        -Object $Principal `
                        -PropertyName "displayName"

                    Role = $RoleName

                    Scope = Get-GraphValue `
                        -Object $Assignment `
                        -PropertyName "directoryScopeId"
                }
            }
        }

        $Inventory = @($Inventory) |
            Where-Object {
                -not [string\]::IsNullOrWhiteSpace($_.Role)
            } |
            Sort-Object Role

        if ($Inventory.Count -eq 0) {
            $Results.AdministrativeRoleInventory = "Not Yet Validated"
            Write-Warning "No selected administrative-role assignments were returned."
            return
        }

        $Inventory | Format-Table -AutoSize

        Export-SanitizedCsv `
            -InputData $Inventory `
            -FileName "entra-selected-administrative-roles.csv"

        $Results.AdministrativeRoleInventory = "Validated"
    }
    catch {
        $Results.AdministrativeRoleInventory = "Not Yet Validated"
        Write-Warning "Administrative-role inventory was not completed."
        Write-Warning $_.Exception.Message
    }
}

function Get-SanitizedNorthstarAssignments {
    param(
        [Parameter(Mandatory = $false)]
        [object]$Northstar
    )

    Write-Section "Northstar Application Assignments"

    try {
        if ($null -eq $Northstar) {
            $Results.NorthstarAssignmentInventory = "Not Yet Validated"
            Write-Warning "Northstar assignment retrieval was skipped because the service principal was unavailable."
            return
        }

        $NorthstarId = $Northstar.Id

        if ([string\]::IsNullOrWhiteSpace($NorthstarId)) {
            $Results.NorthstarAssignmentInventory = "Not Yet Validated"
            Write-Warning "Northstar assignment retrieval was skipped because no usable service-principal identifier was returned."
            return
        }

        $Uri = "https://graph.microsoft.com/v1.0/servicePrincipals/$NorthstarId/appRoleAssignedTo?`$select=principalDisplayName,principalType,resourceDisplayName"

        $Response = Invoke-MgGraphRequest `
            -Method GET `
            -Uri $Uri `
            -OutputType PSObject

        $Assignments = Get-ResponseValue -Response $Response

        $Inventory = foreach ($Assignment in $Assignments) {
            [pscustomobject]@{
                PrincipalDisplayName = Get-GraphValue `
                    -Object $Assignment `
                    -PropertyName "principalDisplayName"

                PrincipalType = Get-GraphValue `
                    -Object $Assignment `
                    -PropertyName "principalType Get-GraphValue `
                    -Object $Assignment `
                    -PropertyName "resourceDisplayName"
            }
        }

        $Inventory = @($Inventory) |
            Where-Object {
                -not :IsNullOrWhiteSpace($_.PrincipalDisplayName)
            } |
            Sort-Object PrincipalDisplayName

        if ($Inventory.Count -eq 0) {
            $Results.NorthstarAssignmentInventory = "Not Yet Validated"
            Write-Warning "No Northstar application assignments were returned."
            return
        }

        $Inventory | Format-Table -AutoSize

        Export-SanitizedCsv `
            -InputData $Inventory `
            -FileName "entra-northstar-application-assignments.csv"

        $Results.NorthstarAssignmentInventory = "Validated"
    }
    catch {
        $Results.NorthstarAssignmentInventory = "Not Yet Validated"
        Write-Warning "Northstar assignment inventory was not completed."
        Write-Warning $_.Exception.Message
    }
}

function Show-ValidationSummary {
    Write-Section "Validation Summary"

    $Summary = foreach ($Entry in $Results.GetEnumerator()) {
        [pscustomobject]@{
            InventoryArea = $Entry.Key
            Status        = $Entry.Value
        }
    }

    $Summary | Format-Table -AutoSize

    Export-SanitizedCsv `
        -InputData @($Summary) `
        -FileName "entra-inventory-validation-summary.csv"

    Write-Host ""
    Write-Host "Overall classification: Partially Validated" -ForegroundColor Yellow
    Write-Host "No tenant changes were made." -ForegroundColor Green
    Write-Host "Review all CSV files before publishing them." -ForegroundColor Yellow
}

try {
    Write-Section "Prerequisite Validation"

    Test-RequiredCommand -CommandName "Connect-MgGraph"
    Test-RequiredCommand -CommandName "Get-MgContext"
    Test-RequiredCommand -CommandName "Get-MgUser"
    Test-RequiredCommand -CommandName "Get-MgGroup"
    Test-RequiredCommand -CommandName "Get-MgGroupMember"
    Test-RequiredCommand -CommandName "Get-MgServicePrincipal"
    Test-RequiredCommand -CommandName "Invoke-MgGraphRequest"
    Test-RequiredCommand -CommandName "Disconnect-MgGraph"

    if (-not (Test-Path -Path $OutputDirectory)) {
        New-Item `
            -Path $OutputDirectory `
            -ItemType Directory `
            -Force |
            Out-Null
    }

    Write-Host "Output directory prepared: $OutputDirectory" -ForegroundColor Green

    Connect-ReadOnlyGraph

    Get-SanitizedUserInventory
    Get-SanitizedSecurityGroupInventory
    Get-SanitizedExternalVendorMembership

    $NorthstarServicePrincipal = Get-SanitizedNorthstarServicePrincipal

    Get-SanitizedAdministrativeRoleInventory
    Get-SanitizedNorthstarAssignments -Northstar $NorthstarServicePrincipal

    Show-ValidationSummary
}
catch {
    Write-Host ""
    Write-Error "Inventory execution stopped: $($_.Exception.Message)"
}
finally {
    $Context = Get-MgContext

    if ($null -ne $Context) {
        Write-Host ""
        Write-Host "Disconnecting from Microsoft Graph..." -ForegroundColor Yellow

        Disconnect-MgGraph -ErrorAction SilentlyContinue |
            Out-Null

        Write-Host "Microsoft Graph session disconnected." -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Script completed." -ForegroundColor Cyan
Write-Host "Review exported files before adding any output to GitHub." -ForegroundColor Yellow
