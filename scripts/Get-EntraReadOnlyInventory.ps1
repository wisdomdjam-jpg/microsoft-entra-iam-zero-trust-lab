<#
.SYNOPSIS
    Exports a sanitized read-only inventory from a Microsoft Entra lab.

.DESCRIPTION
    Retrieves selected users, guests, account status, security groups,
    external-vendor membership, and the Northstar service principal.

    The script requests delegated read-only Microsoft Graph permissions.
    It does not create, update, disable, or remove Microsoft Entra resources.

    Administrative-role assignments and Northstar application assignments
    are excluded because those automation areas have not yet been validated.

.NOTES
    Project: Microsoft Entra IAM and Zero Trust Governance Lab
    Owner: Wisdom Kwame Djam
    Status: Partially Validated
#>

[CmdletBinding()]
param()

$ErrorActionPreference = "Stop"

$OutputFolder = Join-Path $PSScriptRoot "entra-inventory-output"

$RequiredScopes = @(
    "User.Read.All"
    "Group.Read.All"
    "Application.Read.All"
)

$ConnectedToGraph = $false

function Export-SafeCsv {
    param(
        [Parameter(Mandatory)]
        [object[]]$Data,

        [Parameter(Mandatory)]
        [string]$FileName
    )

    if (@($Data).Count -eq 0) {
        Write-Warning "No records were returned for $FileName"
        return
    }

    $FilePath = Join-Path $OutputFolder $FileName

    $Data |
        Export-Csv `
            -Path $FilePath `
            -NoTypeInformation `
            -Encoding utf8

    Write-Host "Created: $FilePath" -ForegroundColor Green
}

try {
    Write-Host ""
    Write-Host "Microsoft Entra Read-Only Inventory" -ForegroundColor Cyan
    Write-Host "No tenant changes will be made." -ForegroundColor Yellow
    Write-Host ""

    $RequiredCommands = @(
        "Connect-MgGraph"
        "Get-MgContext"
        "Get-MgUser"
        "Get-MgGroup"
        "Get-MgGroupMember"
        "Get-MgServicePrincipal"
        "Disconnect-MgGraph"
    )

    foreach ($CommandName in $RequiredCommands) {
        $Command = Get-Command `
            -Name $CommandName `
            -ErrorAction SilentlyContinue

        if ($null -eq $Command) {
            throw "Required Microsoft Graph command is unavailable: $CommandName"
        }
    }

    if (Test-Path $OutputFolder) {
        Remove-Item `
            -Path $OutputFolder `
            -Recurse `
            -Force
    }

    New-Item `
        -Path $OutputFolder `
        -ItemType Directory |
        Out-Null

    Write-Host "Output folder prepared." -ForegroundColor Green

    $TenantDomain = Read-Host "Enter the Entra tenant primary domain"

    if ([string]::IsNullOrWhiteSpace($TenantDomain)) {
        throw "The tenant primary domain cannot be blank."
    }

    $ConnectionParameters = @{
        TenantId     = $TenantDomain
        Scopes       = $RequiredScopes
        ContextScope = "Process"
        NoWelcome    = $true
    }

    Connect-MgGraph @ConnectionParameters

    $Context = Get-MgContext

    if ($null -eq $Context) {
        throw "A Microsoft Graph connection was not established."
    }

    $ConnectedToGraph = $true

    foreach ($Scope in $RequiredScopes) {
        if ($Scope -notin $Context.Scopes) {
            throw "Required read-only permission was not granted: $Scope"
        }
    }

    Write-Host "Read-only Microsoft Graph connection validated." -ForegroundColor Green

    Write-Host ""
    Write-Host "Retrieving users and guests..." -ForegroundColor Cyan

    $Users = Get-MgUser `
        -All `
        -Property DisplayName,UserType,AccountEnabled |
        Select-Object `
            DisplayName,
            UserType,
            AccountEnabled |
        Sort-Object DisplayName

    Export-SafeCsv `
        -Data @($Users) `
        -FileName "entra-users-and-guests.csv"

    Write-Host ""
    Write-Host "Retrieving security groups..." -ForegroundColor Cyan

    $Groups = Get-MgGroup `
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
            } |
        Sort-Object DisplayName

    Export-SafeCsv `
        -Data @($Groups) `
        -FileName "entra-security-groups.csv"

    Write-Host ""
    Write-Host "Retrieving external-vendor membership..." -ForegroundColor Cyan

    $VendorGroup = Get-MgGroup `
        -All `
        -Property Id,DisplayName |
        Where-Object {
            $_.DisplayName -eq "GRP-External-Vendors"
        } |
        Select-Object -First 1

    $VendorMembershipStatus = "Object Not Found"

    if ($null -ne $VendorGroup) {
        if ([string]::IsNullOrWhiteSpace($VendorGroup.Id)) {
            $VendorMembershipStatus = "Not Validated"
            Write-Warning "GRP-External-Vendors was found, but no usable group identifier was returned."
        }
        else {
            $VendorMembers = Get-MgGroupMember `
                -GroupId $VendorGroup.Id `
                -All |
                ForEach-Object {
                    [pscustomobject]@{
                        GroupName   = "GRP-External-Vendors"
                        DisplayName = $_.AdditionalProperties.displayName
                        ObjectType  = (
                            $_.AdditionalProperties.'@odata.type' `
                                -replace "#microsoft.graph.", ""
                        )
                    }
                } |
                Sort-Object DisplayName

            Export-SafeCsv `
                -Data @($VendorMembers) `
                -FileName "entra-external-vendor-membership.csv"

            $VendorMembershipStatus = "Validated"
        }
    }
    else {
        Write-Warning "GRP-External-Vendors was not found."
    }

    Write-Host ""
    Write-Host "Discovering the Northstar service principal..." -ForegroundColor Cyan

    $Northstar = Get-MgServicePrincipal `
        -All `
        -Property DisplayName,AccountEnabled |
        Where-Object {
            $_.DisplayName -eq "Northstar Patient Records Portal"
        } |
        Select-Object -First 1

    $NorthstarStatus = "Object Not Found"

    if ($null -ne $Northstar) {
        $NorthstarRecord = [pscustomobject]@{
            DisplayName    = $Northstar.DisplayName
            AccountEnabled = $Northstar.AccountEnabled
        }

        Export-SafeCsv `
            -Data @($NorthstarRecord) `
            -FileName "entra-northstar-service-principal.csv"

        $NorthstarStatus = "Validated"
    }
    else {
        Write-Warning "Northstar Patient Records Portal was not found."
    }

    Write-Host ""
    Write-Host "Creating validation summary..." -ForegroundColor Cyan

    $Summary = @(
        [pscustomobject]@{
            InventoryArea = "Microsoft Graph authentication"
            Status        = "Validated"
        }

        [pscustomobject]@{
            InventoryArea = "Users and guests"
            Status        = "Validated"
        }

        [pscustomobject]@{
            InventoryArea = "Account-enabled status"
            Status        = "Validated"
        }

        [pscustomobject]@{
            InventoryArea = "Security groups"
            Status        = "Validated"
        }

        [pscustomobject]@{
            InventoryArea = "External-vendor membership"
            Status        = $VendorMembershipStatus
        }

        [pscustomobject]@{
            InventoryArea = "Northstar service-principal discovery"
            Status        = $NorthstarStatus
        }

        [pscustomobject]@{
            InventoryArea = "Administrative-role assignments"
            Status        = "Not Yet Validated"
        }

        [pscustomobject]@{
            InventoryArea = "Northstar application assignments"
            Status        = "Not Yet Validated"
        }

        [pscustomobject]@{
            InventoryArea = "Tenant modifications"
            Status        = "None"
        }
    )

    Export-SafeCsv `
        -Data $Summary `
        -FileName "entra-inventory-validation-summary.csv"

    Write-Host ""
    Write-Host "Inventory completed successfully." -ForegroundColor Green
    Write-Host "Overall status: Partially Validated" -ForegroundColor Yellow
    Write-Host "No tenant changes were made." -ForegroundColor Green
}
catch {
    Write-Host ""
    Write-Host "Inventory stopped safely." -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
}
finally {
    if ($ConnectedToGraph) {
        Disconnect-MgGraph -ErrorAction SilentlyContinue |
            Out-Null

        Write-Host "Microsoft Graph session disconnected." -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Review every CSV before publishing it." -ForegroundColor Yellow