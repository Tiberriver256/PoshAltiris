
Function New-SWProduct {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER CompanyName
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$CompanyName,
            [Parameter(Mandatory=$true)]
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


Function Get-SWProductComponents {

<#
.SYNOPSIS
    

.PARAMETER SoftwareProductGuid
     

.PARAMETER ComponentType
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareProductGuid,
			[Parameter(Mandatory=$true)]
			[string]$ComponentType,
            [Parameter(Mandatory=$true)]
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


Function Get-SWProduct {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER CompanyNameOrGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$CompanyNameOrGuid,
            [Parameter(Mandatory=$true)]
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

