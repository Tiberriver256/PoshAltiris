
Function New-SWTaskAssignPackagesToSoftwareResource {

<#
.SYNOPSIS
    

.PARAMETER packagesInfo
     

.PARAMETER overwrite
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$packagesInfo,
			[Parameter(Mandatory=$true)]
			[bool]$overwrite,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			packagesInfo = $packagesInfo
 			overwrite = $overwrite

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateAssignPackagesToSoftwareResourceTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWTaskPackageDelivery {

<#
.SYNOPSIS
    

.PARAMETER packageGuid
     

.PARAMETER commandLineGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$packageGuid,
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			packageGuid = $packageGuid
 			commandLineGuid = $commandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreatePackageDeliveryTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWTaskQuickDelivery {

<#
.SYNOPSIS
    

.PARAMETER softwareResourceGuid
     

.PARAMETER commandLineGuid
     

.PARAMETER packageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
			[Parameter(Mandatory=$true)]
			[guid]$packageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			commandLineGuid = $commandLineGuid
 			packageGuid = $packageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateQuickDeliveryTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWTaskSourcePathUpdate {

<#
.SYNOPSIS
    

.PARAMETER softwareResourceGuid
     

.PARAMETER firstServer
     

.PARAMETER lastServer
     

.PARAMETER maxNumberOfServers
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[string]$firstServer,
			[Parameter(Mandatory=$true)]
			[string]$lastServer,
			[Parameter(Mandatory=$true)]
			[int]$maxNumberOfServers,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			firstServer = $firstServer
 			lastServer = $lastServer
 			maxNumberOfServers = $maxNumberOfServers

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateSourcePathUpdateTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWTaskVirtualization {

<#
.SYNOPSIS
    

.PARAMETER command
     

.PARAMETER layerName
     

.PARAMETER filePath
     

.PARAMETER forceToComplete
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$command,
			[Parameter(Mandatory=$true)]
			[string]$layerName,
			[Parameter(Mandatory=$true)]
			[string]$filePath,
			[Parameter(Mandatory=$true)]
			[bool]$forceToComplete,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			command = $command
 			layerName = $layerName
 			filePath = $filePath
 			forceToComplete = $forceToComplete

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateVirtualizationTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SWTaskWindowsInstallerRepair {

<#
.SYNOPSIS
    

.PARAMETER softwareResourceGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateWindowsInstallerRepairTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-SWTaskAssignPackagesToSoftwareResource {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/RunAssignPackagesToSoftwareResourceTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

