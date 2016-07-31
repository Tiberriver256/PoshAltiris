
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


Function CreateAssignPackagesToSoftwareResourceTask {

<#
.SYNOPSIS
    Create Assign Packages To Software Resource Task. 

.PARAMETER packagesInfo
    String of "packages info". Package info string should contains GUID of package, company and version information separated by "|" delimetr. GUID string could not be empty or null, Version and Company are optional. You can place a data for few packages, in which case they must be separated by ";" delimiter. 

.PARAMETER overwrite
    If TRUE packages data of Company and Version will replaced by data in packagesInfo parameter. 

.EXAMPLE 
    Create Assign Packages To Software Resource Task. 
CopyC#
SoftwareTasksManagementLib softwareTasksManagementLib = new SoftwareTasksManagementLib();		
String packagesInfo = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3|Microsoft|5.0.0.1;59B2D1E1-31A9-48bd-A504-5C9F02F26087|Mozilla|1.2.1.1"
Guid taskGuid = softwareTasksManagementLib.CreateAssignPackagesToSoftwareResourceTask(packagesInfo, true);
CopyVBScript
set softwareTasksManagementLib = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")		
packagesInfo = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3|Microsoft|5.0.0.1;59B2D1E1-31A9-48bd-A504-5C9F02F26087|Mozilla|1.2.1.1"
taskGuid = softwareTasksManagementLib.CreateAssignPackagesToSoftwareResourceTask(packagesInfo, true)
Copy? 
set SWM=AltirisASDKSWM.exe		
set PACKAGES_INFO=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3|Microsoft|5.0.0.1;59B2D1E1-31A9-48bd-A504-5C9F02F26087|Mozilla|1.2.1.1
set OVERWRITE=true
%SWM% cmd:CreateAssignPackagesToSoftwareResourceTask "packagesInfo:%PACKAGES_INFO%" "overwrite:%OVERWRITE%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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


Function CreatePackageDeliveryTask {

<#
.SYNOPSIS
    Create package delivery task. 

.PARAMETER packageGuid
    Package guid. 

.PARAMETER commandLineGuid
    Command line guid. 

.EXAMPLE 
    Create package delivery task. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid commandLineGuid = new Guid("FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3");
Guid packageGuid = new Guid("59B2D1E1-31A9-48bd-A504-5C9F02F26087");
Guid taskGuid = softwareTasksManagement.CreatePackageDeliveryTask(packageGuid, commandLineGuid);
CopyVBScript
set softwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
commandLineGuid = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3"
packageGuid = "59B2D1E1-31A9-48bd-A504-5C9F02F26087"
taskGuid = softwareTasksManagement.CreatePackageDeliveryTask(packageGuid, commandLineGuid)
Copy? 
set SWM=AltirisASDKSWM.exe                
set CMD_GUID=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3
set PACKAGE_GUID=59B2D1E1-31A9-48bd-A504-5C9F02F26087
%SWM% cmd:CreatePackageDeliveryTask "packageGuid:%PACKAGE_GUID%" "commandLineGuid:%CMD_GUID%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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


Function CreateQuickDeliveryTask {

<#
.SYNOPSIS
    Create quick delivery task for software resource. 

.PARAMETER softwareResourceGuid
    Software resource guid. 

.PARAMETER commandLineGuid
    Command line guid. 

.PARAMETER packageGuid
    Package guid. 

.EXAMPLE 
    Create quick delivery task for software resource. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();        
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid commandLineGuid = new Guid("FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3");
Guid packageGuid = new Guid("59B2D1E1-31A9-48bd-A504-5C9F02F26087");
Guid taskGuid = softwareTasksManagement.CreateQuickDeliveryTask(softwareResourceGuid, commandLineGuid, packageGuid);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
commandLineGuid = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3"
packageGuid = "59B2D1E1-31A9-48bd-A504-5C9F02F26087"
taskGuid = SoftwareTasksManagement.CreateQuickDeliveryTask(softwareResourceGuid, commandLineGuid, packageGuid)
Copy? 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
set CMD_GUID=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3
set PACKAGE_GUID=59B2D1E1-31A9-48bd-A504-5C9F02F26087
%SWM% cmd:CreateQuickDeliveryTask "softwareResourceGuid:%RESOURCE_GUID%" "commandLineGuid:%CMD_GUID%" "packageGuid:%PACKAGE_GUID%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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


Function CreateSourcePathUpdateTask {

<#
.SYNOPSIS
    Create source path update task. 

.PARAMETER softwareResourceGuid
    Software resource guid. If empty guid passed task will be run for all. 

.PARAMETER firstServer
    First server name to check. 

.PARAMETER lastServer
    Last server name to check. 

.PARAMETER maxNumberOfServers
    Maximun number of servers to check. 

.EXAMPLE 
    Create source path update task 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid taskGuid = softwareTasksManagement.CreateSourcePathUpdateTask(softwareResourceGuid, "server1", "server5", 5);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
taskGuid = SoftwareTasksManagement.CreateSourcePathUpdateTask(softwareResourceGuid, "server1", "server5", 5)
Copy? 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
set FIRST_SERVER=server1
set LAST_SERVER=server5
set MAX_NUMBER_SERV=5
%SWM% cmd:CreateSourcePathUpdateTask "softwareResourceGuid:%RESOURCE_GUID%" "firstServer:%FIRST_SERVER%" "lastServer:%LAST_SERVER%" "maxNumberOfServers:%MAX_NUMBER_SERV%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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


Function CreateVirtualizationTask {

<#
.SYNOPSIS
    Create software virtualization task. 

.PARAMETER command
    Virtualization command. Value: [Activate | Deactivate | DeactivateDelete | Delete | Import | Reset] 

.PARAMETER layerName
    Virtualization layer name. 

.PARAMETER filePath
    File path on the client computer. 

.PARAMETER forceToComplete
    Force operation to complete 

.EXAMPLE 
    Create software virtualization task. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid taskGuid = softwareTasksManagement.CreateVirtualizationTask("Activate", "layer name", @"c:\path\file", false);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")                
taskGuid = SoftwareTasksManagement.CreateVirtualizationTask("Activate", "layer name", "c:\path\file", false)
Copy? 
set SWM=AltirisASDKSWM.exe
set COMMAND=Activate
set LAYER_NAME=layer name
set FILE_PATH=c:\path\file
set FORCE=false
%SWM% cmd:CreateVirtualizationTask "command:%COMMAND%" "layerName:%LAYER_NAME%" "filePath:%FILE_PATH%" "forceToComplete:%FORCE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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


Function CreateWindowsInstallerRepairTask {

<#
.SYNOPSIS
    Create windows installer repair task. 

.PARAMETER softwareResourceGuid
    Software resource guid. If empty guid passed task will be run for all. 

.EXAMPLE 
    Create windows installer repair task. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid taskGuid = softwareTasksManagement.CreateWindowsInstallerRepairTask(softwareResourceGuid);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
taskGuid = SoftwareTasksManagement.CreateWindowsInstallerRepairTask(softwareResourceGuid)
Copy? 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
%SWM% cmd:CreateWindowsInstallerRepairTask "softwareResourceGuid:%RESOURCE_GUID%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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


Function RunAssignPackagesToSoftwareResourceTask {

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

