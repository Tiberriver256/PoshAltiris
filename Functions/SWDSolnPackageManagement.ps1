
Function Add-SWDProgramToPackage {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sProgramGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
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


Function New-SWDPackageBasic {

<#
.SYNOPSIS
    

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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


Function New-SWDPackageDetail {

<#
.SYNOPSIS
    

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sPackageDescription
     

.PARAMETER sPackagePublisher
     

.PARAMETER sPackageVersion
     

.PARAMETER sPackageLanguage
     

.PARAMETER purgeAfterDurationInMinutes
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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


Function Get-SWDPackageByGuid {

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


Function Set-SWDPackageBasic {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDPackageDetail {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sPackageName
     

.PARAMETER sPackageLocation
     

.PARAMETER sPackageDirectory
     

.PARAMETER sPackageDescription
     

.PARAMETER sPackagePublisher
     

.PARAMETER sPackageVersion
     

.PARAMETER sPackageLanguage
     

.PARAMETER purgeAfterDurationInMinutes
     

.PARAMETER sParentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDPackageAdvancedOptions {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER sAgentDisplayName
     

.PARAMETER sAgentDisplayDescription
     

.PARAMETER bEnableVerboseEvents
     

.PARAMETER sAlternateDownloadDestinationLocation
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayName,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayDescription,
			[Parameter(Mandatory=$true)]
			[bool]$bEnableVerboseEvents,
			[Parameter(Mandatory=$true)]
			[string]$sAlternateDownloadDestinationLocation,
            [Parameter(Mandatory=$true)]
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


Function Set-SWDPackageServerOptions {

<#
.SYNOPSIS
    

.PARAMETER sPackageGuid
     

.PARAMETER bAllOrSpecificPackageServers
     

.PARAMETER sPackageServerGuids
     

.PARAMETER sLocationOnPackageServer
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bAllOrSpecificPackageServers,
			[Parameter(Mandatory=$true)]
			[string]$sPackageServerGuids,
			[Parameter(Mandatory=$true)]
			[string]$sLocationOnPackageServer,
            [Parameter(Mandatory=$true)]
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


Function Update-SWDDistributionPoints {

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


Function AddProgramToPackage {

<#
.SYNOPSIS
    Adds a Program Item to a Package. 

.PARAMETER sPackageGuid
    The Package to assign a program to. 

.PARAMETER sProgramGuid
    The Program to assign. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.AddProgramToPackage(packageObject.Guid, programObject.Guid);
CopyVBScript
result = packageManagement.AddProgramToPackage(packageObject.Guid, programObject.Guid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:AddProgramToPackage "sPackageGuid:%PackageGuid%" "sProgramGuid:%ProgramGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    This ASDK method will create a basic PackageEx item. Like ItemDetails struct used in ItemManagementLib, PackageExDetails would be a struct which would be specific to PackageExDetails and would give the details about the same. 

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package. 

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL. 

.PARAMETER sParentFolderGuid
    Parent folder guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
SWDSolnPackageDetails packageObject = m_proxy.CreatePackageExBasic( "Package Basic",  @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
set packageObject = packageManagement.CreatePackageExBasic( "Package Basic", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", SWDWindowsFolderGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:CreatePackageExBasic "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%" "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    This ASDK method will be used to set detailed options of a PackageEx item. Like ItemDetails struct used in ItemManagementLib, PackageExDetails would be a struct which would be specific to PackageExDetails and would give the details about the same. 

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package.  

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL. 

.PARAMETER sPackageDescription
    Description of the package.  

.PARAMETER sPackagePublisher
    Publisher of the package. 

.PARAMETER sPackageVersion
    Version of the Package. 

.PARAMETER sPackageLanguage
    Language for which the package is designed.  

.PARAMETER purgeAfterDurationInMinutes
    Number in minutes before package files to be deleted from the client computer, if they are not referenced by an active advertisement. 

.PARAMETER sParentFolderGuid
    Parent folder Guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
SWDSolnPackageDetails packageObject = m_proxy.CreatePackageExDetail("Package Detail",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK", "publisher joe", "1.2.3.4.5.6", "English",10,SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
set packageObject = packageManagement.CreatePackageExDetail("Package Detail","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK", "publisher joe", "1.2.3.4.5.6", "English",10,SWDWindowsFolderGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:CreatePackageExDetail "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%" "sPackageDescription:%PackageDescription%" "sPackagePublisher:%PackagePublisher%" "sPackageVersion:%PackageVersion%" "sPackageLanguage:%PackageLanguage%" "PurgeAfterDurationInMinutes:%PurgeAfterDurationInMinutes%" "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    This ASDKMethod will give the details about a PackageEx filtered out by Guid. 

.PARAMETER sPackageGuid
    Guid of the package whose details are to be fetched. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
SWDSolnPackageDetails packageObject = m_proxy.GetPackageExByGuid(packageObject.Guid);
CopyVBScript
set packageObject = packageManagement.GetPackageExByGuid(packageObject.Guid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:GetPackageExByGuid "sPackageGuid:%PackageGuid%"
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

<#
.SYNOPSIS
    This ASDK method will be modify the options of a PackageEx item. 

.PARAMETER sPackageGuid
    Guid of the Package to be Modified.  

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package. 

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL 

.PARAMETER sParentFolderGuid
    Parent folder guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
bool result = m_proxy.ModifyPackageExBasic(packageObject.Guid,"New Name from ModifyPackageExBasic", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
result = packageManagement.ModifyPackageExBasic(packageObject.Guid, "New Name from ModifyPackageExBasic", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",SWDWindowsFolderGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:ModifyPackageExBasic "sPackageGuid:%PackageGuid%" "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%"  "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    This ASDK method will be modify the detailed options of a PackageEx item. 

.PARAMETER sPackageGuid
    Guid of the Package to be Modified. 

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package.  

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL. 

.PARAMETER sPackageDescription
    Description of the package.  

.PARAMETER sPackagePublisher
    Publisher of the package. 

.PARAMETER sPackageVersion
    Version of the Package 

.PARAMETER sPackageLanguage
    Language for which the package is designed. 

.PARAMETER purgeAfterDurationInMinutes
    Number in minutes before package files to be deleted from the client computer, if they are not referenced by an active advertisement. 

.PARAMETER sParentFolderGuid
    Parent folder Guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
bool result = m_proxy.ModifyPackageExDetail(packageObject.Guid,"New Name from ModifyPackageExDetail",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK","publisher joe","1.2.3.4.5.6", "English",10, SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
result = packageManagement.ModifyPackageExDetail(packageObject.Guid,"New Name from ModifyPackageExDetail","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK","publisher joe","1.2.3.4.5.6", "English",10, SWDWindowsFolderGuid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:ModifyPackageExDetail "sPackageGuid:%PackageGuid%" "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%" "sPackageDescription:%PackageDescription%" "sPackagePublisher:%PackagePublisher%" "sPackageVersion:%PackageVersion%" "sPackageLanguage:%PackageLanguage%" "PurgeAfterDurationInMinutes:%PurgeAfterDurationInMinutes%" "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    This ASDKMethod will set the Advanced Agent options for PackageEx. 

.PARAMETER sPackageGuid
    Guid of the package whose advanced agent options are to be modified. 

.PARAMETER sAgentDisplayName
    Display name of the Agent. 

.PARAMETER sAgentDisplayDescription
    Description of the Agent. 

.PARAMETER bEnableVerboseEvents
    True if package will send message to notification server else false. 

.PARAMETER sAlternateDownloadDestinationLocation
    Location where files should be downloaded on client computer.Leave blank for default location. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetPackageExAdvancedOptions(packageObject.Guid, "Agent Display Name", "Agent Display Description", true, @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld");
CopyVBScript
result = packageManagement.SetPackageExAdvancedOptions(packageObject.Guid, "Agent Display Name", "Agent Display Description", true, "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetPackageExAdvancedOptions "sPackageGuid:%PackageGuid%" "sAgentDisplayName:%AgentDisplayName%" "sAgentDisplayDescription:%AgentDisplayDescription%" "bEnableVerboseEvents:%EnableVerboseEvents%" "sAlternateDownloadDestinationLocation:%AlternateDownloadDestinationLocation%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayName,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayDescription,
			[Parameter(Mandatory=$true)]
			[bool]$bEnableVerboseEvents,
			[Parameter(Mandatory=$true)]
			[string]$sAlternateDownloadDestinationLocation,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    This ASDKMethod will set the Package Server options for PackageEx. 

.PARAMETER sPackageGuid
    Guid of the package whose package server options are to modified. 

.PARAMETER bAllOrSpecificPackageServers
    True if package files are to be replicated to all package servers else false. 

.PARAMETER sPackageServerGuids
    Comma seperated list of package server guids. 

.PARAMETER sLocationOnPackageServer
    Location of the item on the Package server. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetPackageExPackageServerOptions( packageObject.Guid, true, PackageServerGuids, @"C:\Program Files\Altiris\Altiris Agent\Package Server Agent");
CopyVBScript
result = packageManagement.SetPackageExPackageServerOptions( packageObject.Guid, true, PackageServerGuids, "C:\Program Files\Altiris\Altiris Agent\Package Server Agent")
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:SetPackageExPackageServerOptions "sPackageGuid:%PackageGuid%"         "bAllOrSpecificPackageServers:%AllOrSpecificPackageServers%" "sPackageServerGuids:%PackageServerGuids%" "sLocationOnPackageServer:%LocationOnPackageServer%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bAllOrSpecificPackageServers,
			[Parameter(Mandatory=$true)]
			[string]$sPackageServerGuids,
			[Parameter(Mandatory=$true)]
			[string]$sLocationOnPackageServer,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    This ASDKMethod will update the distribution points for PackageEx. 

.PARAMETER sPackageGuid
    Guid of the package whose distribution points are to be updated. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.UpdateDistributionPoints(packageObject.Guid);
CopyVBScript
result = packageManagement.UpdateDistributionPoints(packageObject.Guid)
Copy? 
AltirisASDKSoftwareDelivery.exe cmd:UpdateDistributionPoints "sPackageGuid:%PackageGuid%"
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

