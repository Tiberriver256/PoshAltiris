
Function AddExclusions {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.PARAMETER itemGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/AddExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddInclusions {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.PARAMETER itemGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/AddInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceCollection {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER folderGuid
     

.PARAMETER autoUpdate
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[guid]$folderGuid,
			[Parameter(Mandatory=$true)]
			[bool]$autoUpdate,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			folderGuid = $folderGuid
 			autoUpdate = $autoUpdate

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/CreateResourceCollection"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetCollectionMembership {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetCollectionMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetExclusions {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.PARAMETER type
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$type,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetInclusions {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.PARAMETER type
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$type,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveExclusions {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.PARAMETER itemGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/RemoveExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveInclusions {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.PARAMETER itemGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/RemoveInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetCollectionDataSourceToRawSqlQuery {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuid
     

.PARAMETER sqlQuery
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$sqlQuery,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			sqlQuery = $sqlQuery

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/SetCollectionDataSourceToRawSqlQuery"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateCollections {

<#
.SYNOPSIS
    

.PARAMETER collectionItemGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuids = $collectionItemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/UpdateCollections"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

