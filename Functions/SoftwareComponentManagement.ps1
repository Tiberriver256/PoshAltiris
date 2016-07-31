
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

