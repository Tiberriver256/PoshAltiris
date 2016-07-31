
Function Add-SWDProgramToPackage {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sProgramGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/AddProgramToPackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWDPackageBasic {

<#
.SYNOPSIS
    

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/CreatePackageExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWDPackageDetail {

<#
.SYNOPSIS
    

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sPackageDescription
     

.PARAMETER sPackagePublisher
     

.PARAMETER sPackageVersion
     

.PARAMETER sPackageLanguage
     

.PARAMETER purgeAfterDurationInMinutes
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sPackageDescription = $sPackageDescription
 			sPackagePublisher = $sPackagePublisher
 			sPackageVersion = $sPackageVersion
 			sPackageLanguage = $sPackageLanguage
 			purgeAfterDurationInMinutes = $purgeAfterDurationInMinutes
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/CreatePackageExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWDPackageByGuid {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/GetPackageExByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDPackageBasic {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/ModifyPackageExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDPackageDetail {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sPackageDescription
     

.PARAMETER sPackagePublisher
     

.PARAMETER sPackageVersion
     

.PARAMETER sPackageLanguage
     

.PARAMETER purgeAfterDurationInMinutes
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sPackageDescription = $sPackageDescription
 			sPackagePublisher = $sPackagePublisher
 			sPackageVersion = $sPackageVersion
 			sPackageLanguage = $sPackageLanguage
 			purgeAfterDurationInMinutes = $purgeAfterDurationInMinutes
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/ModifyPackageExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDPackageAdvancedOptions {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sAgentDisplayName
     

.PARAMETER sAgentDisplayDescription
     

.PARAMETER bEnableVerboseEvents
     

.PARAMETER sAlternateDownloadDestinationLocation
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayName,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayDescription,
			[Parameter(Mandatory=$true)]
			[bool]$bEnableVerboseEvents,
			[Parameter(Mandatory=$true)]
			[string]$sAlternateDownloadDestinationLocation,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sAgentDisplayName = $sAgentDisplayName
 			sAgentDisplayDescription = $sAgentDisplayDescription
 			bEnableVerboseEvents = $bEnableVerboseEvents
 			sAlternateDownloadDestinationLocation = $sAlternateDownloadDestinationLocation

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/SetPackageExAdvancedOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDPackageServerOptions {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER bAllOrSpecificPackageServers
     

.PARAMETER sPackageServerGuids
     

.PARAMETER sLocationOnPackageServer
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bAllOrSpecificPackageServers,
			[Parameter(Mandatory=$true)]
			[string]$sPackageServerGuids,
			[Parameter(Mandatory=$true)]
			[string]$sLocationOnPackageServer,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			bAllOrSpecificPackageServers = $bAllOrSpecificPackageServers
 			sPackageServerGuids = $sPackageServerGuids
 			sLocationOnPackageServer = $sLocationOnPackageServer

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/SetPackageExPackageServerOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Update-SWDDistributionPoints {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/UpdateDistributionPoints"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

