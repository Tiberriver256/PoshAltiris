
Function New-SWDAdvertisement {

<#
.SYNOPSIS
    

.PARAMETER bEnable
     

.PARAMETER sAdvertisementExName
     

.PARAMETER sAdvertisementExDescription
     

.PARAMETER sFolderGuid
     

.PARAMETER sPackageGuid
     

.PARAMETER sProgramGuid
     

.PARAMETER sResourceTargets
     

.PARAMETER sPriority
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sResourceGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sResourceName
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sResourceTargetGuids
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sResourceGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sResourceName
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sPackageGuid
     

.PARAMETER sProgramGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER bEnable
     

.PARAMETER sAdvertisementExName
     

.PARAMETER sAdvertisementExDescription
     

.PARAMETER sPackageGuid
     

.PARAMETER sProgramGuid
     

.PARAMETER sResourceTargets
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sResourceTarget
     

.PARAMETER sAction
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER bEnableVerboseReporting
     

.PARAMETER bUseDefaultAgentSettings
     

.PARAMETER bRunFromServer
     

.PARAMETER bDownloadAndRunLocally
     

.PARAMETER sDownloadLocallyBandwidth
     

.PARAMETER sDownloadLocallySpeed
     

.PARAMETER bDownloadPackageAsap
     

.PARAMETER bMulticastPackage
     

.EXAMPLE 
     

.NOTES
    
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
			[bool]$bDownloadPackageAsap,
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


Function Set-SWDAdvertisementRunOptions {

<#
.SYNOPSIS
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER bIndependentExecution
     

.PARAMETER bScheduleRetry
     

.PARAMETER bNotifyUserWhenTaskAvailable
     

.PARAMETER bWarnUserBeforeRunning
     

.PARAMETER deferTime
     

.EXAMPLE 
     

.NOTES
    
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
			[int]$deferTime,
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


Function Set-SWDAdvertisementScheduleRunASAP {

<#
.SYNOPSIS
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER bRunAsap
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bRunAsap,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sRunAt
     

.EXAMPLE 
     

.NOTES
    
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


Function SetAdvertisementExScheduleScheduleXML {

<#
.SYNOPSIS
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER sScheduleXML
     

.EXAMPLE 
     

.NOTES
    
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


Function SetAvailabilityRemovalOptions {

<#
.SYNOPSIS
    

.PARAMETER sAdvertisementExGuid
     

.PARAMETER bRemoveAfterSuccessfulRun
     

.PARAMETER sAvailableFrom
     

.PARAMETER bExpires
     

.PARAMETER sAvaliableTo
     

.PARAMETER bUseServersTime
     

.EXAMPLE 
     

.NOTES
    
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

