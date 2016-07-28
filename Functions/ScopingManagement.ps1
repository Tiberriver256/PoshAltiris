
Function AssignResourcesToOrganizationalGroup {

<#
.SYNOPSIS
    

.PARAMETER resourceItemGuids
     

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$resourceItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuids = $resourceItemGuids
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignResourcesToOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignResourceTargetsToPolicy {

<#
.SYNOPSIS
    

.PARAMETER policyItemGuid
     

.PARAMETER resourceTargetsGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$resourceTargetsGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid
 			resourceTargetsGuids = $resourceTargetsGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignResourceTargetsToPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignRoleToOrganizationalGroup {

<#
.SYNOPSIS
    

.PARAMETER roleGuid
     

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignRoleToOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateOrganizationalGroup {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER organizationalViewGuid
     

.PARAMETER parentGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalViewGuid,
			[Parameter(Mandatory=$true)]
			[guid]$parentGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			organizationalViewGuid = $organizationalViewGuid
 			parentGuid = $parentGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateOrganizationalView {

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


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceTarget {

<#
.SYNOPSIS
    

.PARAMETER configXml
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$configXml,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			configXml = $configXml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateResourceTarget"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteOrganizationalGroup {

<#
.SYNOPSIS
    

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/DeleteOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteOrganizationalView {

<#
.SYNOPSIS
    

.PARAMETER organizationalViewGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalViewGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalViewGuid = $organizationalViewGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/DeleteOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupDirectMembership {

<#
.SYNOPSIS
    

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupDirectMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupMembership {

<#
.SYNOPSIS
    

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupsFromOrganizationalView {

<#
.SYNOPSIS
    

.PARAMETER organizationalViewGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalViewGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalViewGuid = $organizationalViewGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupsFromOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalViews {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalViews"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalViewsFolderGuid {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalViewsFolderGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourcesTargetedByPolicy {

<#
.SYNOPSIS
    

.PARAMETER policyItemGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourcesTargetedByPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceTargetMembership {

<#
.SYNOPSIS
    

.PARAMETER resourceTargetGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceTargetGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceTargetGuid = $resourceTargetGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourceTargetMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceTargets {

<#
.SYNOPSIS
    

.PARAMETER policyItemGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourceTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsInOrganizationalGroup {

<#
.SYNOPSIS
    

.PARAMETER resourceItemGuid
     

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceItemGuid,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuid = $resourceItemGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/IsInOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsInOrganizationalGroupDirectMembership {

<#
.SYNOPSIS
    

.PARAMETER resourceItemGuid
     

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceItemGuid,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuid = $resourceItemGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/IsInOrganizationalGroupDirectMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MoveOrganizationalGroupWithinOrganizationalView {

<#
.SYNOPSIS
    

.PARAMETER organizationalGroupGuid
     

.PARAMETER parentGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
			[Parameter(Mandatory=$true)]
			[guid]$parentGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid
 			parentGroupGuid = $parentGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/MoveOrganizationalGroupWithinOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveResourcesFromOrganizationalGroup {

<#
.SYNOPSIS
    

.PARAMETER resourceItemGuids
     

.PARAMETER organizationalGroupGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$resourceItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuids = $resourceItemGuids
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/RemoveResourcesFromOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}
