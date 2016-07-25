
Function RunDeploymentSolutionTask {
    
    param (
			[string]$xml,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			xml = $xml

        }


    $WebServiceUrl = "altiris/ASDK.DeploymentSolution/DSTaskManagementService.asmx/RunDeploymentSolutionTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateAdvertisementEx {
    
    param (
			[bool]$bEnable,
			[string]$sAdvertisementExName,
			[string]$sAdvertisementExDescription,
			[string]$sFolderGuid,
			[string]$sPackageGuid,
			[string]$sProgramGuid,
			[string]$sResourceTargets,
			[string]$sPriority,
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


Function GetAdvertisementExByGuid {
    
    param (
			[string]$sAdvertisementExGuid,
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


Function GetAdvertisementExStatusByResourceGuid {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sResourceGuid,
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


Function GetAdvertisementExStatusByResourceName {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sResourceName,
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


Function GetAdvertisementExStatusByResourceTargetGuid {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sResourceTargetGuids,
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


Function GetAdvertismentExRunTimeByResourceGuid {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sResourceGuid,
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


Function GetAdvertismentExRunTimeByResourceName {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sResourceName,
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


Function ModifyAdvertisementExBasic {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sPackageGuid,
			[string]$sProgramGuid,
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


Function ModifyAdvertisementExDetail {
    
    param (
			[string]$sAdvertisementExGuid,
			[bool]$bEnable,
			[string]$sAdvertisementExName,
			[string]$sAdvertisementExDescription,
			[string]$sPackageGuid,
			[string]$sProgramGuid,
			[string]$sResourceTargets,
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


Function ModifyResourceTargets {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sResourceTarget,
			[string]$sAction,
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


Function SetAdvertisementExAgentSettings {
    
    param (
			[string]$sAdvertisementExGuid,
			[bool]$bEnableVerboseReporting,
			[bool]$bUseDefaultAgentSettings,
			[bool]$bRunFromServer,
			[bool]$bDownloadAndRunLocally,
			[string]$sDownloadLocallyBandwidth,
			[string]$sDownloadLocallySpeed,
			[bool]$bDownloadPackageAsap,
			[bool]$bMulticastPackage,
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
 			bDownloadPackageAsap = $bDownloadPackageAsap
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


Function SetAdvertisementExRunOptions {
    
    param (
			[string]$sAdvertisementExGuid,
			[bool]$bIndependentExecution,
			[bool]$bScheduleRetry,
			[bool]$bNotifyUserWhenTaskAvailable,
			[bool]$bWarnUserBeforeRunning,
			[int]$deferTime,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bIndependentExecution = $bIndependentExecution
 			bScheduleRetry = $bScheduleRetry
 			bNotifyUserWhenTaskAvailable = $bNotifyUserWhenTaskAvailable
 			bWarnUserBeforeRunning = $bWarnUserBeforeRunning
 			deferTime = $deferTime

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


Function SetAdvertisementExScheduleRunASAP {
    
    param (
			[string]$sAdvertisementExGuid,
			[bool]$bRunAsap,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bRunAsap = $bRunAsap

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


Function SetAdvertisementExScheduleRunAt {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sRunAt,
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


Function SetAdvertisementExScheduleScheduleXML {
    
    param (
			[string]$sAdvertisementExGuid,
			[string]$sScheduleXML,
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


Function SetAvailabilityRemovalOptions {
    
    param (
			[string]$sAdvertisementExGuid,
			[bool]$bRemoveAfterSuccessfulRun,
			[string]$sAvailableFrom,
			[bool]$bExpires,
			[string]$sAvaliableTo,
			[bool]$bUseServersTime,
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


Function AddProgramToPackage {
    
    param (
			[string]$sPackageGuid,
			[string]$sProgramGuid,
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


Function CreatePackageExBasic {
    
    param (
			[string]$sPackageName,
			[string]$sPackageLocation,
			[string]$sPackageDirectory,
			[string]$sParentFolderGuid,
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


Function CreatePackageExDetail {
    
    param (
			[string]$sPackageName,
			[string]$sPackageLocation,
			[string]$sPackageDirectory,
			[string]$sPackageDescription,
			[string]$sPackagePublisher,
			[string]$sPackageVersion,
			[string]$sPackageLanguage,
			[int]$purgeAfterDurationInMinutes,
			[string]$sParentFolderGuid,
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


Function GetPackageExByGuid {
    
    param (
			[string]$sPackageGuid,
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


Function ModifyPackageExBasic {
    
    param (
			[string]$sPackageGuid,
			[string]$sPackageName,
			[string]$sPackageLocation,
			[string]$sPackageDirectory,
			[string]$sParentFolderGuid,
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


Function ModifyPackageExDetail {
    
    param (
			[string]$sPackageGuid,
			[string]$sPackageName,
			[string]$sPackageLocation,
			[string]$sPackageDirectory,
			[string]$sPackageDescription,
			[string]$sPackagePublisher,
			[string]$sPackageVersion,
			[string]$sPackageLanguage,
			[int]$purgeAfterDurationInMinutes,
			[string]$sParentFolderGuid,
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


Function SetPackageExAdvancedOptions {
    
    param (
			[string]$sPackageGuid,
			[string]$sAgentDisplayName,
			[string]$sAgentDisplayDescription,
			[bool]$bEnableVerboseEvents,
			[string]$sAlternateDownloadDestinationLocation,
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


Function SetPackageExPackageServerOptions {
    
    param (
			[string]$sPackageGuid,
			[bool]$bAllOrSpecificPackageServers,
			[string]$sPackageServerGuids,
			[string]$sLocationOnPackageServer,
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


Function UpdateDistributionPoints {
    
    param (
			[string]$sPackageGuid,
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


Function AssignSoftwarePortalSecurity {
    
    param (
			[string]$sProgramGuid,
			[string]$sPermissionGuid,
			[string]$sUserName,
			[string]$sAction,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sPermissionGuid = $sPermissionGuid
 			sUserName = $sUserName
 			sAction = $sAction

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/AssignSoftwarePortalSecurity"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateProgramExBasic {
    
    param (
			[string]$sProgramName,
			[string]$sCommandLine,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/CreateProgramExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateProgramExDetail {
    
    param (
			[string]$sProgramName,
			[string]$sCommandLine,
			[string]$sProgramDescription,
			[string]$sProgramWorkingDirectory,
			[string]$sEstimatedDiskSpace,
			[string]$sEstimatedRunTime,
			[string]$sTerminateAfter,
			[string]$sSuccessCodes,
			[string]$sFailureCodes,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine
 			sProgramDescription = $sProgramDescription
 			sProgramWorkingDirectory = $sProgramWorkingDirectory
 			sEstimatedDiskSpace = $sEstimatedDiskSpace
 			sEstimatedRunTime = $sEstimatedRunTime
 			sTerminateAfter = $sTerminateAfter
 			sSuccessCodes = $sSuccessCodes
 			sFailureCodes = $sFailureCodes

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/CreateProgramExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetProgramExByGuid {
    
    param (
			[string]$sProgramGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/GetProgramExByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetProgramsFromPackage {
    
    param (
			[string]$sPackageGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/GetProgramsFromPackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyProgramExBasic {
    
    param (
			[string]$sProgramGuid,
			[string]$sProgramName,
			[string]$sCommandLine,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/ModifyProgramExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyProgramExDetail {
    
    param (
			[string]$sProgramGuid,
			[string]$sProgramName,
			[string]$sCommandLine,
			[string]$sProgramDescription,
			[string]$sProgramWorkingDirectory,
			[string]$sEstimatedDiskSpace,
			[string]$sEstimatedRunTime,
			[string]$sTerminateAfter,
			[string]$sSuccessCodes,
			[string]$sFailureCodes,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine
 			sProgramDescription = $sProgramDescription
 			sProgramWorkingDirectory = $sProgramWorkingDirectory
 			sEstimatedDiskSpace = $sEstimatedDiskSpace
 			sEstimatedRunTime = $sEstimatedRunTime
 			sTerminateAfter = $sTerminateAfter
 			sSuccessCodes = $sSuccessCodes
 			sFailureCodes = $sFailureCodes

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/ModifyProgramExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramExecutionOptions {
    
    param (
			[string]$sProgramGuid,
			[string]$sStartingWindow,
			[string]$sRunWithRights,
			[string]$sUserDomain,
			[string]$sUserName,
			[string]$sUserPassword,
			[string]$sUserConfirmPassword,
			[string]$sProgramCanRun,
			[string]$sUserInputRequired,
			[string]$sRunOnceForEachLoggedOnUser,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sStartingWindow = $sStartingWindow
 			sRunWithRights = $sRunWithRights
 			sUserDomain = $sUserDomain
 			sUserName = $sUserName
 			sUserPassword = $sUserPassword
 			sUserConfirmPassword = $sUserConfirmPassword
 			sProgramCanRun = $sProgramCanRun
 			sUserInputRequired = $sUserInputRequired
 			sRunOnceForEachLoggedOnUser = $sRunOnceForEachLoggedOnUser

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramExecutionOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramNetworkOptions {
    
    param (
			[string]$sProgramGuid,
			[string]$sProgramRequiresNWConnection,
			[string]$sMinimumSpeedOptions,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sProgramRequiresNWConnection = $sProgramRequiresNWConnection
 			sMinimumSpeedOptions = $sMinimumSpeedOptions

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramNetworkOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramPackageMapping {
    
    param (
			[string]$sPackageGuid,
			[string]$sProgramGuid,
			[string]$sAction,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid
 			sAction = $sAction

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramPackageMapping"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramRunOptions {
    
    param (
			[string]$sProgramGuid,
			[string]$sActionAfterRunning,
			[string]$sDeferTimeforRestartInMinutes,
			[string]$sForceRunningApplicationToCloseOnRestart,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sActionAfterRunning = $sActionAfterRunning
 			sDeferTimeforRestartInMinutes = $sDeferTimeforRestartInMinutes
 			sForceRunningApplicationToCloseOnRestart = $sForceRunningApplicationToCloseOnRestart

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramRunOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CloneItem {
    
    param (
			[guid]$itemGuid,
			[string]$newItemName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			newItemName = $newItemName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/CloneItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateFolder {
    
    param (
			[string]$folderName,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			folderName = $folderName
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/CreateFolder"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteItem {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/DeleteItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DisablePolicyItem {
    
    param (
			[guid]$policyItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/DisablePolicyItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnablePolicyItem {
    
    param (
			[guid]$policyItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/EnablePolicyItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExecuteSchedulableItem {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExecuteSchedulableItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportItemProfileXmlString {
    
    param (
			[guid]$itemGuid,
			[bool]$legacyExport,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			legacyExport = $legacyExport

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemProfileXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportItemXml {
    
    param (
			[guid]$itemGuid,
			[string]$outputFile,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			outputFile = $outputFile

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemXml"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportItemXmlString {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemByGuid {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsByName {
    
    param (
			[string]$itemName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemName = $itemName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsByNameAndType {
    
    param (
			[string]$name,
			[string]$type,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByNameAndType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsByType {
    
    param (
			[string]$typeName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			typeName = $typeName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsInFolder {
    
    param (
			[guid]$folderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			folderGuid = $folderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsInFolder"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportItemXmlFile {
    
    param (
			[string]$sourceFile,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sourceFile = $sourceFile

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportItemXmlFiles {
    
    param (
			[string]$sourceDirectory,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sourceDirectory = $sourceDirectory

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlFiles"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportItemXmlString {
    
    param (
			[string]$xml,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			xml = $xml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ItemExists {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ItemExists"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MoveItem {
    
    param (
			[guid]$itemGuid,
			[guid]$destinationFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			destinationFolderGuid = $destinationFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/MoveItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RenameItem {
    
    param (
			[guid]$itemGuid,
			[string]$newName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			newName = $newName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/RenameItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunAutomationPolicyTask {
    
    param (
			[guid]$policyItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/RunAutomationPolicyTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetItemsSchedule {
    
    param (
			[guid]$itemGuid,
			[string]$scheduleXml,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			scheduleXml = $scheduleXml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/SetItemsSchedule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddExclusions {
    
    param (
			[guid]$collectionItemGuid,
			[string]$itemGuids,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/AddExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddInclusions {
    
    param (
			[guid]$collectionItemGuid,
			[string]$itemGuids,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/AddInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceCollection {
    
    param (
			[string]$name,
			[string]$description,
			[guid]$folderGuid,
			[bool]$autoUpdate,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			folderGuid = $folderGuid
 			autoUpdate = $autoUpdate

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/CreateResourceCollection"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetCollectionMembership {
    
    param (
			[guid]$collectionItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetCollectionMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetExclusions {
    
    param (
			[guid]$collectionItemGuid,
			[string]$type,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetInclusions {
    
    param (
			[guid]$collectionItemGuid,
			[string]$type,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveExclusions {
    
    param (
			[string]$collectionItemGuid,
			[string]$itemGuids,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/RemoveExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveInclusions {
    
    param (
			[guid]$collectionItemGuid,
			[string]$itemGuids,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/RemoveInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetCollectionDataSourceToRawSqlQuery {
    
    param (
			[guid]$collectionItemGuid,
			[string]$sqlQuery,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			sqlQuery = $sqlQuery

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/SetCollectionDataSourceToRawSqlQuery"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateCollections {
    
    param (
			[string]$collectionItemGuids,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuids = $collectionItemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/UpdateCollections"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomEventHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[string]$customScheduleXml,
			[string]$replicationType,
			[string]$resourceIdentificationGuids,
			[string]$eventClassGuids,
			[int]$rowCount,
			[bool]$resend,
			[string]$direction,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			eventClassGuids = $eventClassGuids
 			rowCount = $rowCount
 			resend = $resend
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomEventHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomItemHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[string]$customScheduleXml,
			[string]$ruleType,
			[string]$collectionItemGuids,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			ruleType = $ruleType
 			collectionItemGuids = $collectionItemGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomItemHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomResourceHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[string]$customScheduleXml,
			[string]$replicationType,
			[string]$resourceIdentificationGuids,
			[string]$dataClassGuids,
			[bool]$verificationEnabled,
			[int]$verificationLevel,
			[string]$direction,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			dataClassGuids = $dataClassGuids
 			verificationEnabled = $verificationEnabled
 			verificationLevel = $verificationLevel
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomResourceHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomSecurityHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[string]$customScheduleXml,
			[string]$ruleType,
			[string]$securityGuids,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			ruleType = $ruleType
 			securityGuids = $securityGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomSecurityHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardEventHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[guid]$sharedScheduleGuid,
			[string]$replicationType,
			[string]$resourceIdentificationGuids,
			[string]$eventClassGuids,
			[int]$rowCount,
			[bool]$resend,
			[string]$direction,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			eventClassGuids = $eventClassGuids
 			rowCount = $rowCount
 			resend = $resend
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardEventHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardItemHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[guid]$sharedScheduleGuid,
			[string]$ruleType,
			[string]$collectionItemGuids,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			ruleType = $ruleType
 			collectionItemGuids = $collectionItemGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardItemHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardResourceHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[guid]$sharedScheduleGuid,
			[string]$replicationType,
			[string]$resourceIdentificationGuids,
			[string]$dataClassGuids,
			[bool]$verificationEnabled,
			[int]$verificationLevel,
			[string]$direction,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			dataClassGuids = $dataClassGuids
 			verificationEnabled = $verificationEnabled
 			verificationLevel = $verificationLevel
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardResourceHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardSecurityHierarchyRule {
    
    param (
			[string]$name,
			[string]$description,
			[bool]$enabled,
			[guid]$sharedScheduleGuid,
			[string]$ruleType,
			[string]$securityGuids,
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			ruleType = $ruleType
 			securityGuids = $securityGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardSecurityHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnableHierarchyEditableProperty {
    
    param (
			[guid]$itemGuid,
			[string]$propertyName,
			[bool]$enable,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			propertyName = $propertyName
 			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableHierarchyEditableProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnableHierarchyReplication {
    
    param (
			[bool]$enable,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableHierarchyReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnableReplicationForItemInstance {
    
    param (
			[guid]$itemGuid,
			[bool]$enable,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableReplicationForItemInstance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetEnabledHierarchyEditableProperties {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/GetEnabledHierarchyEditableProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetHierarchyEditableProperties {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/GetHierarchyEditableProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsHierarchyManaged {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyManaged"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsHierarchyMember {
    
    param (
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyMember"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsHierarchyPublished {
    
    param (
			[guid]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyPublished"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunCompleteReplication {
    
    param (
			[guid]$nodeGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			nodeGuid = $nodeGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/RunCompleteReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunDifferentialReplication {
    
    param (
			[guid]$nodeGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			nodeGuid = $nodeGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/RunDifferentialReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateReportUsingRawSqlQuery {
    
    param (
			[string]$reportName,
			[string]$reportDescription,
			[string]$dataSourceName,
			[guid]$folderGuid,
			[string]$sqlQuery,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportName = $reportName
 			reportDescription = $reportDescription
 			dataSourceName = $dataSourceName
 			folderGuid = $folderGuid
 			sqlQuery = $sqlQuery

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/CreateReportUsingRawSqlQuery"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetReportParameters {
    
    param (
			[guid]$reportItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/GetReportParameters"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunReport {
    
    param (
			[guid]$reportItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/RunReport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunReportWithParameters {
    
    param (
			[guid]$reportItemGuid,
			[string]$nameValuePairs,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid
 			nameValuePairs = $nameValuePairs

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/RunReportWithParameters"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceAssociation {
    
    param (
			[guid]$resourceAssociationTypeGuid,
			[guid]$parentResourceGuid,
			[guid]$childResourceGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceAssociationTypeGuid = $resourceAssociationTypeGuid
 			parentResourceGuid = $parentResourceGuid
 			childResourceGuid = $childResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/CreateResourceAssociation"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetComputerByNameAndDomain {
    
    param (
			[string]$name,
			[string]$domain,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			domain = $domain

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetComputerByNameAndDomain"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDataClassData {
    
    param (
			[string]$dataClass,
			[guid]$resourceGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			dataClass = $dataClass
 			resourceGuid = $resourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetDataClassData"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceByContext {
    
    param (
			[string]$parameters,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parameters = $parameters

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetResourceByContext"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceByName {
    
    param (
			[string]$name,
			[string]$resourceType,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			resourceType = $resourceType

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetResourceByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetUserByUserIdAndDomain {
    
    param (
			[string]$userId,
			[string]$domain,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			userId = $userId
 			domain = $domain

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetUserByUserIdAndDomain"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MergeResource {
    
    param (
			[guid]$fromGuid,
			[guid]$toGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			fromGuid = $fromGuid
 			toGuid = $toGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/MergeResource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PushAltirisAgentToComputers {
    
    param (
			[string]$computerNames,
			[bool]$showInStartMenu,
			[bool]$showInSysTray,
			[bool]$useProxy,
			[bool]$showInAddRemove,
			[string]$overrideInstallPath,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			computerNames = $computerNames
 			showInStartMenu = $showInStartMenu
 			showInSysTray = $showInSysTray
 			useProxy = $useProxy
 			showInAddRemove = $showInAddRemove
 			overrideInstallPath = $overrideInstallPath

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/PushAltirisAgentToComputers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PushAltirisAgentToComputersStrict {
    
    param (
			[string]$computerNames,
			[bool]$showInStartMenu,
			[bool]$showInSysTray,
			[bool]$useProxy,
			[bool]$showInAddRemove,
			[string]$overrideInstallPath,
			[string]$userName,
			[string]$password,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			computerNames = $computerNames
 			showInStartMenu = $showInStartMenu
 			showInSysTray = $showInSysTray
 			useProxy = $useProxy
 			showInAddRemove = $showInAddRemove
 			overrideInstallPath = $overrideInstallPath
 			userName = $userName
 			password = $password

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/PushAltirisAgentToComputersStrict"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignResourcesToOrganizationalGroup {
    
    param (
			[string]$resourceItemGuids,
			[guid]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuids = $resourceItemGuids
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignResourcesToOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignResourceTargetsToPolicy {
    
    param (
			[guid]$policyItemGuid,
			[string]$resourceTargetsGuids,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid
 			resourceTargetsGuids = $resourceTargetsGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignResourceTargetsToPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignRoleToOrganizationalGroup {
    
    param (
			[string]$roleGuid,
			[string]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignRoleToOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateOrganizationalGroup {
    
    param (
			[string]$name,
			[string]$description,
			[guid]$organizationalViewGuid,
			[guid]$parentGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			organizationalViewGuid = $organizationalViewGuid
 			parentGuid = $parentGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateOrganizationalView {
    
    param (
			[string]$name,
			[string]$description,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceTarget {
    
    param (
			[string]$configXml,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			configXml = $configXml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateResourceTarget"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteOrganizationalGroup {
    
    param (
			[guid]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/DeleteOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteOrganizationalView {
    
    param (
			[guid]$organizationalViewGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalViewGuid = $organizationalViewGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/DeleteOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupDirectMembership {
    
    param (
			[guid]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupDirectMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupMembership {
    
    param (
			[guid]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupsFromOrganizationalView {
    
    param (
			[guid]$organizationalViewGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalViewGuid = $organizationalViewGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupsFromOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalViews {
    
    param (
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalViews"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalViewsFolderGuid {
    
    param (
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalViewsFolderGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourcesTargetedByPolicy {
    
    param (
			[guid]$policyItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourcesTargetedByPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceTargetMembership {
    
    param (
			[guid]$resourceTargetGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceTargetGuid = $resourceTargetGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourceTargetMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceTargets {
    
    param (
			[guid]$policyItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourceTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsInOrganizationalGroup {
    
    param (
			[guid]$resourceItemGuid,
			[guid]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuid = $resourceItemGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/IsInOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsInOrganizationalGroupDirectMembership {
    
    param (
			[guid]$resourceItemGuid,
			[guid]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuid = $resourceItemGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/IsInOrganizationalGroupDirectMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MoveOrganizationalGroupWithinOrganizationalView {
    
    param (
			[guid]$organizationalGroupGuid,
			[guid]$parentGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid
 			parentGroupGuid = $parentGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/MoveOrganizationalGroupWithinOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveResourcesFromOrganizationalGroup {
    
    param (
			[string]$resourceItemGuids,
			[guid]$organizationalGroupGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuids = $resourceItemGuids
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/RemoveResourcesFromOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddRoleMembers {
    
    param (
			[string]$roleGuid,
			[string]$memberNames,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			memberNames = $memberNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AddRoleMembers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddRolePrivileges {
    
    param (
			[string]$roleGuid,
			[string]$privilegeNames,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			privilegeNames = $privilegeNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AddRolePrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignItemOwnership {
    
    param (
			[string]$itemGuid,
			[string]$userName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			userName = $userName

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AssignItemOwnership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateNewRole {
    
    param (
			[string]$roleName,
			[string]$roleDescription,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleName = $roleName
 			roleDescription = $roleDescription

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/CreateNewRole"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteRole {
    
    param (
			[guid]$roleGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/DeleteRole"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DisablePermissionInheritance {
    
    param (
			[string]$itemGuid,
			[int]$actionFlag,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			actionFlag = $actionFlag

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/DisablePermissionInheritance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnablePermissionInheritance {
    
    param (
			[string]$itemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/EnablePermissionInheritance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function FindRoleByName {
    
    param (
			[string]$roleName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleName = $roleName

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/FindRoleByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveRoleMembers {
    
    param (
			[string]$roleGuid,
			[string]$memberNames,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			memberNames = $memberNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/RemoveRoleMembers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveRolePrivileges {
    
    param (
			[string]$roleGuid,
			[string]$privilegeNames,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			privilegeNames = $privilegeNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/RemoveRolePrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddExpression {
    
    param (
			[string]$RuleExpression,
			[guid]$ParentOperation,
			[string]$RuleExpressionToAdd,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleExpression = $RuleExpression
 			ParentOperation = $ParentOperation
 			RuleExpressionToAdd = $RuleExpressionToAdd

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/AddExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddOperatorToExpression {
    
    param (
			[string]$RuleExpression,
			[guid]$ParentOperation,
			[string]$Operation,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleExpression = $RuleExpression
 			ParentOperation = $ParentOperation
 			Operation = $Operation

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/AddOperatorToExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpression64BitWindowsInstalled {
    
    param (
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpression64BitWindowsInstalled"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionFileVersion {
    
    param (
			[string]$VersionType,
			[string]$FileName,
			[string]$MatchType,
			[string]$Version,
			[string]$VersionLower,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			VersionType = $VersionType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionFileVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionMSIProductCode {
    
    param (
			[guid]$PackageGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionMSIProductCode"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionMUIInstalled {
    
    param (
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionMUIInstalled"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionProcessorType {
    
    param (
			[string]$ProcessorType,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ProcessorType = $ProcessorType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionProcessorType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionRegistryKeyExits {
    
    param (
			[string]$Key,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Key = $Key

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyExits"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionRegistryKeyPathToFileVersion {
    
    param (
			[string]$KeyPath,
			[string]$Entry,
			[string]$FileName,
			[string]$MatchType,
			[string]$Version,
			[string]$VersionLower,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyPathToFileVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionRegistryKeyPathToProductVersion {
    
    param (
			[string]$KeyPath,
			[string]$Entry,
			[string]$MatchType,
			[string]$Version,
			[string]$VersionLower,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyPathToProductVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionRegistryKeyToFileVersion {
    
    param (
			[string]$KeyPath,
			[string]$Entry,
			[string]$MatchType,
			[string]$Version,
			[string]$VersionLower,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyToFileVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionRegistryKeyValue {
    
    param (
			[string]$KeyPath,
			[string]$Entry,
			[string]$Value,
			[bool]$Substring,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			Value = $Value
 			Substring = $Substring

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyValue"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionRegistryKeyVersion {
    
    param (
			[string]$KeyPath,
			[string]$Entry,
			[string]$MatchType,
			[string]$Version,
			[string]$VersionLower,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionSoftwareFile {
    
    param (
			[guid]$SoftwareResourceGuid,
			[bool]$Selected,
			[string]$PathType,
			[string]$FileName,
			[string]$MatchType,
			[string]$Version,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareResourceGuid = $SoftwareResourceGuid
 			Selected = $Selected
 			PathType = $PathType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionSoftwareFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionSoftwareFileAddFile {
    
    param (
			[string]$SoftwareFileExpression,
			[bool]$Selected,
			[string]$PathType,
			[string]$FileName,
			[string]$MatchType,
			[string]$Version,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareFileExpression = $SoftwareFileExpression
 			Selected = $Selected
 			PathType = $PathType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionSoftwareFileAddFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionStaticFile {
    
    param (
			[bool]$Selected,
			[string]$PathType,
			[string]$FileName,
			[string]$MatchType,
			[string]$Version,
			[string]$VersionLower,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Selected = $Selected
 			PathType = $PathType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionStaticFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionStaticShortcutTarget {
    
    param (
			[string]$PathType,
			[string]$FileName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PathType = $PathType
 			FileName = $FileName

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionStaticShortcutTarget"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionWindowsLanguage {
    
    param (
			[int]$Lang,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Lang = $Lang

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionWindowsLanguage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateExpressionWindowsVersion {
    
    param (
			[bool]$MatchSuites,
			[bool]$AllSuitesMustBePresent,
			[int]$SuiteMask,
			[bool]$MatchVersion,
			[int]$MinorVersion,
			[int]$MajorVersion,
			[int]$ServicePackMinor,
			[int]$ServicePackMajor,
			[string]$ProductType,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			MatchSuites = $MatchSuites
 			AllSuitesMustBePresent = $AllSuitesMustBePresent
 			SuiteMask = $SuiteMask
 			MatchVersion = $MatchVersion
 			MinorVersion = $MinorVersion
 			MajorVersion = $MajorVersion
 			ServicePackMinor = $ServicePackMinor
 			ServicePackMajor = $ServicePackMajor
 			ProductType = $ProductType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionWindowsVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateInventoryRule {
    
    param (
			[string]$RuleName,
			[string]$RuleDescription,
			[string]$RuleXMLFile,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleName = $RuleName
 			RuleDescription = $RuleDescription
 			RuleXMLFile = $RuleXMLFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateInventoryRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateInventoryRuleFromExpression {
    
    param (
			[string]$RuleName,
			[string]$RuleDescription,
			[string]$RuleExpression,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleName = $RuleName
 			RuleDescription = $RuleDescription
 			RuleExpression = $RuleExpression

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateInventoryRuleFromExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportRuleDefinition {
    
    param (
			[guid]$RuleGuid,
			[string]$DestinationFileName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid
 			DestinationFileName = $DestinationFileName

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/ExportRuleDefinition"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportRuleDefinitionsFromComponent {
    
    param (
			[guid]$SoftwareComponentGuid,
			[string]$ApplicabilityRuleFullPath,
			[string]$DetectionRuleFullPath,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareComponentGuid = $SoftwareComponentGuid
 			ApplicabilityRuleFullPath = $ApplicabilityRuleFullPath
 			DetectionRuleFullPath = $DetectionRuleFullPath

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/ExportRuleDefinitionsFromComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetExpressionsFromRule {
    
    param (
			[guid]$RuleGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/GetExpressionsFromRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetExpressionsFromRuleFile {
    
    param (
			[string]$RuleXMLFile,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleXMLFile = $RuleXMLFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/GetExpressionsFromRuleFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveExpression {
    
    param (
			[string]$RuleExpression,
			[guid]$ExpressionGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleExpression = $RuleExpression
 			ExpressionGuid = $ExpressionGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/RemoveExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateInventoryRule {
    
    param (
			[guid]$RuleGuid,
			[string]$RuleXMLFile,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid
 			RuleXMLFile = $RuleXMLFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/UpdateInventoryRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateInventoryRuleFromExpression {
    
    param (
			[guid]$RuleGuid,
			[string]$RuleExpression,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid
 			RuleExpression = $RuleExpression

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/UpdateInventoryRuleFromExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCommandLine {
    
    param (
			[string]$Name,
			[string]$Description,
			[guid]$SoftwarePackageGuid,
			[guid]$SoftwareComponentGuid,
			[string]$InstallationFileType,
			[string]$CommandType,
			[bool]$Default,
			[string]$CommandLine,
			[string]$SuccessCodes,
			[string]$ErrorCodes,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			SoftwarePackageGuid = $SoftwarePackageGuid
 			SoftwareComponentGuid = $SoftwareComponentGuid
 			InstallationFileType = $InstallationFileType
 			CommandType = $CommandType
 			Default = $Default
 			CommandLine = $CommandLine
 			SuccessCodes = $SuccessCodes
 			ErrorCodes = $ErrorCodes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/CreateCommandLine"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteCommandLine {
    
    param (
			[guid]$CommandLineGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			CommandLineGuid = $CommandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/DeleteCommandLine"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetCommandLine {
    
    param (
			[guid]$commandLineGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			commandLineGuid = $commandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/GetCommandLine"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetCommandLineProperty {
    
    param (
			[guid]$CommandLineGuid,
			[string]$PropertyName,
			[string]$PropertyValue,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			CommandLineGuid = $CommandLineGuid
 			PropertyName = $PropertyName
 			PropertyValue = $PropertyValue

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/SetCommandLineProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddAssociationToSoftwareComponent {
    
    param (
			[guid]$ComponentGuid,
			[guid]$AssociatedResourceGuid,
			[string]$AssociationType,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			AssociatedResourceGuid = $AssociatedResourceGuid
 			AssociationType = $AssociationType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddAssociationToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddCommandLineToSoftwareComponent {
    
    param (
			[guid]$ComponentGuid,
			[guid]$CommandLineGuid,
			[bool]$SetAsDefault,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			CommandLineGuid = $CommandLineGuid
 			SetAsDefault = $SetAsDefault

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddCommandLineToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddPackageToSoftwareComponent {
    
    param (
			[string]$ComponentGuid,
			[string]$PackageGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddPackageToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddRulesToSoftwareComponent {
    
    param (
			[guid]$ComponentGuid,
			[guid]$ApplicabilityRuleGuid,
			[guid]$DetectionRuleGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			ApplicabilityRuleGuid = $ApplicabilityRuleGuid
 			DetectionRuleGuid = $DetectionRuleGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddRulesToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateServicePack {
    
    param (
			[string]$Name,
			[string]$Description,
			[string]$Version,
			[string]$Company,
			[string]$Product,
			[string]$ReleaseDate,
			[string]$InformationUrl,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			ReleaseDate = $ReleaseDate
 			InformationUrl = $InformationUrl

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/CreateServicePack"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateSoftwareRelease {
    
    param (
			[string]$Name,
			[string]$Description,
			[string]$Version,
			[string]$Company,
			[string]$Product,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/CreateSoftwareRelease"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateSoftwareUpdate {
    
    param (
			[string]$Name,
			[string]$Description,
			[string]$Version,
			[string]$Company,
			[string]$Product,
			[string]$SoftwareToUpdate,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			SoftwareToUpdate = $SoftwareToUpdate

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/CreateSoftwareUpdate"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DetailedExport {
    
    param (
			[guid]$ComponentGuid,
			[string]$DestinationFileName,
			[string]$Options,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			DestinationFileName = $DestinationFileName
 			Options = $Options

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/DetailedExport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DetailedImport {
    
    param (
			[string]$SourceFile,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SourceFile = $SourceFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/DetailedImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAssociatedResources {
    
    param (
			[guid]$ComponentGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/GetAssociatedResources"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareComponent {
    
    param (
			[guid]$componentGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			componentGuid = $componentGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/GetSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportSoftwareRelease {
    
    param (
			[string]$Name,
			[string]$Description,
			[int]$SourceType,
			[string]$PackageLocation,
			[string]$PackageFolder,
			[string]$InstallationFile,
			[string]$Version,
			[string]$Company,
			[string]$Product,
			[int]$MergeAction,
			[guid]$ReleaseMergeTo,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			SourceType = $SourceType
 			PackageLocation = $PackageLocation
 			PackageFolder = $PackageFolder
 			InstallationFile = $InstallationFile
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			MergeAction = $MergeAction
 			ReleaseMergeTo = $ReleaseMergeTo

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/ImportSoftwareRelease"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveAssociationFromSoftwareComponent {
    
    param (
			[guid]$ComponentGuid,
			[guid]$AssociatedResourceGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			AssociatedResourceGuid = $AssociatedResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemoveAssociationFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveCommandLineFromSoftwareComponent {
    
    param (
			[guid]$ComponentGuid,
			[guid]$CommandLineGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			CommandLineGuid = $CommandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemoveCommandLineFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemovePackageFromSoftwareComponent {
    
    param (
			[guid]$ComponentGuid,
			[guid]$PackageGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemovePackageFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveRulesFromSoftwareComponent {
    
    param (
			[guid]$ComponentGuid,
			[guid]$RuleGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			RuleGuid = $RuleGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemoveRulesFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ResolveDuplicatedSoftware {
    
    param (
			[guid]$MergeTo,
			[guid]$ToBeMergeTo,
			[string]$Name,
			[string]$Description,
			[string]$Version,
			[guid]$Company,
			[guid]$Product,
			[string]$Packages,
			[string]$CmdLines,
			[string]$ApplicabilityRule,
			[string]$DetectionRule,
			[string]$Associations,
			[string]$Files,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			MergeTo = $MergeTo
 			ToBeMergeTo = $ToBeMergeTo
 			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			Packages = $Packages
 			CmdLines = $CmdLines
 			ApplicabilityRule = $ApplicabilityRule
 			DetectionRule = $DetectionRule
 			Associations = $Associations
 			Files = $Files

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/ResolveDuplicatedSoftware"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwareComponentProperty {
    
    param (
			[guid]$ComponentGuid,
			[string]$PropertyName,
			[string]$PropertyValue,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			PropertyName = $PropertyName
 			PropertyValue = $PropertyValue

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/SetSoftwareComponentProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddFile {
    
    param (
			[guid]$PackageGuid,
			[string]$File,
			[bool]$IgnoreAttributes,
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


Function CreatePackage {
    
    param (
			[string]$Name,
			[string]$Description,
			[guid]$SoftwareResourceGuid,
			[int]$PackageSourceType,
			[string]$PackageLocation,
			[string]$PackageFolder,
			[string]$InstallationFile,
			[bool]$AutoGenerateCommandLines,
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


Function DeletePackage {
    
    param (
			[guid]$PackageGuid,
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


Function GetPackage {
    
    param (
			[guid]$packageGuid,
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


Function RemoveFile {
    
    param (
			[guid]$PackageGuid,
			[string]$File,
			[bool]$IgnoreAttributes,
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


Function SetPackageProperty {
    
    param (
			[guid]$PackageGuid,
			[string]$PropertyName,
			[string]$Value,
			[bool]$IgnoreAttributes,
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


Function SetPackageServerSettings {
    
    param (
			[guid]$PackageGuid,
			[int]$AssignmentType,
			[string]$AutomaticSiteAssignment,
			[string]$PackageServers,
			[string]$PackageServerLocation,
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


Function SetPackageSource {
    
    param (
			[guid]$PackageGuid,
			[int]$PackageSourceType,
			[string]$PackageLocation,
			[string]$PackageFolder,
			[bool]$IgnoreAttributes,
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


Function UpdateDistributionPoints {
    
    param (
			[string]$PackageGuid,
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


Function ValidateSoftwareLibrary {
    
    param (
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


Function CreateSoftwareProduct {
    
    param (
			[string]$Name,
			[string]$Description,
			[string]$CompanyName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			CompanyName = $CompanyName

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareProductManagementService.asmx/CreateSoftwareProduct"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareComponents {
    
    param (
			[guid]$SoftwareProductGuid,
			[string]$ComponentType,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareProductGuid = $SoftwareProductGuid
 			ComponentType = $ComponentType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareProductManagementService.asmx/GetSoftwareComponents"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareProduct {
    
    param (
			[string]$Name,
			[string]$CompanyNameOrGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			CompanyNameOrGuid = $CompanyNameOrGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareProductManagementService.asmx/GetSoftwareProduct"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddDeliveryItem {
    
    param (
			[guid]$policyGuid,
			[guid]$softwareOrTaskGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			softwareOrTaskGuid = $softwareOrTaskGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/AddDeliveryItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreatePolicy {
    
    param (
			[string]$name,
			[string]$description,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/CreatePolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDefaultPolicySetting {
    
    param (
			[string]$settingName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDefaultPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDeliveryItems {
    
    param (
			[guid]$policyGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDeliveryItems"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDeliveryItemSetting {
    
    param (
			[guid]$policyGuid,
			[guid]$deliveryItemGuid,
			[string]$settingName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid
 			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDeliveryItemSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetPolicySetting {
    
    param (
			[guid]$policyGuid,
			[string]$settingName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveDeliveryItem {
    
    param (
			[guid]$policyGuid,
			[guid]$deliveryItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/RemoveDeliveryItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetDefaultPolicySetting {
    
    param (
			[string]$settingName,
			[string]$value,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetDefaultPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetDeliveryItemSetting {
    
    param (
			[guid]$policyGuid,
			[guid]$deliveryItemGuid,
			[string]$settingName,
			[string]$value,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid
 			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetDeliveryItemSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPolicySetting {
    
    param (
			[guid]$policyGuid,
			[string]$settingName,
			[string]$value,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddUserOrGroupToPublishingItem {
    
    param (
			[guid]$publishingItemGuid,
			[string]$userOrGroup,
			[bool]$preApproved,
			[bool]$recommended,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup
 			preApproved = $preApproved
 			recommended = $recommended

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/AddUserOrGroupToPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwarePortalSetting {
    
    param (
			[string]$settingName,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForAdmin {
    
    param (
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForAdmin"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForManager {
    
    param (
			[string]$managerLogin,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			managerLogin = $managerLogin

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForManager"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetUsersForPublishingItem {
    
    param (
			[guid]$publishingItemGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetUsersForPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishPolicy {
    
    param (
			[guid]$policyGuid,
			[string]$name,
			[string]$description,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishSoftwareResource {
    
    param (
			[guid]$softwareResourceGuid,
			[guid]$commandLineGuid,
			[string]$name,
			[string]$description,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			commandLineGuid = $commandLineGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishSoftwareResource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveUserOrGroupFromPublishingItem {
    
    param (
			[guid]$publishingItemGuid,
			[string]$userOrGroup,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/RemoveUserOrGroupFromPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwarePortalSetting {
    
    param (
			[string]$settingName,
			[string]$value,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SoftwareRequestAction {
    
    param (
			[guid]$softwareRequestGuid,
			[string]$action,
			[string]$comment,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareRequestGuid = $softwareRequestGuid
 			action = $action
 			comment = $comment

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SoftwareRequestAction"


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
    
    param (
			[string]$packagesInfo,
			[bool]$overwrite,
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
    
    param (
			[guid]$packageGuid,
			[guid]$commandLineGuid,
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
    
    param (
			[guid]$softwareResourceGuid,
			[guid]$commandLineGuid,
			[guid]$packageGuid,
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
    
    param (
			[guid]$softwareResourceGuid,
			[string]$firstServer,
			[string]$lastServer,
			[int]$maxNumberOfServers,
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
    
    param (
			[string]$command,
			[string]$layerName,
			[string]$filePath,
			[bool]$forceToComplete,
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
    
    param (
			[guid]$softwareResourceGuid,
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
    
    param (
			[guid]$taskGuid,
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


Function ExecuteTask {
    
    param (
			[guid]$taskGuid,
			[string]$executionName,
			[string]$inputParameters,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			executionName = $executionName
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ExecuteTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetExecutedTaskInstances {
    
    param (
			[guid]$taskGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetExecutedTaskInstances"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTask {
    
    param (
			[guid]$taskGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTaskResourceStatus {
    
    param (
			[guid]$taskInstanceGuid,
			[guid]$resourceGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskInstanceGuid = $taskInstanceGuid
 			resourceGuid = $resourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTaskResourceStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTasks {
    
    param (
			[guid]$parentFolderGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTasks"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTasksByType {
    
    param (
			[guid]$parentFolderGuid,
			[guid]$taskTypeGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parentFolderGuid = $parentFolderGuid
 			taskTypeGuid = $taskTypeGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTasksByType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTaskStatus {
    
    param (
			[guid]$taskGuid,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTaskStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ScheduleTaskCustom {
    
    param (
			[guid]$taskGuid,
			[string]$scheduleName,
			[string]$description,
			[string]$customScheduleXml,
			[string]$inputParameters,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			scheduleName = $scheduleName
 			description = $description
 			customScheduleXml = $customScheduleXml
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ScheduleTaskCustom"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ScheduleTaskShared {
    
    param (
			[guid]$taskGuid,
			[string]$scheduleName,
			[string]$description,
			[guid]$sharedScheduleGuid,
			[string]$inputParameters,
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			scheduleName = $scheduleName
 			description = $description
 			sharedScheduleGuid = $sharedScheduleGuid
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ScheduleTaskShared"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

