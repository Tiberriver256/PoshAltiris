
Function Add-AssociationToSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER AssociatedResourceGuid
     

.PARAMETER AssociationType
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$AssociatedResourceGuid,
			[Parameter(Mandatory=$true)]
			[string]$AssociationType,
            [Parameter(Mandatory=$true)]
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


Function Add-CommandLineToSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER CommandLineGuid
     

.PARAMETER SetAsDefault
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
			[Parameter(Mandatory=$true)]
			[bool]$SetAsDefault,
            [Parameter(Mandatory=$true)]
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


Function Add-PackageToSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER PackageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$PackageGuid,
            [Parameter(Mandatory=$true)]
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


Function Add-RulesToSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER ApplicabilityRuleGuid
     

.PARAMETER DetectionRuleGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$ApplicabilityRuleGuid,
			[Parameter(Mandatory=$true)]
			[guid]$DetectionRuleGuid,
            [Parameter(Mandatory=$true)]
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


Function New-ServicePack {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER Version
     

.PARAMETER Company
     

.PARAMETER Product
     

.PARAMETER ReleaseDate
     

.PARAMETER InformationUrl
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[string]$ReleaseDate,
			[Parameter(Mandatory=$true)]
			[string]$InformationUrl,
            [Parameter(Mandatory=$true)]
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


Function New-SoftwareRelease {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER Version
     

.PARAMETER Company
     

.PARAMETER Product
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
            [Parameter(Mandatory=$true)]
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


Function New-SoftwareUpdate {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER Version
     

.PARAMETER Company
     

.PARAMETER Product
     

.PARAMETER SoftwareToUpdate
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[string]$SoftwareToUpdate,
            [Parameter(Mandatory=$true)]
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


Function Get-DetailedExport {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER DestinationFileName
     

.PARAMETER Options
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$DestinationFileName,
			[Parameter(Mandatory=$true)]
			[string]$Options,
            [Parameter(Mandatory=$true)]
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


Function Get-DetailedImport {

<#
.SYNOPSIS
    

.PARAMETER SourceFile
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$SourceFile,
            [Parameter(Mandatory=$true)]
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


Function Get-AssociatedResources {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
            [Parameter(Mandatory=$true)]
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


Function Get-SoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER componentGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$componentGuid,
            [Parameter(Mandatory=$true)]
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


Function Import-SoftwareRelease {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER SourceType
     

.PARAMETER PackageLocation
     

.PARAMETER PackageFolder
     

.PARAMETER InstallationFile
     

.PARAMETER Version
     

.PARAMETER Company
     

.PARAMETER Product
     

.PARAMETER MergeAction
     

.PARAMETER ReleaseMergeTo
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[int]$SourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFile,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[int]$MergeAction,
			[Parameter(Mandatory=$true)]
			[guid]$ReleaseMergeTo,
            [Parameter(Mandatory=$true)]
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


Function Remove-AssociationFromSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER AssociatedResourceGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$AssociatedResourceGuid,
            [Parameter(Mandatory=$true)]
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


Function Remove-CommandLineFromSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER CommandLineGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
            [Parameter(Mandatory=$true)]
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


Function Remove-PackageFromSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER PackageGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
            [Parameter(Mandatory=$true)]
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


Function Remove-RulesFromSoftwareComponent {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER RuleGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$RuleGuid,
            [Parameter(Mandatory=$true)]
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


Function Resolve-DuplicatedSoftware {

<#
.SYNOPSIS
    

.PARAMETER MergeTo
     

.PARAMETER ToBeMergeTo
     

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER Version
     

.PARAMETER Company
     

.PARAMETER Product
     

.PARAMETER Packages
     

.PARAMETER CmdLines
     

.PARAMETER ApplicabilityRule
     

.PARAMETER DetectionRule
     

.PARAMETER Associations
     

.PARAMETER Files
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$MergeTo,
			[Parameter(Mandatory=$true)]
			[guid]$ToBeMergeTo,
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[guid]$Company,
			[Parameter(Mandatory=$true)]
			[guid]$Product,
			[Parameter(Mandatory=$true)]
			[string]$Packages,
			[Parameter(Mandatory=$true)]
			[string]$CmdLines,
			[Parameter(Mandatory=$true)]
			[string]$ApplicabilityRule,
			[Parameter(Mandatory=$true)]
			[string]$DetectionRule,
			[Parameter(Mandatory=$true)]
			[string]$Associations,
			[Parameter(Mandatory=$true)]
			[string]$Files,
            [Parameter(Mandatory=$true)]
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


Function Set-SoftwareComponentProperty {

<#
.SYNOPSIS
    

.PARAMETER ComponentGuid
     

.PARAMETER PropertyName
     

.PARAMETER PropertyValue
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$PropertyValue,
            [Parameter(Mandatory=$true)]
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


Function AddAssociationToSoftwareComponent {

<#
.SYNOPSIS
    Associate an NS object with a software component. 

.PARAMETER ComponentGuid
    GUID of the software component 

.PARAMETER AssociatedResourceGuid
    GUID of the resource object that is to be associated with the Software Component 

.PARAMETER AssociationType
    Type of association. The following associations are allowed: CONTAINS, DEPENDSON, SUPERCEDES, UPDATES, CONFLICTS, APPLIES_TO_OS, APPLIES_TO_PLATFORM  

.EXAMPLE 
    Add new "Updates" association to Orca 4.5 software update 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddAssociationToSoftwareComponent(updateOrca45.Guid, releaseOrca30.Guid, "Updates");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddAssociationToSoftwareComponent(updateOrca45.Guid, releaseOrca30.Guid, "Updates")
Copy? 
set SMF=AltirisASDKSMF.exe
set ORCA45_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA30_GUID={8F0592BB-566F-4a5a-A3E6-4B35B5E6BBD6}
%SMF% cmd:AddAssociationToSoftwareComponent "ComponentGuid:%ORCA45_GUID%" "AssociatedResourceGuid:%ORCA30_GUID%" "AssociationType:Updates"
echo Association added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$AssociatedResourceGuid,
			[Parameter(Mandatory=$true)]
			[string]$AssociationType,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    associate software command line with software component 

.PARAMETER ComponentGuid
    Guid of existing software component resource 

.PARAMETER CommandLineGuid
    Guid of existing software command line resource 

.PARAMETER SetAsDefault
    set this command line as default commind line for specified software component resource 

.EXAMPLE 
    Add new command line to Orca software release 
CopyC#
SoftwareCommandLineManagementLib cmdlLib = new SoftwareCommandLineManagementLib();
SoftwareCommandLineDetails cmdLine = cmdlLib.CreateCommandLine("Install Orca 4.5", "This command line installs Orca 4.5",
    Guid.Empty, releaseOrca.Guid,
    "MSI Software Installation File", "Custom",
    true, "msiexec -i Orca45.msi",
    "0", "1,2,3" );
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddCommandLineToSoftwareComponent(releaseOrca.Guid, cmdLine.Guid, true);
CopyVBScript
set cmdlLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
set cmdLine = cmdlLib.CreateCommandLine("Install Orca 4.5", "This command line installs Orca 4.5", _
    "{00000000-0000-0000-0000-000000000000}", "{D321F91A-50FF-4832-930D-F0849ED75605}", _
    "MSI Software Installation File", "Custom", _
    true, "msiexec -i Orca45.msi", _
    "0", "1,2,3" )
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddCommandLineToSoftwareComponent(releaseOrca.Guid, cmdLine.Guid, True)
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:AddCommandLineToSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "CommandLineGuid:%ORCA_4_5_GUID%" "SetAsDefault:true"
echo Command line added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
			[Parameter(Mandatory=$true)]
			[bool]$SetAsDefault,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    associate software package with software component 

.PARAMETER ComponentGuid
    Guid of existing software component resource. 

.PARAMETER PackageGuid
    Guid of existing software package resource. 

.EXAMPLE 
    Add Orca 4.5 package to Orca software release 
CopyC#
SoftwarePackageManagementLib packageLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails detailsOrca45 = packageLib.CreatePackage("Orca 4.5 package", "This package contains Orca 4.5",
    Guid.Empty, 2,
    @"c:\packages\Orca4.5", null,
    "Orca45.msi", true
    );
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddPackageToSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid);
CopyVBScript
set packageLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set detailsOrca45 = packageLib.CreatePackage("Orca 4.5 package", "This package contains Orca 4.5", _
    "{00000000-0000-0000-0000-000000000000}", 2, _
    "c:\packages\Orca4.5", null, _
    "Orca45.msi", true)
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddPackageToSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:AddPackageToSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "PackageGuid:%ORCA_4_5_GUID%"
echo Package added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$PackageGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Add Applicability and Detection rules to software component 

.PARAMETER ComponentGuid
    Guid of existing software component resource. 

.PARAMETER ApplicabilityRuleGuid
    Applicability rule guid (optional). The empty guid {00000000-0000-0000-0000-000000000000} can be specified. 

.PARAMETER DetectionRuleGuid
    Detection rule guid (optional). The empty guid {00000000-0000-0000-0000-000000000000} can be specified. 

.EXAMPLE 
    Add new detection rule 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddRulesToSoftwareComponent(releaseOrca.Guid, Guid.Empty, ruleDetection.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddRulesToSoftwareComponent(releaseOrca.Guid, "{00000000-0000-0000-0000-000000000000}", ruleDetection.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set APP_RULEGUID={ecd6267c-0b86-4cd3-8eae-82e8502ff2a3}
set RULE_DETECTION={8F0592BB-566F-4a5a-A3E6-4B35B5E6BBD6}
%SMF% cmd:AddRulesToSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "ApplicabilityRuleGuid:%APP_RULEGUID%" "DetectionRuleGuid:%RULE_DETECTION%"
echo Rule added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$ApplicabilityRuleGuid,
			[Parameter(Mandatory=$true)]
			[guid]$DetectionRuleGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Create new software component. 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description 

.PARAMETER Version
    Version 

.PARAMETER Company
    Name of company or Guid of Company resource 

.PARAMETER Product
    Name of product or Guid of Product resource 

.PARAMETER ReleaseDate
    Release date of service pack 

.PARAMETER InformationUrl
    Information URL 

.EXAMPLE 
    Create a new service pack "Install Orca 3.0" 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.CreateServicePack("Test Product SP1", "This component contains Test Product SP1",
    "1.1.0", "Test Company", "Test Product",
    "11/08/2011", "http://www.symantec.com/TestProduct/SP1");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.CreateServicePack("Test Product SP1", "This component contains Test Product SP1", _
    "1.1.0", "Test Company", "Test Product", _
    "11/08/2011", "http://www.symantec.com/TestProduct/SP1")
Copy? 
set SMF=AltirisASDKSMF.exe
set SP_NAME=Test Product SP1
set SP_DESC=This component contains Test Product SP1
set SP_VER=1.1.0
set COMPANY_NAME=Test Company
set PRODUCT_NAME=Test Product
set INFO_URL=http://www.symantec.com/TestProduct/SP1
%SMF% cmd:CreateServicePack "Name:%SP_NAME%" "Description:%SP_DESC%" "Version:%SP_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%" "ReleaseDate:11/08/2011" "InformationUrl:%INFO_URL%"
echo Service Pack Created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[string]$ReleaseDate,
			[Parameter(Mandatory=$true)]
			[string]$InformationUrl,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Create new software release. 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description 

.PARAMETER Version
    version 

.PARAMETER Company
    Name of company or Guid of Company resource 

.PARAMETER Product
    Name of product or Guid of Product resource 

.EXAMPLE 
    Create a new release "Test Product" 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.CreateSoftwareRelease("Test Product", "This component contains Test Product",
    "1.0.0", "Test Company", "Test Product");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.CreateSoftwareRelease("Test Product", "This component contains Test Product", _
    "1.0.0", "Test Company", "Test Product")
Copy? 
set SMF=AltirisASDKSMF.exe
set SP_NAME=Test Product Release
set SP_DESC=This component contains Test Product
set SP_VER=1.0.0
set COMPANY_NAME=Test Company
set PRODUCT_NAME=Test Product
%SMF% cmd:CreateSoftwareRelease "Name:%SP_NAME%" "Description:%SP_DESC%" "Version:%SP_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%"
echo Software Releasse Created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Create new software update. 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description 

.PARAMETER Version
    version 

.PARAMETER Company
    Name of company or Guid of Company resource 

.PARAMETER Product
    Name of product or Guid of Product resource 

.PARAMETER SoftwareToUpdate
    Name of product or Guid of Product resource 

.EXAMPLE 
    Create a new software update "Test Product Update" 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.CreateSoftwareUpdate("Test Product Update", "This component contains update for Test Product",
    "1.1.1", "Test Company", "Test Product", "Test Product Release");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.CreateSoftwareUpdate("Test Product Update", "This component contains update for Test Product", _
    "1.1.1", "Test Company", "Test Product", "Test Product Release")
Copy? 
set SMF=AltirisASDKSMF.exe
set SP_NAME=Test Product Update
set SP_DESC=This component contains update for Test Product
set SP_VER=1.1.1
set COMPANY_NAME=Test Company
set PRODUCT_NAME=Test Product
set RELEASE_NAME=Test Product Release
%SMF% cmd:CreateSoftwareUpdate "Name:%SP_NAME%" "Description:%SP_DESC%" "Version:%SP_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%" "SoftwareToUpdate:%RELEASE_NAME%"
echo Software Update Created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[string]$SoftwareToUpdate,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Perform detailed export of software component. 

.PARAMETER ComponentGuid
    GUID of software component. 

.PARAMETER DestinationFileName
    Fully qualified path and file name to the destination file. 

.PARAMETER Options
    Comma separated list of options. The following options are available: ALL, ALL_EXCLUDING_SECURITY, ProductAndManufacturer, PackageInfo, FileInventory, DetectionRule, IncludeDependencies, IncludeDependentSoftware, IncludeUpdatesAndSPs, ExcludeSecurity, ExcludeDependentSoftwareOnly, ExcludeDependenciesOnly, IncludeApplicabilityRule, IncludeSupersededComponents, IncludeConflictWithComponents  

.EXAMPLE 
    Export Orca 3.0 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.DetailedExport(releaseOrca.Guid, @"c:\exports\orca.xml", "ALL");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.DetailedExport(releaseOrca.Guid, "c:\exports\orca.xml", "ALL")
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={63208F95-A5B2-4feb-BBB9-4DDF8D7055C3}
set FILE_LOCATION=c:\exports\orca.xml
%SMF% cmd:DetailedExport "ComponentGuid:%RELEASE_GUID%" "DestinationFileName:%FILE_LOCATION%" "Options:ALL"
echo Software exported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$DestinationFileName,
			[Parameter(Mandatory=$true)]
			[string]$Options,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Perform a detailed import of a software component 

.PARAMETER SourceFile
    Fully qualified path to source file. The source file can be created by a DetailExport through the NS Console or SMF ASDK API 

.EXAMPLE 
    Import Orca 3.0 from xml 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.DetailedImport(@"c:\exports\orca.xml");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.DetailedImport("c:\exports\orca.xml")
Copy? 
set SMF=AltirisASDKSMF.exe
set FILE_LOCATION=c:\exports\orca.xml
%SMF% cmd:DetailedImport "SourceFile:%FILE_LOCATION%"
echo Software imported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$SourceFile,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    return list of resources association with software component 

.PARAMETER ComponentGuid
    guid of existing software component 

.EXAMPLE 
    Get resources associated with a specific component. 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
string resourceString = managementLib.GetAssociatedResources(componentGuid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
resourceString = managementLib.GetAssociatedResources(componentGuid)
Copy? 
set SMF=AltirisASDKSMF.exe
set COMPONENT_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
%SMF% cmd:GetAssociatedResources "ComponentGuid:%COMPONENT_GUID%"
echo Resource association returned
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Method that returns an existing SoftwareComponent or its sub-classes SoftwareRelease and SoftwareUpdate. 

.PARAMETER componentGuid
    The GUID of the existing software component resource. 

.EXAMPLE 
    Get software component with GUID='e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6' 
CopyC#
SoftwareComponentManagementLib mangementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails componentDetails = mangementLib.GetSoftwareComponent( new Guid("e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6") );
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set componentDetails = mangementLib.GetSoftwareComponent( "{e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6}" )
Copy? 
set SMF=AltirisASDKSMF.exe
set COMPONENT_GUID={e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6}
%SMF% cmd:GetSoftwareComponent "componentGuid:%COMPONENT_GUID%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$componentGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Import new software release based on specified binaries. Related command line, package, inventory rule objects will be created automatically. 

.PARAMETER Name
    Name - if empty will be extracted from package 

.PARAMETER Description
    Description - if empty will be extracted from package 

.PARAMETER SourceType
    Type of package source. Following types are available: 1 - UNC, 2 - Local directory on notification server, 4 - URL (in that case package location should point on URL, and package folder should point on directroy there package located), 5 - Library  

.PARAMETER PackageLocation
    Package location (URL, UNC, local path depends on the type of package source (required)) 

.PARAMETER PackageFolder
    Package source folder if URL type of package source was specified, if different from URL package source was specified you can specify empty string in this parameter 

.PARAMETER InstallationFile
    Installation file, if empty will be selected by internal logic 

.PARAMETER Version
    Version - if empty will be extracted from package 

.PARAMETER Company
    Company name or guid of Company resource - if empty will be extracted from package 

.PARAMETER Product
    Product name or guid of Product resource - if empty will be extracted from package 

.PARAMETER MergeAction
    Merging action the case if SoftwareRelease with same keys is found. The following actions are available: 0 - create new software release 1 - merge with specified (in ReleaseMergeTo parameter) software release  

.PARAMETER ReleaseMergeTo
    Guid of existing software release, if specified, a new software release will merge with the existing software release 

.EXAMPLE 
    Import Orca 3.0 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.ImportSoftwareRelease("Orca 3.0", "Software releae resource for Orca 3.0",
    2, @"c:\packages\orca", null,
    "Orca30.msi", "3.0.1234",
    "Microsoft", "Orca", 0, Guid.Empty);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.ImportSoftwareRelease("Orca 3.0", "Software releae resource for Orca 3.0", _
    2, @"c:\packages\orca", null, _
    "Orca30.msi", "3.0.1234", _
    "Microsoft", "Orca", 0, Guid.Empty)
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_NAME=Orca 3.0
set RELEASE_DESC=Software release resource for Orca 3.0
set PKG_LOCATION=c:\packages\orca
set PKG_FOLDER=""
set INSTALL_FILE=Orca30.msi
set RELEASE_VER=3.0.1234
set COMPANY_NAME=Microsoft
set PRODUCT_NAME=Orca
set EMPTY_GUID={00000000-0000-0000-0000-000000000000}
%SMF% cmd:ImportSoftwareRelease "Name:%RELEASE_NAME%" "Description:%RELEASE_DESC%" "SourceType:2" "PackageLocation:%PKG_LOCATION%" "PackageFolder:%PKG_FOLDER%" "InstallationFile:%INSTALL_FILE%" "Version:%RELEASE_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%" "MergeAction:0" "ReleaseMergeTo:%EMPTY_GUID%"
echo Software Release imported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[int]$SourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFile,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[int]$MergeAction,
			[Parameter(Mandatory=$true)]
			[guid]$ReleaseMergeTo,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Remove an association between a resource and a software component. 

.PARAMETER ComponentGuid
    GUID of the software component 

.PARAMETER AssociatedResourceGuid
    GUID of the associated resource 

.EXAMPLE 
    Remove detection rule 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemoveAssociationFromSoftwareComponent(updateOrca45.Guid, orca30.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemoveAssociationFromSoftwareComponent(updateOrca45.Guid, orca30.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set UPDATE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set RELEASE_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemoveAssociationFromSoftwareComponent "ComponentGuid:%UPDATE_GUID%" "AssociatedResourceGuid:%RELEASE_GUID%"
echo Association removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$AssociatedResourceGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Remove a command line from a software component. This method checks if the command line is used by any other MD policies. 

.PARAMETER ComponentGuid
    GUID of a software component 

.PARAMETER CommandLineGuid
    GUID of a software command line 

.EXAMPLE 
    Remove command line from Orca software release 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemoveCommandLineFromSoftwareComponent(releaseOrca.Guid, cmdLineOrca45.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemoveCommandLineFromSoftwareComponent(releaseOrca.Guid, cmdLineOrca45.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemoveCommandLineFromSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "CommandLineGuid:%ORCA_4_5_GUID%"
echo Command line removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Remove package from software component. Method checks if package is used by MD policy. 

.PARAMETER ComponentGuid
    GUID of a software component 

.PARAMETER PackageGuid
    GUID of a software package 

.EXAMPLE 
    Remove Orca 4.5 package from Orca release 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemovePackageFromSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemovePackageFromSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemovePackageFromSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "PackageGuid:%ORCA_4_5_GUID%"
echo Package removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Remove an inventory rule from a software component. This method checks whether the software component is used by other MD policies. 

.PARAMETER ComponentGuid
    GUID of software component 

.PARAMETER RuleGuid
    GUID of inventory rule 

.EXAMPLE 
    Remove detection rule 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemoveRulesFromSoftwareComponent(releaseOrca.Guid, detectionRule.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemoveRulesFromSoftwareComponent(releaseOrca.Guid, detectionRule.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set DETECTION_RULE_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemoveRulesFromSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "RuleGuid:%DETECTION_RULE_GUID%"
echo Detection rule removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$RuleGuid,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Resolve duplicate software resources. This method merges two duplicate software resources into single one and deletes the duplicate software component. 

.PARAMETER MergeTo
    GUID of duplicated resource to be merged. This software component will be deleted after merging complete. 

.PARAMETER ToBeMergeTo
    Guid of Software resource to be merged to. 

.PARAMETER Name
    Name of merged software component. If not specified then the name of ToBeMergeTo resource will be used. 

.PARAMETER Description
    Description of merged software component. If not specified then description of ToBeMergeTo resource will be used. 

.PARAMETER Version
    Version of merged software component. If not specifieid then version of ToBeMergeTo resource will be used. 

.PARAMETER Company
    Company associated with resulting software component. If not specified company used by ToBeMergeTo resource will be used. 

.PARAMETER Product
    Product associated with resulting software component. If not specified product used by ToBeMergeTo resource will be used. 

.PARAMETER Packages
    Packages that will be associated with resulting software component. Following options are possible: Comma separated list of package guids. Each guid should be used by ToMerge or ToBeMerge to resource. ALL - packages from both software components will be assigned on resulting software component. MERGE_TO - packages from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - packages from ToBeMergeTo software component will be associated with resulting software component.  

.PARAMETER CmdLines
    Command lines that will be associated with resulting software companent. Following options are possible: Comma separated list of command line guids. Each guid should be used by ToMerge or ToBeMerge to resource. ALL - command lines from both software components will be assigned on resulting software component. MERGE_TO - command lines from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - command lines from ToBeMergeTo software component will be associated with resulting software component.  

.PARAMETER ApplicabilityRule
    Applicability rule that will be assigned on resulting software component. Following options are possible: MERGE_TO - rule used by MergeTo resource will be used for resulting software component TO_MERGE_TO - rule used by ToBeMergeTo resource will be used for resulting software component  

.PARAMETER DetectionRule
    Detection rule that will be assigned on resulting software component. Following options are possible: MERGE_TO - rule used by MergeTo resource will be used for resulting software component TO_MERGE_TO - rule used by ToBeMergeTo resource will be used for resulting software component  

.PARAMETER Associations
    List of associations that will be assigned on resulting software component. Following options are available: ALL - associations from both software components will be assigned on resulting software component. MERGE_TO - associations from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - associations from ToBeMergeTo software component will be associated with resulting software component. XML with list of associations that will be assigned on resulting software component. The format of XML is same as returned by by GetAssociatedResources call. Usually you need to call GetAssociatedResources, remove some "association" nodes from returned XML and pass outer xml string into this parameter.  

.PARAMETER Files
    List of file resources that will be assigned on resulting software component. Following options are possible: ALL - associations from both software components will be assigned on resulting software component. MERGE_TO - associations from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - associations from ToBeMergeTo software component will be associated with resulting software component. Comma separated list of guids of File resources which are associated with software component. The list can be obtained from Files field of SoftwareComponentDetails structure. 

.EXAMPLE 
    Merge duplicated resources into one single resoure. This sample demonstrates merging of two duplicate service packs. 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails mergedResourceDetails = managementLib.ResolveDuplicatedSoftware(
    servicePack1Details.Guid, servicePack2Details.Guid,
    releaseName, releaseDescription, releaseVersion,
    Guid.Empty, Guid.Empty,
    "ALL", "ALL", "TO_MERGE_TO", "TO_MERGE_TO",
    "ALL",  "ALL");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set mergedResourceDetails = managementLib.ResolveDuplicatedSoftware( _
    servicePack1Details.Guid, servicePack2Details.Guid, _
    releaseName, releaseDescription, releaseVersion, _
    emptyGuid, emptyGuid, _
    "ALL", "ALL", "TO_MERGE_TO", "TO_MERGE_TO", _
    "ALL",  "ALL")
Copy? 
set SMF=AltirisASDKSMF.exe
set EMPTY_GUID={00000000-0000-0000-0000-000000000000}
set SP1_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set SP2_GUID={1c878735-6f3c-420b-ac8f-47772298e805}
set REL_NAME=Updated Service Pack
set REL_DESC=This is an updated service pack.
set REL_VERS=5.1.45
%SMF% cmd:ResolveDuplicatedSoftware "MergeTo:%SP1_GUID%" "ToBeMergeTo:%SP2_GUID%" "Name:%REL_NAME%" "Description:%REL_DESC%" "Version:%REL_VERS%" "Company:%EMPTY_GUID%" "Product:%EMPTY_GUID%" "Packages:ALL" "CmdLines:ALL" "ApplicabilityRule:TO_MERGE_TO" "DetectionRule:TO_MERGE_TO" "Associations:ALL" "Files:ALL"
echo Duplicate resources have been merged.
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$MergeTo,
			[Parameter(Mandatory=$true)]
			[guid]$ToBeMergeTo,
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[guid]$Company,
			[Parameter(Mandatory=$true)]
			[guid]$Product,
			[Parameter(Mandatory=$true)]
			[string]$Packages,
			[Parameter(Mandatory=$true)]
			[string]$CmdLines,
			[Parameter(Mandatory=$true)]
			[string]$ApplicabilityRule,
			[Parameter(Mandatory=$true)]
			[string]$DetectionRule,
			[Parameter(Mandatory=$true)]
			[string]$Associations,
			[Parameter(Mandatory=$true)]
			[string]$Files,
            [Parameter(Mandatory=$true)]
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

<#
.SYNOPSIS
    Set any software component property. 

.PARAMETER ComponentGuid
    GUID of the software component 

.PARAMETER PropertyName
    name of property. Valid properties are: Name, Description, Version, Company, Product, URL, ReleaseDate  

.PARAMETER PropertyValue
    The PropertyValue is passed as a string, the appropriate conversion will be performed 

.EXAMPLE 
    Change name of Orca 4.5 release 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.SetSoftwareComponentProperty(updateOrca45.Guid, "Name", "Orca 4.5 - New");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.SetSoftwareComponentProperty(updateOrca45.Guid, "Name", "Orca 4.5 - New")
Copy? 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
%SMF% cmd:SetSoftwareComponentProperty "ComponentGuid:%RELEASE_GUID%" "PropertyName:Name" "PropertyValue:Orca 4.5 - New"
echo Name changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$PropertyValue,
            [Parameter(Mandatory=$true)]
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

