
Function Set-SWDSoftwarePortalSecurity {

<#
.SYNOPSIS
    

.PARAMETER sProgramGuid
     

.PARAMETER sPermissionGuid
     

.PARAMETER sUserName
     

.PARAMETER sAction
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPermissionGuid,
			[Parameter(Mandatory=$true)]
			[string]$sUserName,
			[Parameter(Mandatory=$true)]
			[string]$sAction,
            [Parameter(Mandatory=$true)]
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


Function New-SWDProgramBasic {

<#
.SYNOPSIS
    

.PARAMETER sProgramName
     

.PARAMETER sCommandLine
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
            [Parameter(Mandatory=$true)]
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


Function New-SWDProgramDetail {

<#
.SYNOPSIS
    

.PARAMETER sProgramName
     

.PARAMETER sCommandLine
     

.PARAMETER sProgramDescription
     

.PARAMETER sProgramWorkingDirectory
     

.PARAMETER sEstimatedDiskSpace
     

.PARAMETER sEstimatedRunTime
     

.PARAMETER sTerminateAfter
     

.PARAMETER sSuccessCodes
     

.PARAMETER sFailureCodes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
			[Parameter(Mandatory=$true)]
			[string]$sProgramDescription,
			[Parameter(Mandatory=$true)]
			[string]$sProgramWorkingDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedDiskSpace,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedRunTime,
			[Parameter(Mandatory=$true)]
			[string]$sTerminateAfter,
			[Parameter(Mandatory=$true)]
			[string]$sSuccessCodes,
			[Parameter(Mandatory=$true)]
			[string]$sFailureCodes,
            [Parameter(Mandatory=$true)]
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


Function Get-SWDProgramByGuid {

<#
.SYNOPSIS
    

.PARAMETER sProgramGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
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


Function Get-SWDProgramsFromPackage {

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


Function Set-SWDProgramBasic {

<#
.SYNOPSIS
    

.PARAMETER sProgramGuid
     

.PARAMETER sProgramName
     

.PARAMETER sCommandLine
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDProgramDetail {

<#
.SYNOPSIS
    

.PARAMETER sProgramGuid
     

.PARAMETER sProgramName
     

.PARAMETER sCommandLine
     

.PARAMETER sProgramDescription
     

.PARAMETER sProgramWorkingDirectory
     

.PARAMETER sEstimatedDiskSpace
     

.PARAMETER sEstimatedRunTime
     

.PARAMETER sTerminateAfter
     

.PARAMETER sSuccessCodes
     

.PARAMETER sFailureCodes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
			[Parameter(Mandatory=$true)]
			[string]$sProgramDescription,
			[Parameter(Mandatory=$true)]
			[string]$sProgramWorkingDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedDiskSpace,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedRunTime,
			[Parameter(Mandatory=$true)]
			[string]$sTerminateAfter,
			[Parameter(Mandatory=$true)]
			[string]$sSuccessCodes,
			[Parameter(Mandatory=$true)]
			[string]$sFailureCodes,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDProgramExecutionOptions {

<#
.SYNOPSIS
    

.PARAMETER sProgramGuid
     

.PARAMETER sStartingWindow
     

.PARAMETER sRunWithRights
     

.PARAMETER sUserDomain
     

.PARAMETER sUserName
     

.PARAMETER sUserPassword
     

.PARAMETER sUserConfirmPassword
     

.PARAMETER sProgramCanRun
     

.PARAMETER sUserInputRequired
     

.PARAMETER sRunOnceForEachLoggedOnUser
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sStartingWindow,
			[Parameter(Mandatory=$true)]
			[string]$sRunWithRights,
			[Parameter(Mandatory=$true)]
			[string]$sUserDomain,
			[Parameter(Mandatory=$true)]
			[string]$sUserName,
			[Parameter(Mandatory=$true)]
			[string]$sUserPassword,
			[Parameter(Mandatory=$true)]
			[string]$sUserConfirmPassword,
			[Parameter(Mandatory=$true)]
			[string]$sProgramCanRun,
			[Parameter(Mandatory=$true)]
			[string]$sUserInputRequired,
			[Parameter(Mandatory=$true)]
			[string]$sRunOnceForEachLoggedOnUser,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDProgramNetworkOptions {

<#
.SYNOPSIS
    

.PARAMETER sProgramGuid
     

.PARAMETER sProgramRequiresNWConnection
     

.PARAMETER sMinimumSpeedOptions
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramRequiresNWConnection,
			[Parameter(Mandatory=$true)]
			[string]$sMinimumSpeedOptions,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDProgramPackageMapping {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sProgramGuid
     

.PARAMETER sAction
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sAction,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDProgramRunOptions {

<#
.SYNOPSIS
    

.PARAMETER sProgramGuid
     

.PARAMETER sActionAfterRunning
     

.PARAMETER sDeferTimeforRestartInMinutes
     

.PARAMETER sForceRunningApplicationToCloseOnRestart
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sActionAfterRunning,
			[Parameter(Mandatory=$true)]
			[string]$sDeferTimeforRestartInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sForceRunningApplicationToCloseOnRestart,
            [Parameter(Mandatory=$true)]
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

