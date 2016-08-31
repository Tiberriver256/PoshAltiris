
Function Add-CollectionExclusions {

<#
.SYNOPSIS
    Add collections and/or resources to the set of excluded items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to add exclusions to. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to add to the collection's exclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.AddExclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.AddExclusions( collectionObject.Guid, guidList )
Copy? 
AltirisASDKNS.exe cmd:AddExclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Add-CollectionInclusions {

<#
.SYNOPSIS
    Add collections and/or resources to the set of included items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to add inclusions to. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to add to the collection's inclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.AddInclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.AddInclusions( collectionObject.Guid, guidList )
Copy? 
AltirisASDKNS.exe cmd:AddInclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function New-Collection {

<#
.SYNOPSIS
    Creates a resource collection for use as a filter on a TargetResource item. 

.PARAMETER name
    Name of the new resource collection. 

.PARAMETER description
    Description of the new resource collection. May be null. 

.PARAMETER folderGuid
    Guid of an existing folder that the new collection will be created under. 

.PARAMETER autoUpdate
    True if the collection should be automatically updated. False if the collection should be manually updated. 

.EXAMPLE 
    CopyC#
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails collectionObject = m_proxy.CreateResourceCollection("newCollectionName", "This is my new collection", myCollectionFolderGuid, true);
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
set collectionObject = collectionManagement.CreateResourceCollection("newCollectionName", "This is my new collection", myCollectionFolderGuid, true)
Copy? 
AltirisASDKNS.exe cmd:CreateResourceCollection name:newCollectionName description:"This is my new collection" folderGuid:"{7070fb1c-cf5c-49f9-8764-593124e78c1d}" autoUpdate:true
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
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


Function Get-CollectionMembership {

<#
.SYNOPSIS
    Gets the resource memebrship of the collection 

.PARAMETER collectionItemGuid
    Guid of the collection to return the membership of 

.EXAMPLE 
    CopyC#
// See CollectionManagementLib Overview for an example of setting up m_proxy.
Guid[] guidList = m_proxy.GetCollectionMembership(collectionObject.Guid);
string strGuid = "";
foreach( Guid guid in guidList )
{
    strGuids += guid.ToString() + ", ";
}
CopyVBScript
guidList = collectionManagement.GetCollectionMembership(collectionObject.Guid)
strGuids = ""
for each guid in guidList
  strGuids = strGuids & guid & ", "
next
wscript.Echo strGuids
Copy? 
AltirisASDKNS.exe cmd:GetCollectionMembership "collectionItemGuid:%clonedCollectionGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This API will not update the collection before returning the collection members. To update the collection, please use UpdateCollections(String)
The COM and CLI layers take and return guids represented as strings.
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


Function Get-CollectionExclusions {

<#
.SYNOPSIS
    Gets the collections and/or resources that are excluded from this collection. 

.PARAMETER collectionItemGuid
    The guid of the collection for which to retrieve excluded members. 

.PARAMETER type
    Specify "collection" to only get excluded collections. Specify "resource" to only get excluded resources. Use null to get both collections and resources. 

.EXAMPLE 
    CopyC#
Guid allComputersCollectionGuid = new Guid("{eb3a1a12-e1c7-4431-b060-f0333e4e488c}");
// Get all excluded members
ItemDetails[] members = m_proxy.GetExclusions( allComputersCollectionGuid, null );
// Get only excluded collections
members = m_proxy.GetExclusions( allComputersCollectionGuid, "collection");
// Get only excluded resources
members = m_proxy.GetExclusions( allComputersCollectionGuid, "resource" );
CopyVBScript
Guid allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
' Get all excluded members
members = collectionManagement.GetExclusions( allComputersCollectionGuid, null )
' Get only excluded collections
members = collectionManagement.GetExclusions( allComputersCollectionGuid, "collection")
' Get only excluded resources
members = collectionManagement.GetExclusions( allComputersCollectionGuid, "resource" )
Copy? 
AltirisASDKNS.exe cmd:GetExclusions collectionItemGuid:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c}" type:"null"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-CollectionInclusions {

<#
.SYNOPSIS
    Gets the collections and/or resources that are included in this collection. 

.PARAMETER collectionItemGuid
    The guid of the collection for which to retrieve included members. 

.PARAMETER type
    Specify "collection" to only get included collections. Specify "resource" to only get included resources. Use null to get both collections and resources. 

.EXAMPLE 
    CopyC#
Guid allComputersCollectionGuid = new Guid("{eb3a1a12-e1c7-4431-b060-f0333e4e488c}");
// Get all included members
ItemDetails[] members = m_proxy.GetInclusions( allComputersCollectionGuid, null );
// Get only included collections
members = m_proxy.GetInclusions( allComputersCollectionGuid, "collection");
// Get only included resources
members = m_proxy.GetInclusions( allComputersCollectionGuid, "resource" );
CopyVBScript
Guid allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
' Get all included members
members = collectionManagement.GetInclusions( allComputersCollectionGuid, null )
' Get only included collections
members = collectionManagement.GetInclusions( allComputersCollectionGuid, "collection")
' Get only included resources
members = collectionManagement.GetInclusions( allComputersCollectionGuid, "resource" )
Copy? 
AltirisASDKNS.exe cmd:GetInclusions collectionItemGuid:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c}" type:"null"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Remove-CollectionExclusions {

<#
.SYNOPSIS
    Remove collections and/or resources from the set of excluded items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to removed exclusions from. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to remove from the collection's exclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.RemoveExclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.RemoveExclusions( collectionObject.Guid, guidList )
Copy? 
AltirisASDKNS.exe cmd:RemoveExclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Remove-CollectionInclusions {

<#
.SYNOPSIS
    Remove collections and/or resources from the set of included items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to removed inclusions from. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to remove from the collection's inclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.RemoveInclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.RemoveInclusions( collectionObject.Guid, guidList )
Copy? 
AltirisASDKNS.exe cmd:RemoveInclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Set-CollectionDataSourceToRawSql {

<#
.SYNOPSIS
    Set the Data Source of a resource collection to a raw SQL Query. 

.PARAMETER collectionItemGuid
    The guid of a collection. 

.PARAMETER sqlQuery
    The raw SQL query to assign to the DataSource property of the resource collection. Null to clear the current Data Source. 

.EXAMPLE 
    CopyC#
// assume collectionObject was previously created by the CreateResourceCollection API
// get all resources of type computer
string query = "ResourceTypeGuid in (select ResourceTypeGuid from ResourceTypeHierarchy where BaseResourceTypeGuid='493435f7-3b17-4c4c-b07f-c23e7ab7781f')";
m_proxy.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, query );
// clear the sql query just added
m_proxy.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, null );
CopyVBScript
' assume collectionObject was previously created by the CreateResourceCollection API
' get all resources of type computer
query = "ResourceTypeGuid in (select ResourceTypeGuid from ResourceTypeHierarchy where BaseResourceTypeGuid='493435f7-3b17-4c4c-b07f-c23e7ab7781f')"
call collectionManagement.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, query )
' clear the sql query just added
call collectionManagement.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, null )
Copy? 
AltirisASDKNS.exe cmd:SetCollectionDataSourceToRawSqlQuery collectionItemGuid:%newCollectionGuid% sqlQuery:"ResourceTypeGuid in (select ResourceTypeGuid from ResourceTypeHierarchy where BaseResourceTypeGuid='493435f7-3b17-4c4c-b07f-c23e7ab7781f')"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    SetCollectionDataSourceToRawSqlQuery will overwrite the current DataSource of the collection (whether it be a raw SQL query or a Resource Query abstraction) and replace it with the new raw SQL query. 
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


Function Update-Collection {

<#
.SYNOPSIS
    Updates the collection for each collection GUID given. 

.PARAMETER collectionItemGuids
    Comma seperated list of collection item Guids. 

.EXAMPLE 
    CopyC#
m_proxy.UpdateCollections( null );
string allComputersCollectionGuid = "eb3a1a12-e1c7-4431-b060-f0333e4e488c";
m_proxy.UpdateCollections( allComputersCollectionGuid );
CopyVBScript
collectionManagement.UpdateCollections(null)
allComputersCollectionGuid = "eb3a1a12-e1c7-4431-b060-f0333e4e488c"
collectionManagement.UpdateCollections(allComputersCollectionGuid)
Copy? 
AltirisASDKNS.exe cmd:UpdateCollections collectionItemGuids:null
AltirisASDKNS.exe cmd:UpdateCollections collectionItemGuids:"eb3a1a12-e1c7-4431-b060-f0333e4e488c"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    To update all collections, use null for collectionItemGuids. This operation may take a while to complete if there are a lot of collections in the database.
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

