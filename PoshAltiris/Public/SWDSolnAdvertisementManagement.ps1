
Function New-SWDAdvertisement {

<#
.SYNOPSIS
    This ASDKMethod will be the basic method to save a AdvertisementItemEx. The rest of the parameters will be defaulted. (e.g.: Schedule would be Run ASAP) Like ItemDetails struct used in ItemManagementLib, AdvertisementExDetails would be a struct which would be specific to AdvertisementEx and would give the details about the same. 

.PARAMETER bEnable
    True if the item is enabled, false otherwise.  

.PARAMETER sAdvertisementExName
    Name of the advertisement. 

.PARAMETER sAdvertisementExDescription
    Description of the advertisement. 

.PARAMETER sFolderGuid
    Parent folder Guid of the item. 

.PARAMETER sPackageGuid
    The Guid of the package associated to the item. 

.PARAMETER sProgramGuid
    The Guid of the Program to execute that is associate with the package. 

.PARAMETER sResourceTargets
    Comma seperated list of resource target guids this item is applied to. 

.PARAMETER sPriority
    Priority of the Advertisement Item.Possible values are Low,Normal,High and VeryHigh. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}";
SWDSolnAdvertisementDetails advertisementObject = m_proxy.CreateAdvertisementEx( true, adName,"Advertisement description",folderObject.Guid, packageObject.Guid, programObject.Guid, AllWindowsComputersCollectionGuid, "High");
CopyVBScript
AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}"
set advertisementObject = advertisementManagement.CreateAdvertisementEx( true, adName,"Advertisement description",folderObject.Guid, packageObject.Guid, programObject.Guid, AllWindowsComputersCollectionGuid, "High")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:CreateAdvertisementEx "bEnable:%Enable%" "sAdvertisementExName:%AdvertisementExName%" "sAdvertisementExDescription:%AdvertisementExDescription%" "sFolderGuid:%FolderGuid%" "sPackageGuid:%PackageGuid%"  "sProgramGuid:%ProgramGuid%"  "sResourceTargets:%ResourceTargets%" "sPriority:%Priority%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[bool]$bEnable,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExName,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExDescription,
			[Parameter(Mandatory=$true)]
			[string]$sFolderGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTargets,
			[Parameter(Mandatory=$true)]
			[string]$sPriority,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bEnable = $bEnable
 			sAdvertisementExName = $sAdvertisementExName
 			sAdvertisementExDescription = $sAdvertisementExDescription
 			sFolderGuid = $sFolderGuid
 			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid
 			sResourceTargets = $sResourceTargets
 			sPriority = $sPriority

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/CreateAdvertisementEx"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWDAdvertisementByGuid {

<#
.SYNOPSIS
    This ASDKMethod will give the details about a AdvertisementEx filtered out by Guid. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose details are to be fetched. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
