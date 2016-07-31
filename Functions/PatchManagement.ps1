
Function AddGuids {

<#
.SYNOPSIS
    

.PARAMETER guidItem
     

.PARAMETER name
     

.PARAMETER guidList
     

.PARAMETER setback
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidItem,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$guidList,
			[Parameter(Mandatory=$true)]
			[bool]$setback,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidItem = $guidItem
 			name = $name
 			guidList = $guidList
 			setback = $setback

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/AddGuids"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-PatchAgentPluginPolicy {

<#
.SYNOPSIS
    

.PARAMETER strName
     

.PARAMETER productGuid
     

.PARAMETER parentFolderGuid
     

.PARAMETER targetGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$strName,
			[Parameter(Mandatory=$true)]
			[string]$productGuid,
			[Parameter(Mandatory=$true)]
			[string]$parentFolderGuid,
			[Parameter(Mandatory=$true)]
			[string]$targetGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			strName = $strName
 			productGuid = $productGuid
 			parentFolderGuid = $parentFolderGuid
 			targetGuids = $targetGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/CreateAgentPluginPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-PatchUpdatePolicy {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER bulletinGuids
     

.PARAMETER targetGuids
     

.PARAMETER enabled
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
			[Parameter(Mandatory=$true)]
			[string]$targetGuids,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			bulletinGuids = $bulletinGuids
 			targetGuids = $targetGuids
 			enabled = $enabled

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/CreateUpdatePolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Test-PatchBulletinStaged {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.PARAMETER sync
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
			[Parameter(Mandatory=$true)]
			[bool]$sync,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids
 			sync = $sync

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/EnsureStaged"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchStagedUpdates {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetAllStagedUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchCustomSeverities {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetCustomSeverities"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchCustomSeverityLevels {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetCustomSeverityLevels"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchDistributionTaskStatus {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetDistributionTaskStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PathcNonstagedUpdates {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetNonstagedUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PackageServerGuid {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetPackageServerGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchPreImportStatus {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetPreImportStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchPreImportStatusVerbose {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetPreImportStatusVerbose"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchProperty {

<#
.SYNOPSIS
    

.PARAMETER guidItem
     

.PARAMETER name
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidItem,
			[Parameter(Mandatory=$true)]
			[string]$name,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidItem = $guidItem
 			name = $name

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchStagedUpdates {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetStagedUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchStagingTaskStatus {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetStagingTaskStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchTaskInstanceStatus {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetTaskInstanceStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchTaskRunningInstances {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetTaskRunningInstances"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchWindowsPreImportStatus {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetWindowsPreImportStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchWindowsPreImportStatusVerbose {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetWindowsPreImportStatusVerbose"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-IsCleanUpAfterUpgrade71Finished {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsCleanUpAfterUpgrade71Finished"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchSoftwareUpdateDistributionRunning {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsSoftwareUpdateDistributionRunning"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchBulletinStaged {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsStaged"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-PatchIsStagingTaskRunning {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsStagingTaskRunning"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-IsTaskRunning {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsTaskRunning"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-MyPrivileges {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/MyPrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-PatchWorker {

<#
.SYNOPSIS
    

.PARAMETER workerGuid
     

.PARAMETER command
     

.PARAMETER async
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$workerGuid,
			[Parameter(Mandatory=$true)]
			[string]$command,
			[Parameter(Mandatory=$true)]
			[bool]$async,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			workerGuid = $workerGuid
 			command = $command
 			async = $async

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/OperatePatchWorker"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Resolve-PatchBulletinToPolicies {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/ResolveToPolicies"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Resolve-PatchBulletinToUpdates {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/ResolveToUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-CleanUpAfterUpgrade71 {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunCleanUpAfterUpgrade71"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-PatchWorker {

<#
.SYNOPSIS
    

.PARAMETER workerGuid
     

.PARAMETER async
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$workerGuid,
			[Parameter(Mandatory=$true)]
			[bool]$async,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			workerGuid = $workerGuid
 			async = $async

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunPatchWorker"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-PatchPreImport {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-Task {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.PARAMETER instanceName
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
			[Parameter(Mandatory=$true)]
			[string]$instanceName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask
 			instanceName = $instanceName

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-PatchWindowsPreImport {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunWindowsPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchPluginPolicyMessages {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER turnOnNonEmpty
     

.PARAMETER msgUpdatePending
     

.PARAMETER msgUpdateProgress
     

.PARAMETER msgRebootPending
     

.PARAMETER msgRebootReminder
     

.PARAMETER msgRebootNotification
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[bool]$turnOnNonEmpty,
			[Parameter(Mandatory=$true)]
			[string]$msgUpdatePending,
			[Parameter(Mandatory=$true)]
			[string]$msgUpdateProgress,
			[Parameter(Mandatory=$true)]
			[string]$msgRebootPending,
			[Parameter(Mandatory=$true)]
			[string]$msgRebootReminder,
			[Parameter(Mandatory=$true)]
			[string]$msgRebootNotification,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			turnOnNonEmpty = $turnOnNonEmpty
 			msgUpdatePending = $msgUpdatePending
 			msgUpdateProgress = $msgUpdateProgress
 			msgRebootPending = $msgRebootPending
 			msgRebootReminder = $msgRebootReminder
 			msgRebootNotification = $msgRebootNotification

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetPluginPolicyMessages"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchPluginPolicySchedules {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER clientSoftwareUpdateSchedule
     

.PARAMETER notifySchedule
     

.PARAMETER rebootSchedule
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[string]$clientSoftwareUpdateSchedule,
			[Parameter(Mandatory=$true)]
			[string]$notifySchedule,
			[Parameter(Mandatory=$true)]
			[string]$rebootSchedule,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			clientSoftwareUpdateSchedule = $clientSoftwareUpdateSchedule
 			notifySchedule = $notifySchedule
 			rebootSchedule = $rebootSchedule

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetPluginPolicySchedules"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchProperties {

<#
.SYNOPSIS
    

.PARAMETER guidItem
     

.PARAMETER nameValueList
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidItem,
			[Parameter(Mandatory=$true)]
			[string]$nameValueList,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidItem = $guidItem
 			nameValueList = $nameValueList

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchProperty {

<#
.SYNOPSIS
    

.PARAMETER itemGuids
     

.PARAMETER name
     

.PARAMETER value
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuids = $itemGuids
 			name = $name
 			value = $value

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchSeverityLevel {

<#
.SYNOPSIS
    

.PARAMETER itemGuids
     

.PARAMETER level
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
			[Parameter(Mandatory=$true)]
			[int]$level,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuids = $itemGuids
 			level = $level

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetSeverityLevel"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchSoftwareUpdatePolicySchedule {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER installSchedule
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[string]$installSchedule,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			installSchedule = $installSchedule

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetSoftwareUpdatePolicySchedule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchSoftwareUpdatePolicyTargets {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER targetGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[string]$targetGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			targetGuids = $targetGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetSoftwareUpdatePolicyTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-PatchImport {

<#
.SYNOPSIS
    

.PARAMETER softwareExcludes
     

.PARAMETER localeIncludes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$softwareExcludes,
			[Parameter(Mandatory=$true)]
			[string]$localeIncludes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareExcludes = $softwareExcludes
 			localeIncludes = $localeIncludes

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetupImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Initialize-PatchPreImport {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.PARAMETER strMiniCabDownloadUrl
     

.PARAMETER strUserName
     

.PARAMETER strPassword
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
			[Parameter(Mandatory=$true)]
			[string]$strMiniCabDownloadUrl,
			[Parameter(Mandatory=$true)]
			[string]$strUserName,
			[Parameter(Mandatory=$true)]
			[string]$strPassword,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask
 			strMiniCabDownloadUrl = $strMiniCabDownloadUrl
 			strUserName = $strUserName
 			strPassword = $strPassword

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetupPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Initialize-PatchWindowsPreImport {

<#
.SYNOPSIS
    

.PARAMETER strMiniCabDownloadUrl
     

.PARAMETER strUserName
     

.PARAMETER strPassword
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$strMiniCabDownloadUrl,
			[Parameter(Mandatory=$true)]
			[string]$strUserName,
			[Parameter(Mandatory=$true)]
			[string]$strPassword,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			strMiniCabDownloadUrl = $strMiniCabDownloadUrl
 			strUserName = $strUserName
 			strPassword = $strPassword

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetupWindowsPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Stop-PatchWorker {

<#
.SYNOPSIS
    

.PARAMETER workerGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$workerGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			workerGuid = $workerGuid

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/StopPatchWorker"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Stop-PatchPreImport {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/StopPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Stop-PatchWindowsPreImport {

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


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/StopWindowsPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Update-PatchResourceTargets {

<#
.SYNOPSIS
    

.PARAMETER guidProduct
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidProduct,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidProduct = $guidProduct

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/UpdateResourceTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Update-PatchSoftwareUpdatePolicy {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER enableNewAdverts
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[bool]$enableNewAdverts,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			enableNewAdverts = $enableNewAdverts

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/UpdateSoftwareUpdatePolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

