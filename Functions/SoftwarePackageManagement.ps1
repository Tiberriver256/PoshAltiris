
Function Add-SWPackageFile {

<#
.SYNOPSIS
    

.PARAMETER PackageGuid
     

.PARAMETER File
     

.PARAMETER IgnoreAttributes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$File,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			File = $File
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/AddFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWPackage {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER SoftwareResourceGuid
     

.PARAMETER PackageSourceType
     

.PARAMETER PackageLocation
     

.PARAMETER PackageFolder
     

.PARAMETER InstallationFile
     

.PARAMETER AutoGenerateCommandLines
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[int]$PackageSourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFile,
			[Parameter(Mandatory=$true)]
			[bool]$AutoGenerateCommandLines,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			SoftwareResourceGuid = $SoftwareResourceGuid
 			PackageSourceType = $PackageSourceType
 			PackageLocation = $PackageLocation
 			PackageFolder = $PackageFolder
 			InstallationFile = $InstallationFile
 			AutoGenerateCommandLines = $AutoGenerateCommandLines

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/CreatePackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-SWPackage {

<#
.SYNOPSIS
    

.PARAMETER PackageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/DeletePackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWPackage {

<#
.SYNOPSIS
    

.PARAMETER packageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$packageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			packageGuid = $packageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/GetPackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-SWFile {

<#
.SYNOPSIS
    

.PARAMETER PackageGuid
     

.PARAMETER File
     

.PARAMETER IgnoreAttributes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$File,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			File = $File
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/RemoveFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWPackageProperty {

<#
.SYNOPSIS
    

.PARAMETER PackageGuid
     

.PARAMETER PropertyName
     

.PARAMETER Value
     

.PARAMETER IgnoreAttributes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$Value,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			PropertyName = $PropertyName
 			Value = $Value
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/SetPackageProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWPackageServerSettings {

<#
.SYNOPSIS
    

.PARAMETER PackageGuid
     

.PARAMETER AssignmentType
     

.PARAMETER AutomaticSiteAssignment
     

.PARAMETER PackageServers
     

.PARAMETER PackageServerLocation
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[int]$AssignmentType,
			[Parameter(Mandatory=$true)]
			[string]$AutomaticSiteAssignment,
			[Parameter(Mandatory=$true)]
			[string]$PackageServers,
			[Parameter(Mandatory=$true)]
			[string]$PackageServerLocation,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			AssignmentType = $AssignmentType
 			AutomaticSiteAssignment = $AutomaticSiteAssignment
 			PackageServers = $PackageServers
 			PackageServerLocation = $PackageServerLocation

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/SetPackageServerSettings"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWPackageSource {

<#
.SYNOPSIS
    

.PARAMETER PackageGuid
     

.PARAMETER PackageSourceType
     

.PARAMETER PackageLocation
     

.PARAMETER PackageFolder
     

.PARAMETER IgnoreAttributes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[int]$PackageSourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			PackageSourceType = $PackageSourceType
 			PackageLocation = $PackageLocation
 			PackageFolder = $PackageFolder
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/SetPackageSource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Update-SWDistributionPoints {

<#
.SYNOPSIS
    

.PARAMETER PackageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$PackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/UpdateDistributionPoints"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Confirm-SWSoftwareLibrary {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/ValidateSoftwareLibrary"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

