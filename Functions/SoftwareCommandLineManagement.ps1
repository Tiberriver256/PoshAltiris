
Function New-CommandLine {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER SoftwarePackageGuid
     

.PARAMETER SoftwareComponentGuid
     

.PARAMETER InstallationFileType
     

.PARAMETER CommandType
     

.PARAMETER Default
     

.PARAMETER CommandLine
     

.PARAMETER SuccessCodes
     

.PARAMETER ErrorCodes
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER CommandLineGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER commandLineGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER CommandLineGuid
     

.PARAMETER PropertyName
     

.PARAMETER PropertyValue
     

.EXAMPLE 
     

.NOTES
    
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

