
Function Add-SoftwareDeliveryItem {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.PARAMETER softwareOrTaskGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$softwareOrTaskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			softwareOrTaskGuid = $softwareOrTaskGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/AddDeliveryItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-SoftwareDeliveryPolicy {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER description
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/CreatePolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SoftwareDeliveryDefaultPolicySetting {

<#
.SYNOPSIS
    

.PARAMETER settingName
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$settingName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDefaultPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SoftwareDeliveryItems {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDeliveryItems"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SoftwareDeliveryItemSetting {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.PARAMETER deliveryItemGuid
     

.PARAMETER settingName
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$deliveryItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid
 			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDeliveryItemSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-SoftwareDeliveryPolicySetting {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.PARAMETER settingName
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-SoftwareDeliveryItem {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.PARAMETER deliveryItemGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$deliveryItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/RemoveDeliveryItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SoftwareDeliveryDefaultPolicySetting {

<#
.SYNOPSIS
    

.PARAMETER settingName
     

.PARAMETER value
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$settingName,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetDefaultPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SoftwareDeliveryItemSetting {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.PARAMETER deliveryItemGuid
     

.PARAMETER settingName
     

.PARAMETER value
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$deliveryItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid
 			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetDeliveryItemSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-SoftwareDeliveryPolicySetting {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.PARAMETER settingName
     

.PARAMETER value
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

