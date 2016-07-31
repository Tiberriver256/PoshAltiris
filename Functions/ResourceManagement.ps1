
Function New-ResourceAssociation {

<#
.SYNOPSIS
    

.PARAMETER resourceAssociationTypeGuid
     

.PARAMETER parentResourceGuid
     

.PARAMETER childResourceGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceAssociationTypeGuid,
			[Parameter(Mandatory=$true)]
			[guid]$parentResourceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$childResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceAssociationTypeGuid = $resourceAssociationTypeGuid
 			parentResourceGuid = $parentResourceGuid
 			childResourceGuid = $childResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/CreateResourceAssociation"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ComputerByNameAndDomain {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER domain
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$domain,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			domain = $domain

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetComputerByNameAndDomain"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-DataClassData {

<#
.SYNOPSIS
    

.PARAMETER dataClass
     

.PARAMETER resourceGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$dataClass,
			[Parameter(Mandatory=$true)]
			[guid]$resourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			dataClass = $dataClass
 			resourceGuid = $resourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetDataClassData"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ResourceByContext {

<#
.SYNOPSIS
    

.PARAMETER parameters
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$parameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parameters = $parameters

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetResourceByContext"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ResourceByName {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER resourceType
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$resourceType,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			resourceType = $resourceType

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetResourceByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-UserByUserIdAndDomain {

<#
.SYNOPSIS
    

.PARAMETER userId
     

.PARAMETER domain
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$userId,
			[Parameter(Mandatory=$true)]
			[string]$domain,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			userId = $userId
 			domain = $domain

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetUserByUserIdAndDomain"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Merge-Resource {

<#
.SYNOPSIS
    

.PARAMETER fromGuid
     

.PARAMETER toGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$fromGuid,
			[Parameter(Mandatory=$true)]
			[guid]$toGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			fromGuid = $fromGuid
 			toGuid = $toGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/MergeResource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Install-AltirisAgentToComputers {

<#
.SYNOPSIS
    

.PARAMETER computerNames
     

.PARAMETER showInStartMenu
     

.PARAMETER showInSysTray
     

.PARAMETER useProxy
     

.PARAMETER showInAddRemove
     

.PARAMETER overrideInstallPath
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$computerNames,
			[Parameter(Mandatory=$true)]
			[bool]$showInStartMenu,
			[Parameter(Mandatory=$true)]
			[bool]$showInSysTray,
			[Parameter(Mandatory=$true)]
			[bool]$useProxy,
			[Parameter(Mandatory=$true)]
			[bool]$showInAddRemove,
			[Parameter(Mandatory=$true)]
			[string]$overrideInstallPath,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			computerNames = $computerNames
 			showInStartMenu = $showInStartMenu
 			showInSysTray = $showInSysTray
 			useProxy = $useProxy
 			showInAddRemove = $showInAddRemove
 			overrideInstallPath = $overrideInstallPath

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/PushAltirisAgentToComputers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Install-AltirisAgentToComputersStrict {

<#
.SYNOPSIS
    

.PARAMETER computerNames
     

.PARAMETER showInStartMenu
     

.PARAMETER showInSysTray
     

.PARAMETER useProxy
     

.PARAMETER showInAddRemove
     

.PARAMETER overrideInstallPath
     

.PARAMETER userName
     

.PARAMETER password
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$computerNames,
			[Parameter(Mandatory=$true)]
			[bool]$showInStartMenu,
			[Parameter(Mandatory=$true)]
			[bool]$showInSysTray,
			[Parameter(Mandatory=$true)]
			[bool]$useProxy,
			[Parameter(Mandatory=$true)]
			[bool]$showInAddRemove,
			[Parameter(Mandatory=$true)]
			[string]$overrideInstallPath,
			[Parameter(Mandatory=$true)]
			[string]$userName,
			[Parameter(Mandatory=$true)]
			[string]$password,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			computerNames = $computerNames
 			showInStartMenu = $showInStartMenu
 			showInSysTray = $showInSysTray
 			useProxy = $useProxy
 			showInAddRemove = $showInAddRemove
 			overrideInstallPath = $overrideInstallPath
 			userName = $userName
 			password = $password

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/PushAltirisAgentToComputersStrict"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