SWDSolnAdvertisementDetails advertisementObject =m_proxy.GetAdvertisementExByGuid(advertisementObject.Guid);
CopyVBScript
set advertisementObject = advertisementManagement.GetAdvertisementExByGuid(advertisementObject.Guid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExByGuid "sAdvertisementExGuid:%AdvertisementExGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWDAdvertisementStatusByResourceGuid {

<#
.SYNOPSIS
    Gets the execution status of an advertisement on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceGuid
    Guid of the computer resource 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strStatus = m_proxy.GetAdvertisementExStatusByResourceGuid(advertisementObject.Guid, machineGuid);
CopyVBScript
strStatus = advertisementManagement.GetAdvertisementExStatusByResourceGuid(advertisementObject.Guid, machineGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExStatusByResourceGuid "sAdvertisementExGuid:%advertisementObjectGuid% sResourceGuid:%machineGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceGuid = $sResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWDAdvertisementStatusByResourceName {

<#
.SYNOPSIS
    Gets the execution status of an advertisement on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceName
    Name of the computer resource i.e. domain\name or Workgroup\name 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strStatus = m_proxy.GetAdvertisementExStatusByResourceName(advertisementObject.Guid, machineName);
CopyVBScript
strStatus = advertisementManagement.GetAdvertisementExStatusByResourceName(advertisementObject.Guid, machineName)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExStatusByResourceName "sAdvertisementExGuid:%advertisementObjectGuid% sResourceName:%machineName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceName = $sResourceName

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWDAdvertisementStatusByResourceTargetGuid {

<#
.SYNOPSIS
    This ASDKMethod will return the execution status of an advertisement on specified resource targets. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement. 

.PARAMETER sResourceTargetGuids
    Comma seperated list of resource target guids this item is applied to. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}";
string strStatus = m_proxy.GetAdvertisementExStatusByCollectionGuid( advertisementObject.Guid, AllWindowsComputersCollectionGuid);
CopyVBScript
AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}"
strStatus= advertisementManagement.GetAdvertisementExStatusByCollectionGuid( advertisementObject.Guid, AllWindowsComputersCollectionGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExStatusByCollectionGuid "sAdvertisementExGuid:%AdvertisementExGuid% sResourceTargetGuids:%ResourceTargetGuids%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTargetGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceTargetGuids = $sResourceTargetGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceTargetGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWDAdvertismentRunTimeByResourceGuid {

<#
.SYNOPSIS
    This ASDKMethod will return advertisement run time on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceGuid
    Guid of the computer resource 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strRunTime = m_proxy.GetAdvertismentExRunTimeByResourceGuid(advertisementObject.Guid, machineGuid);
CopyVBScript
strRunTime = advertisementManagement.GetAdvertismentExRunTimeByResourceGuid(advertisementObject.Guid, machineGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertismentExRunTimeByResourceGuid "sAdvertisementExGuid:%advertisementObjectGuid% sResourceGuid:%machineGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceGuid = $sResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertismentExRunTimeByResourceGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SWDAdvertismentRunTimeByResourceName {

<#
.SYNOPSIS
    This ASDKMethod will return advertisement run time on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceName
    Name of the computer resource i.e. domain\name 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strRunTime = m_proxy.GetAdvertismentExRunTimeByResourceName(advertisementObject.Guid, machineName);
CopyVBScript
strRunTime = advertisementManagement.GetAdvertismentExRunTimeByResourceName(advertisementObject.Guid, machineName)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertismentExRunTimeByResourceName "sAdvertisementExGuid:%advertisementObjectGuid% sResourceName:%machineName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceName = $sResourceName

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertismentExRunTimeByResourceName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAdvertisementBasic {

<#
.SYNOPSIS
    This ASDKMethod will modify the Package and Program for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement to be modified. 

.PARAMETER sPackageGuid
    The Guid of the package associated to the item. 

.PARAMETER sProgramGuid
    The Guid of the Program to execute that is associate with the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyAdvertisementExBasic( advertisementObject.Guid, packageObject.Guid, programObject.Guid);
CopyVBScript
result = advertisementManagement.ModifyAdvertisementExBasic( advertisementObject.Guid,  packageObject.Guid, programObject.Guid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:ModifyAdvertisementExBasic "sAdvertisementExGuid:%AdvertisementExGuid%" "sPackageGuid:%PackageGuid%"  "sProgramGuid:%ProgramGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/ModifyAdvertisementExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAdvertisementDetail {

<#
.SYNOPSIS
    This ASDKMethod will modify the settings for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement to be modified. 

.PARAMETER bEnable
    True if the item is enabled, otherwise false.  

.PARAMETER sAdvertisementExName
    Name of the advertisement. 

.PARAMETER sAdvertisementExDescription
    Description of the advertisment. 

.PARAMETER sPackageGuid
    The Guid of the package associated to the item. 

.PARAMETER sProgramGuid
    The Guid of the Program to execute that is associate with the package. 

.PARAMETER sResourceTargets
    Comma seperated list of resource target guids this item is applied to. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}";
bool result = m_proxy.ModifyAdvertisementExDetail( advertisementObject.Guid, true, "Advertisement Name","This is a modified description",packageObject.Guid, programObject.Guid, AllWindowsComputersCollectionGuid);
CopyVBScript
AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}"
result = advertisementManagement.ModifyAdvertisementExDetail( advertisementObject.Guid, true, "Advertisement Name", "This is a modified description",packageObject.Guid,  programObject.Guid, AllWindowsComputersCollectionGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:ModifyAdvertisementExDetail "sAdvertisementExGuid:%AdvertisementExGuid%" "bEnable:%Enable%" "sAdvertisementExName:%AdvertisementExName%" "sAdvertisementExDescription:%AdvertisementExDescription%" "sPackageGuid:%PackageGuid%"  "sProgramGuid:%ProgramGuid%"  "sResourceTargets:%ResourceTargets%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bEnable,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExName,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTargets,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bEnable = $bEnable
 			sAdvertisementExName = $sAdvertisementExName
 			sAdvertisementExDescription = $sAdvertisementExDescription
 			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid
 			sResourceTargets = $sResourceTargets

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/ModifyAdvertisementExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDResourceTargets {

<#
.SYNOPSIS
    This ASDKMethod will add or remove a resource target from a Software Advertisement Policy. list of a task. 'Action' parameter will set whether to 'Add' or 'Remove'. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose target is to be modified. 

.PARAMETER sResourceTarget
    Guid of the resource target. 

.PARAMETER sAction
    Value will be "ADD" if resource target guid is to be added to the Advertisement Policy else it will be "REMOVE" if the resource target is to be removed. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyResourceTargets( advertisementObject.Guid, targetObject.Guid, "add");
CopyVBScript
result = advertisementManagement.ModifyResourceTargets( advertisementObject.Guid, targetObject.Guid, "add")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:ModifyResourceTargets "sAdvertisementExGuid:%AdvertisementExGuid%" "sCollectionGuid:%CollectionGuid%" "sAction:%Action%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTarget,
			[Parameter(Mandatory=$true)]
			[string]$sAction,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceTarget = $sResourceTarget
 			sAction = $sAction

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/ModifyResourceTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAdvertisementAgentSettings {

<#
.SYNOPSIS
    This ASDKMethod will set the Advance options for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose agent setting are to be modified. 

.PARAMETER bEnableVerboseReporting
    True if advertisement will send status event to notification server, else false. 

.PARAMETER bUseDefaultAgentSettings
    True if the item is to use the default agent settings, else false. 

.PARAMETER bRunFromServer
    True if the item has to run from the server, else false. 

.PARAMETER bDownloadAndRunLocally
    True if the package is to be downloaded and run locally, else false. 

.PARAMETER sDownloadLocallyBandwidth
    Bandwidth required for downloading and running the item locally. Possible values are 1 KBytes/second,2 KBytes/second,5 KBytes/second,10 KBytes/second,50 KBytes/second,100 KBytes/second,256 KBytes/second,512 KBytes/second and 1 MBytes/second. 

.PARAMETER sDownloadLocallySpeed
    Speed required for downloading and running the item locally. Possible values are 1 KBytes/second,2 KBytes/second,5 KBytes/second,10 KBytes/second,50 KBytes/second,100 KBytes/second,256 KBytes/second,512 KBytes/second and 1 MBytes/second. 

.PARAMETER bDownloadPackageASAP
    True if the package is to be downloaded ASAP, else False. 

.PARAMETER bMulticastPackage
    True if Package multicast is enabled else false. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExAgentSettings( advertisementObject.Guid, true,false, true, true, "10 KBytes/second", "10 KBytes/second", true, true);
CopyVBScript
result = advertisementManagement.SetAdvertisementExAgentSettings( advertisementObject.Guid, true,false, true, true, "10 KBytes/second", "10 KBytes/second", true, true)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExAgentSettings "sAdvertisementExGuid:%AdvertisementExGuid%" "bEnableVerboseReporting:%EnableVerboseReporting%" "bUseDefaultAgentSettings:%UseDefaultAgentSettings%" "bRunFromServer:%RunFromServer%" "bDownloadAndRunLocally:%DownloadAndRunLocally%" "sDownloadLocallyBandwidth:%DownloadLocallyBandwidth%" "sDownloadLocallySpeed:%DownloadLocallySpeed%" "bDownloadPackageASAP:%DownloadPackageASAP%" "bMulticastPackage:%MulticastPackage%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Parameters bRunFromServer and bDownloadAndRunLocally can not be set to false simultaneously.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bEnableVerboseReporting,
			[Parameter(Mandatory=$true)]
			[bool]$bUseDefaultAgentSettings,
			[Parameter(Mandatory=$true)]
			[bool]$bRunFromServer,
			[Parameter(Mandatory=$true)]
			[bool]$bDownloadAndRunLocally,
			[Parameter(Mandatory=$true)]
			[string]$sDownloadLocallyBandwidth,
			[Parameter(Mandatory=$true)]
			[string]$sDownloadLocallySpeed,
			[Parameter(Mandatory=$true)]
			[bool]$bDownloadPackageASAP,
			[Parameter(Mandatory=$true)]
			[bool]$bMulticastPackage,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bEnableVerboseReporting = $bEnableVerboseReporting
 			bUseDefaultAgentSettings = $bUseDefaultAgentSettings
 			bRunFromServer = $bRunFromServer
 			bDownloadAndRunLocally = $bDownloadAndRunLocally
 			sDownloadLocallyBandwidth = $sDownloadLocallyBandwidth
 			sDownloadLocallySpeed = $sDownloadLocallySpeed
 			bDownloadPackageASAP = $bDownloadPackageASAP
 			bMulticastPackage = $bMulticastPackage

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExAgentSettings"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAdvertisementRunOptions {

<#
.SYNOPSIS
    This ASDKMethod will set the run options for a SWD Task. 

.PARAMETER sAdvertisementExGuid
    Guid of the Advertisement Item whose run options are to be set.  

.PARAMETER bIndependentExecution
    True for independent execution of task else false. 

.PARAMETER bScheduleRetry
    Whether the task is to run exactly at scheduled time or any time after the Scheduled time. 

.PARAMETER bNotifyUserWhenTaskAvailable
    True if the option for notifying the user when task is available is checked, else False. 

.PARAMETER bWarnUserBeforeRunning
    True if the option for warning the user before running the Task is checked, else False. 

.PARAMETER DeferTime
    Defer time in minutes after the warning before running task is given. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExRunOptions(advertisementObject.Guid, true, true,true, true,true,10);
CopyVBScript
result = advertisementManagement.SetAdvertisementExRunOptions(advertisementObject.Guid, true, true,true, true,true,10)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExRunOptions "sAdvertisementExGuid:%AdvertisementExGuid%" "bIndependentExecution:%IndependentExecution%" "bScheduleRetry:%ScheduleRetry%" "bNotifyUserWhenTaskAvailable:%NotifyUserWhenTaskAvailable%" "bWarnUserBeforeRunning:%WarnUserBeforeRunning%" "DeferTime:%DeferTime%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bIndependentExecution,
			[Parameter(Mandatory=$true)]
			[bool]$bScheduleRetry,
			[Parameter(Mandatory=$true)]
			[bool]$bNotifyUserWhenTaskAvailable,
			[Parameter(Mandatory=$true)]
			[bool]$bWarnUserBeforeRunning,
			[Parameter(Mandatory=$true)]
			[int]$DeferTime,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bIndependentExecution = $bIndependentExecution
 			bScheduleRetry = $bScheduleRetry
 			bNotifyUserWhenTaskAvailable = $bNotifyUserWhenTaskAvailable
 			bWarnUserBeforeRunning = $bWarnUserBeforeRunning
 			DeferTime = $DeferTime

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExRunOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAdvertisementScheduleRunASAP {

<#
.SYNOPSIS
    Toggles RunASAP 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose RunASAP option is to be toggled. 

.PARAMETER bRunASAP
    True if Run ASAP option is checked, otherwise False. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExScheduleRunASAP( advertisementObject.Guid, true);
CopyVBScript
result = advertisementManagement.SetAdvertisementExScheduleRunASAP( advertisementObject.Guid, true)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExScheduleRunASAP "sAdvertisementExGuid:%AdvertisementExGuid%" "bRunASAP:%RunASAP%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bRunASAP,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bRunASAP = $bRunASAP

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleRunASAP"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAdvertisementScheduleRunAt {

<#
.SYNOPSIS
    Defines a schedule to run task (non-recurring). A Time of 0, removes the scheduled time. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose schedule is to be define. 

.PARAMETER sRunAt
    The String representing the Date and time for the. Task to Run. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExScheduleRunAt(advertisementObject.Guid, "2006-01-01 10:10:10");
CopyVBScript
result = advertisementManagement.SetAdvertisementExScheduleRunAt(advertisementObject.Guid, "2006-01-01 10:10:10")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExScheduleRunAt "sAdvertisementExGuid:%AdvertisementExGuid%" "sRunAt:%RunAt%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sRunAt,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sRunAt = $sRunAt

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleRunAt"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAdvertisementScheduleScheduleXML {

<#
.SYNOPSIS
    For advanced scheduling. An empty string removes the schedule. 

.PARAMETER sAdvertisementExGuid
    Guid of the Advertisement Item whose schedule options are to be set. 

.PARAMETER sScheduleXML
    Schedule information text as shown on the Task UI. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExScheduleScheduleXML(advertisementObject.Guid, "<Schedule IndependentExecution='true'><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every 1 days, starting Friday, February 10, 2006'><BeginDate>2006-02-10 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></Schedule>");
CopyVBScript
result = advertisementManagement.SetAdvertisementExScheduleScheduleXML(advertisementObject.Guid, "<Schedule IndependentExecution='true'><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every 1 days, starting Friday, February 10, 2006'><BeginDate>2006-02-10 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></Schedule>")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExScheduleScheduleXML "sAdvertisementExGuid:%AdvertisementExGuid%" "sScheduleXML:%ScheduleXML%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sScheduleXML,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sScheduleXML = $sScheduleXML

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleScheduleXML"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SWDAvailabilityRemovalOptions {

<#
.SYNOPSIS
    This ASDKMethod will set the Availability and Removal options for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement to be modified. 

.PARAMETER bRemoveAfterSuccessfulRun
    True if task is to be remove after successful run otherwise false. 

.PARAMETER sAvailableFrom
    Date when advertisement will becomes valid. 

.PARAMETER bExpires
    True if the Item is set to Expire after some duration, else False. 

.PARAMETER sAvaliableTo
    Date when advertisement will cease to valid. 

.PARAMETER bUseServersTime
    True if the item has to run according to the server's time, else false. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAvailabilityRemovalOptions(advertisementObject.Guid, true, "2006-01-01", true, "2006-02-02", true);
CopyVBScript
result = advertisementManagement.SetAvailabilityRemovalOptions(advertisementObject.Guid, true, "2006-01-01", true, "2006-02-02", true)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetAvailabilityRemovalOptions "sAdvertisementExGuid:%AdvertisementExGuid%" "bRemoveAfterSuccessfulRun:%RemoveAfterSuccessfulRun%" "sAvailableFrom:%AvailableFrom%" "bExpires:%Expires%" "sAvaliableTo:%AvaliableTo%" "bUseServersTime:%UseServersTime%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bRemoveAfterSuccessfulRun,
			[Parameter(Mandatory=$true)]
			[string]$sAvailableFrom,
			[Parameter(Mandatory=$true)]
			[bool]$bExpires,
			[Parameter(Mandatory=$true)]
			[string]$sAvaliableTo,
			[Parameter(Mandatory=$true)]
			[bool]$bUseServersTime,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bRemoveAfterSuccessfulRun = $bRemoveAfterSuccessfulRun
 			sAvailableFrom = $sAvailableFrom
 			bExpires = $bExpires
 			sAvaliableTo = $sAvaliableTo
 			bUseServersTime = $bUseServersTime

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAvailabilityRemovalOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

