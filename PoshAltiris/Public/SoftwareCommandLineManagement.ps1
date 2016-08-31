
Function New-CommandLine {

<#
.SYNOPSIS
    Create new command line item 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description (can be empty) 

.PARAMETER SoftwarePackageGuid
    GUID of package if command line requires package (you can use the empty guid {00000000-0000-0000-0000-000000000000} if SoftwareComponentGuid is specified) 

.PARAMETER SoftwareComponentGuid
    GUID of software component which will be associated with command line (you can use the empty guid {00000000-0000-0000-0000-000000000000} if the Package guid is specified) 

.PARAMETER InstallationFileType
    Name of installation file type. Different installation file types have different types of command line. For example "MSI Software Installation File" has command line types Install, Uninstall, Repair, Custom. "EXE Software Installation File" has types Install, Uninstall, Custom, and so forth. If you don't want to specify the installation file type method just pass an empty string. The empty string will be considered as general 'other' type of installation file. Such type of installation file has three command line types: Custom, Install, Uninstall NOTE: Because the list of types can change there are no hardcoded list of available installation file types. To see which type are registered just open Command Line editor dialog in Notification Server console or call GetRegisterInstallationFileTypes method.  

.PARAMETER CommandType
    Command line type. Typical values are: Install Uninstall Repair Upgrade Custom NOTE: The list of available command line types is specific to the specified installation file type. If a command line type is unsupported by the specified installation file type, the method cause an exception. To see the exact command line types which are available for certain installation file types please open Command Line editor dialog in Notification Console or call GetCommandLineTypesByInstallationFileType method.  

.PARAMETER Default
    Set command line as default. Only command line with type different from "Custom" can be set as default. 

.PARAMETER CommandLine
    Command line itself. 

.PARAMETER SuccessCodes
    Comma separated list of success codes. 

.PARAMETER ErrorCodes
    Comma separated list of error codes. 

.EXAMPLE 
    Create a new command line named "Install Orca 3.0" 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
SoftwareCommandLineDetails details = managementLib.CreateCommandLine("Install Orca 3.0", "This command line installs Orca 3.0",
    Guid.Empty, guidSoftwareComponent,
    "MSI Software Installation File", "Custom",
    true, "msiexec -i Orca30.msi",
    "0", "1,2,3" );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
set cmdlineDetails = managementLib.CreateCommandLine("Install Orca 3.0", "This command line installs Orca 3.0", _
    "{00000000-0000-0000-0000-000000000000}", "{D321F91A-50FF-4832-930D-F0849ED75605}", _
    "MSI Software Installation File", "Custom", _
    true, "msiexec -i Orca30.msi", _
    "0", "1,2,3" )
Copy? 
set SMF=AltirisASDKSMF.exe
set CMDLINE_NAME=Install Orca 3.0
set CMDLINE_DESC=This command line installs Orca 3.0
set PACKAGE_GUID={00000000-0000-0000-0000-000000000000}
set SOFTWARE_GUID={D321F91A-50FF-4832-930D-F0849ED75605}
set SIF_TYPE=MSI Software Installation File
set CMDLINE_TYPE=Custom
set IS_DEFAULT=true
set COMMAND_LINE=msiexec -i Orca30.msi
set SUCCESS_CODES="0"
set ERROR_CODES="1,2,3"
%SMF% cmd:CreateCommandLine "Name:%CMDLINE_NAME%" "Description:%CMDLINE_DESC%" "SoftwarePackageGuid:%PACKAGE_GUID%" "SoftwareComponentGuid:%SOFTWARE_GUID%" "InstallationFileType:%SIF_TYPE%" "CommandType:%CMDLINE_TYPE%" "Default:%IS_DEFAULT%" "CommandLine:%COMMAND_LINE%" "SuccessCodes:%SUCCESS_CODES%" "ErrorCodes:%ERROR_CODES%"
echo Created Command Line
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[guid]$SoftwarePackageGuid,
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFileType,
			[Parameter(Mandatory=$true)]
			[string]$CommandType,
			[Parameter(Mandatory=$true)]
			[bool]$Default,
			[Parameter(Mandatory=$true)]
			[string]$CommandLine,
			[Parameter(Mandatory=$true)]
			[string]$SuccessCodes,
			[Parameter(Mandatory=$true)]
			[string]$ErrorCodes,
            [Parameter(Mandatory=$true)]
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


Function Remove-CommandLine {

<#
.SYNOPSIS
    Delete command line. The method checks whether the command line is used by other software release and/or MD policy and will return the appropriate errors. 

.PARAMETER CommandLineGuid
    Guid of SoftwareCommandLine resource object 

.EXAMPLE 
    Create a new command line named "Install Orca 3.0" 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
bool bResult = managementLib.DeleteCommandLine( guidCommandLine );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
bResult = managementLib.DeleteCommandLine( cmdlineDetails.Guid )
Copy? 
set SMF=AltirisASDKSMF.exe
set CMDLINE_GUID={D321F91A-50FF-4832-930D-F0849ED75605}
%SMF% cmd:DeleteCommandLine "CommandLineGuid:%CMDLINE_GUID%"
echo Command Line deleted
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
            [Parameter(Mandatory=$true)]
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


Function Get-CommandLine {

<#
.SYNOPSIS
    Method that returns an existing software command line resource. 

.PARAMETER commandLineGuid
    The GUID of the existing software command line resource. 

.EXAMPLE 
    Get software command line with GUID='00cf18d1-95f5-4772-b41f-f6629eb13d32' 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
SoftwareCommandLineDetails cmdDetails = managementLib.GetCommandLine( new Guid("00cf18d1-95f5-4772-b41f-f6629eb13d32") );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
set cmdDetails = managementLib.GetPackage( "{00cf18d1-95f5-4772-b41f-f6629eb13d32}" )
Copy? 
set SMF=AltirisASDKSMF.exe
set COMMANDLINE_GUID={00cf18d1-95f5-4772-b41f-f6629eb13d32}
%SMF% cmd:GetCommandLine "commandLineGuid:%COMMANDLINE_GUID%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
            [Parameter(Mandatory=$true)]
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


Function Set-CommandLineProperty {

<#
.SYNOPSIS
    Set software command line property. 

.PARAMETER CommandLineGuid
    GUID of software command line 

.PARAMETER PropertyName
    name of property. Valid properties are: Name, Description, CommandLine, CommandLineType, IsDefault, SuccessCodes, FailureCodes, PackageGuid  

.PARAMETER PropertyValue
    The property value is passed into the method as a string, appropriate conversion will then be performed on that string. The value CommandLineType should be a Guid, IsDefault is a bool value so it should be "true" or "false", and PackageGuid should be a Guid.  

.EXAMPLE 
    set failure codes for command line 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
bool bResult = managementLib.SetCommandLineProperty(cmdLineGuid, "FailureCodes", "1,2,3,4,5");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.SetCommandLineProperty(cmdLineGuid, "FailureCodes", "1,2,3,4,5")
Copy? 
set SMF=AltirisASDKSMF.exe
set CMDLINE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
%SMF% cmd:SetCommandLineProperty "CommandLineGuid:%CMDLINE_GUID%" "PropertyName:FailureCodes" "PropertyValue:1,2,3,4,5"
echo Failure Codes changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$PropertyValue,
            [Parameter(Mandatory=$true)]
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

