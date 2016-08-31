
Function Add-SWPackageFile {

<#
.SYNOPSIS
    Add file to software package

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER File
    File or folder to be added to package 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Add LicenseAgreement.txt to Orca package 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.AddFile(detailsOrca.Guid, @"c:\packages\LicenseAgreement.txt", "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.AddFile(detailsOrca.Guid, "c:\packages\LicenseAgreement.txt", "false")
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set FILE_LOCATION=c:\packages\LicenseAgreement.txt
%SMF% cmd:AddFile "PackageGuid:%PACKAGE_GUID%" "File:%FILE_LOCATION%" "IgnoreAttributes:False"
echo Package type changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$File,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
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


Function New-SWPackage {

<#
.SYNOPSIS
    This method creates new SoftwarePackageResource in Notification Server 

.PARAMETER Name
    Package name 

.PARAMETER Description
    Package description (empty string can be specified) 

.PARAMETER SoftwareResourceGuid
    GUID of software resource that will be associated with package. Empty guid (00000000-0000-0000-0000-000000000000) can be specified 

.PARAMETER PackageSourceType
    Type of package source. Available values are: 1-UNC, 2-LOCAL, 4-URL, 5-SOFTWARE LIBRARY  

.PARAMETER PackageLocation
    Package location (URL, UNC, local path depends on the type of package source). 

.PARAMETER PackageFolder
    Package source folder if URL type of package source is specified. If other type of package source is specified this parameter ignored and should be empty. 

.PARAMETER InstallationFile
    File used to generate command line. Can be empty. 

.PARAMETER AutoGenerateCommandLines
    Auto generate command lines for installation file. 

.EXAMPLE 
    Create a new package named "Orca 3.0 package" 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails detailsOrca = mangementLib.CreatePackage("Orca 3.0 package", "This package contains Orca 3.0",
    Guid.Empty, 2,
    @"c:\packages\Orca", null,
    "Orca30.msi", "true"
    );
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set detailsOrca = mangementLib.CreatePackage("Orca 3.0 package", "This package contains Orca 3.0",
    "{00000000-0000-0000-0000-000000000000}", 2
    "c:\packages\Orca", null,
    "Orca30.msi", "true"
    )
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_NAME=Orca 3.0 package
set PACKAGE_DESC=This package contains Orca 3.0
set RELEASE_GUID={00000000-0000-0000-0000-000000000000}
set SOURCE_TYPE=2
set LOCATION=c:\packages\Orca
set INSTALL_FILE=msiexec -i Orca30.msi
%SMF% cmd:CreatePackage "Name:%PACKAGE_NAME%" "Description:%PACKAGE_DESC%" "SoftwareResourceGuid:%RELEASE_GUID%" "PackageSourceType:%SOURCE_TYPE%" "PackageLocation:%LOCATION%" "InstallationFile:%INSTALL_FILE%" "AutoGenerateCommandLines:True"
echo Created Package
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[int]$PackageSourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFile,
			[Parameter(Mandatory=$true)]
			[bool]$AutoGenerateCommandLines,
            [Parameter(Mandatory=$true)]
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


Function Remove-SWPackage {

<#
.SYNOPSIS
    Delete package. The method checks if package used by any software release and/or policy and returns appropriate errors. 

.PARAMETER PackageGuid
    guid of existing package 

.EXAMPLE 
    Delete Orca 3.0 pacakge 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.DeletePackage(detailsOrca.Guid);
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.DeletePackage(detailsOrca.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
%SMF% cmd:DeletePackage "PackageGuid:%PACKAGE_GUID%"
echo Package deleted
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
            [Parameter(Mandatory=$true)]
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


Function Get-SWPackage {

<#
.SYNOPSIS
    Method that returns an existing software package resource. 

.PARAMETER packageGuid
    The GUID of the existing software package resource. 

.EXAMPLE 
    Get software package with GUID='a0d655b9-809a-4c86-ba9b-c1898fc4f59e' 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails componentDetails = mangementLib.GetPackage( new Guid("a0d655b9-809a-4c86-ba9b-c1898fc4f59e") );
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set packageDetails = mangementLib.GetPackage( "a0d655b9-809a-4c86-ba9b-c1898fc4f59e" )
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID="a0d655b9-809a-4c86-ba9b-c1898fc4f59e"
%SMF% cmd:GetPackage "Guid:%PACKAGE_GUID%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$packageGuid,
            [Parameter(Mandatory=$true)]
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


Function Remove-SWFile {

<#
.SYNOPSIS
    Remove file from software package

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER File
    File or folder to be added to package 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Remove LicenseAgreement.txt from Orca 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.RemoveFile(detailsOrca.Guid, @"LicenseAgreement.txt", "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.RemoveFile(detailsOrca.Guid, "LicenseAgreement.txt", "false")
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set FILE_LOCATION=LicenseAgreement.txt
%SMF% cmd:RemoveFile "PackageGuid:%PACKAGE_GUID%" "File:%FILE_LOCATION%" "IgnoreAttributes:False"
echo File added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$File,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
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


Function Set-SWPackageProperty {

<#
.SYNOPSIS
    Set any package property

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER PropertyName
    Propety name. Valid names are: Name, Description, InstallationFile  

.PARAMETER Value
    Propety value, value will be automatically converted from text representation into appropriate type (int, guid, enum, etc...) 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Change package name to "Test Package" 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.SetPackageProperty(detailsOrca.Guid, "Name", "Test Package", "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.SetPackageProperty(detailsOrca.Guid, "Name", "Test Package", "false")
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set PACKAGE_NAME=Test Package
%SMF% cmd:SetPackageProperty "PackageGuid:%PACKAGE_GUID%" "PropertyName:Name" "Value:%PACKAGE_NAME%" "IgnoreAttributes:False"
echo Package name changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$Value,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
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


Function Set-SWPackageServerSettings {

<#
.SYNOPSIS
    Specify package server properties for package

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER AssignmentType
    Type of package server assignment. Available values are: 0-All, 1-Individual, 2-Site  

.PARAMETER AutomaticSiteAssignment
    Automatically assign package to sites as required. Not valid with All and Individual assignment types 

.PARAMETER PackageServers
    Comma separated list of package servers or sites GUIDs. 

.PARAMETER PackageServerLocation
    Location where package files will be downloaded to on Package Servers 

.EXAMPLE 
    Assign package to All site servers 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.SetPackageServerSettings(detailsOrca.Guid, 0, "false", null, null);
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set details = mangementLib.SetPackageServerSettings(detailsOrca.Guid, 0, "false", null, null)
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
%SMF% cmd:SetPackageServerSettings "PackageGuid:%PACKAGE_GUID%" "AssignmentType:0" "AutomaticSiteAssignment:False"
echo Site Server settings changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[int]$AssignmentType,
			[Parameter(Mandatory=$true)]
			[string]$AutomaticSiteAssignment,
			[Parameter(Mandatory=$true)]
			[string]$PackageServers,
			[Parameter(Mandatory=$true)]
			[string]$PackageServerLocation,
            [Parameter(Mandatory=$true)]
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


Function Set-SWPackageSource {

<#
.SYNOPSIS
    Set any package source type and location

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER PackageSourceType
    Type of package source. Available values are: 1-UNC, 2-LOCAL, 4-URL, 5-LIBRARY  

.PARAMETER PackageLocation
    Package location (URL, UNC, local path depends on the type of package source) 

.PARAMETER PackageFolder
    Package source folder if URL type of package source is specified. If other type of package source is specified this parameter ignored and should be empty. 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Set package source type to Software Library 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.SetPackageSource(detailsOrca.Guid, 5, @"c:\packages\Orca", null, "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.SetPackageSource(detailsOrca.Guid, 5, "c:\packages\Orca", "", "false")
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set PACKAGE_LOCATION=c:\packages\Orca
set PACKAGE_FOLDER=
%SMF% cmd:SetPackageSource "PackageGuid:%PACKAGE_GUID%" "PackageSourceType:5" "PackageLocation:%PACKAGE_LOCATION%" "PackageFolder:%PACKAGE_FOLDER%" "IgnoreAttributes:False"
echo Package type changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[int]$PackageSourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
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


Function Update-SWDDistributionPoints {

<#
.SYNOPSIS
    Update package distribution points

.PARAMETER PackageGuid
    guid of existing package 

.EXAMPLE 
    Update distribution points for Orca 3.0 pacakge 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.UpdateDistributionPoints(detailsOrca.Guid);
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.UpdateDistributionPoints(detailsOrca.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
%SMF% cmd:UpdateDistributionPoints "PackageGuid:%PACKAGE_GUID%"
echo File removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$PackageGuid,
            [Parameter(Mandatory=$true)]
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


Function Confirm-SWSoftwareLibrary {

<#
.SYNOPSIS
    Validate Software Library. The method validates a software library configuration and an access to UNC

.EXAMPLE 
    Validate Software Library 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
string status = mangementLib.ValidateSoftwareLibrary();
CopyVBScript
set packageManagement = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
packageManagement.CreateLocalInstance()
validateRes = packageManagement.ValidateSoftwareLibrary()
Wscript.Echo validateRes

Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:ValidateSoftwareLibrary
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
            [Parameter(Mandatory=$true)]
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

