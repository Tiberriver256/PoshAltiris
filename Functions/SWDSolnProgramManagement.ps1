
Function Set-SWDSoftwarePortalSecurity {

<#
.SYNOPSIS
    This ASDK Method assigns the software Portal security settings on a ProgramEx. Action would be either Remove or Add. 

.PARAMETER sProgramGuid
    Guid of the program whose software portal security is to be modified. 

.PARAMETER sPermissionGuid
    Permission guid. 

.PARAMETER sUserName
    User Name(Domain/UserName). 

.PARAMETER sAction
    Action. User "add" or "remove". 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
string installSoftwarePermissionGuid = "A56F6866-B362-4EFC-BFFA-A29E7C9D2F2F";
bool result = m_proxy.AssignSoftwarePortalSecurity(programObject.Guid, installSoftwarePermissionGuid, "Domain\Username", "add");
CopyVBScript
installSoftwarePermissionGuid = "A56F6866-B362-4EFC-BFFA-A29E7C9D2F2F"
result = programManagement.AssignSoftwarePortalSecurity(programObject.Guid, installSoftwarePermissionGuid,"Domain\Username", "add")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:AssignSoftwarePortalSecurity  "sProgramGuid:%ProgramGuid%" "sPermissionGuid:%PermissionGuid%" "sUserName:%UserName%" "sAction:%Action%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Software delivery permission guids. Read - 983A2D22-7A82-4DB0-A707-52C7D6B1441E, Write - AC296DF1-EB40-4592-899F-25D5C07D45F6, Change Permissions - 819DAE1E-B1A5-4643-81A1-26EF95FEB8A8, Delete - ECA6254F-5017-4730-9B3F-5ADD230829B7, Read Permissions - 4DDC04C3-F0A5-4E88-84AA-C44C8C5EBCC4, Clone - 726B1C09-7108-450D-AE24-5F8E93135ED6 
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
    This ASDK method will create a basic ProgramEx item. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails programObject = m_proxy.CreateProgramExBasic("Program Basic", "notepad.exe");
CopyVBScript
set programObject = programManagement.CreateProgramExBasic("Program Basic", "notepad.exe")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:CreateProgramExBasic "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDK method will create a detailed ProgramEx item. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched. 

.PARAMETER sProgramDescription
    Description of the program. 

.PARAMETER sProgramWorkingDirectory
    Working directory of the program. 

.PARAMETER sEstimatedDiskSpace
    Estimated Disk Space required in KBytes. 

.PARAMETER sEstimatedRunTime
    Estimated Run Time required in minutes. 

.PARAMETER sTerminateAfter
    Time in minutes required to terminate. 

.PARAMETER sSuccessCodes
    Program Success Code. 

.PARAMETER sFailureCodes
    Program Failure Code. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails programObject = m_proxy.CreateProgramExDetail("Program Detail", "notepad.exe","Program Description made with ASDK",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
"1","10","360", "1", "0");
CopyVBScript
set programObject = programManagement.CreateProgramExDetail("Program Detail", "notepad.exe","Program Description made with ASDK","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
            "1","10","360", "1", "0")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:CreateProgramExDetail "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%" "sProgramDescription:%ProgramDescription%" "sProgramWorkingDirectory:%ProgramWorkingDirectory%" "sEstimatedDiskSpace:%EstimatedDiskSpace%" "sEstimatedRunTime:%EstimatedRunTime%" "sTerminateAfter:%TerminateAfter%" "sSuccessCodes:%SuccessCodes%" "sFailureCodes:%FailureCodes%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDKMethod gives the details about a ProgramEx filtered out by Guid. 

.PARAMETER sProgramGuid
    Guid of the program whose details are to be fetched. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails programObject = m_proxy.GetProgramExByGuid(programObject.Guid);
CopyVBScript
set programObject = programManagement.GetProgramExByGuid(programObject.Guid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetProgramExByGuid  "sProgramGuid:%ProgramGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This method returns the array of Programs for a given package guid as input 

.PARAMETER sPackageGuid
    Guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails[] programObject = m_proxy.GetProgramsFromPackage(packageObject.Guid);
CopyVBScript
programArray = programManagement.GetProgramsFromPackage(packageObject.Guid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetProgramsFromPackage "sPackageGuid:%PackageGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDK method will be modify the options of a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyProgramExBasic(programObject.Guid,"New Name from ModifyProgramExBasic", "notepad.exe");
CopyVBScript
result = programManagement.ModifyProgramExBasic(programObject.Guid, "New Name from ModifyProgramExBasic", "notepad.exe")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:ModifyProgramExBasic  "sProgramGuid:%ProgramGuid%" "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDK method will be modify the detailed options of a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched 

.PARAMETER sProgramDescription
    Description of the program. 

.PARAMETER sProgramWorkingDirectory
    Working directory of the program. 

.PARAMETER sEstimatedDiskSpace
    Estimated Disk Space required in KBytes. 

.PARAMETER sEstimatedRunTime
    Estimated Run Time required in minutes. 

.PARAMETER sTerminateAfter
    Time in minutes required to terminate. 

.PARAMETER sSuccessCodes
    Program Success Code. 

.PARAMETER sFailureCodes
    Program Failure Code. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyProgramExDetail(programObject.Guid,"New Name from ModifyProgramExDetail", "notepad.exe","Program Description made with ASDK",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
"1","10","360", "1", "0");
CopyVBScript
result = programManagement.ModifyProgramExDetail(programObject.Guid,"New Name from ModifyProgramExDetail", "notepad.exe","Program Description made with ASDK","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
           "1","10","360", "1", "0")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:ModifyProgramExDetail  "sProgramGuid:%ProgramGuid%" "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%" "sProgramDescription:%ProgramDescription%" "sProgramWorkingDirectory:%ProgramWorkingDirectory%" "sEstimatedDiskSpace:%EstimatedDiskSpace%" "sEstimatedRunTime:%EstimatedRunTime%" "sTerminateAfter:%TerminateAfter%" "sSuccessCodes:%SuccessCodes%" "sFailureCodes:%FailureCodes%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDK method will set the Execution Environment Options for a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified.. 

.PARAMETER sStartingWindow
    Starting Window option. Use "StartingWindow.Normal", "StartingWindow.Hidden", "StartingWindow.Minimized", "StartingWindow.Maximized". 

.PARAMETER sRunWithRights
    Run with Right option. Use "RunWithRights.SystemAccount", "RunWithRights.LoggedInUser", "RunWithRights.SpecifiedUser". 

.PARAMETER sUserDomain
    User Domain to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sUserName
    User Name to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sUserPassword
    User Password to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sUserConfirmPassword
    User Confirm Password to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sProgramCanRun
    Program can run option, use "ProgramCanRunOption.WhetherOrNotAUserIsLoggedOn", "ProgramCanRunOption.OnlyWhenAUserIsLoggedOn" this option must be used when the "RunWithRights.LoggedInUser" option is used otherwise an error will be thrown, "ProgramCanRunOption.OnlyWhenNoUserIsLoggedOn". 

.PARAMETER sUserInputRequired
    Specify if user input is required should be "true" or "false" when "ProgramCanRunOption.OnlyWhenNoUserIsLoggedOn" is used this value is forced to be false. 

.PARAMETER sRunOnceForEachLoggedOnUser
    Specify if program should run once for each logged in user should be "true" or "false" when "ProgramCanRunOption.OnlyWhenNoUserIsLoggedOn" is used this value is forced to be false. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramExecutionOptions(programObject.Guid, "StartingWindow.Normal",
"RunWithRights.SystemAccount", "UserDomain", "UserName", "UserPassword", "UserConfirmPassword", "ProgramCanRunOption.WhetherOrNotAUserIsLoggedOn", "true",                                                                                                                  
"true");
CopyVBScript
result = programManagement.SetProgramExecutionOptions(programObject.Guid, "StartingWindow.Normal",
           "RunWithRights.SystemAccount", "UserDomain", "UserName", "UserPassword", "UserConfirmPassword", "ProgramCanRunOption.WhetherOrNotAUserIsLoggedOn", "true",                                                                                                                  
           "true")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramExecutionOptions  "sProgramGuid:%ProgramGuid%" "sStartingWindow:%StartingWindow%" "sRunWithRights:%RunWithRights%" "sUserDomain:%UserDomain%" "sUserName:%UserName%" "sUserPassword:%UserPassword%" "sUserConfirmPassword:%UserConfirmPassword%" "sProgramCanRun:%ProgramCanRun%" "sUserInputRequired:%UserInputRequired%" "sRunOnceForEachLoggedOnUser:%RunOnceForEachLoggedOnUser%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDK method will set the Network Options for a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified. 

.PARAMETER sProgramRequiresNWConnection
    True if program requires N/W connection else false. 

.PARAMETER sMinimumSpeedOptions
    Minimum speed required in KBytes / second. Use "1","2","5","10","50","100","256","512" and "1024" 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramNetworkOptions(programObject.Guid, "true", 
"10");
CopyVBScript
result = programManagement.SetProgramNetworkOptions(programObject.Guid, "true", 
           "10")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramNetworkOptions  "sProgramGuid:%ProgramGuid%" "sProgramRequiresNWConnection:%ProgramRequiresNWConnection%" "sMinimumSpeedOptions:%MinimumSpeedOptions%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDKMethod map the Program to package 

.PARAMETER sPackageGuid
    Guid of package to be mapped to program. 

.PARAMETER sProgramGuid
    Guid of program to be mapped to package. 

.PARAMETER sAction
    Action Required. Use "add" and "remove". 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramPackageMapping(packageObject.Guid, programObject.Guid, "add");
CopyVBScript
result = programManagement.SetProgramPackageMapping(packageObject.Guid, programObject.Guid, "add")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramPackageMapping "sPackageGuid:%PackageGuid%" "sProgramGuid:%ProgramGuid%"  "sAction:%Action%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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
    This ASDK method will set the Run Options for a ProgramEx item. 

.PARAMETER sProgramGuid
    Program GUID. 

.PARAMETER sActionAfterRunning
    Action to be taken after program has finished execution. Possible values are ActionAfterRunning.NoActionRequired, ActionAfterRunning.RestartComputer and ActionAfterRunning.LogOffUser  

.PARAMETER sDeferTimeforRestartInMinutes
    Time required for restarting machine in minutes. 

.PARAMETER sForceRunningApplicationToCloseOnRestart
    True if restart is forced else false. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramRunOptions(programObject.Guid, "ActionAfterRunning.RestartComputer",
"10", "true");
CopyVBScript
result = programManagement.SetProgramRunOptions(programObject.Guid, "ActionAfterRunning.RestartComputer",
           "10", "true")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramRunOptions  "sProgramGuid:%ProgramGuid%" "sActionAfterRunning:%ActionAfterRunning%" "sDeferTimeforRestartInMinutes:%DeferTimeforRestartInMinutes%" "sForceRunningApplicationToCloseOnRestart:%ForceRunningApplicationToCloseOnRestart%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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

