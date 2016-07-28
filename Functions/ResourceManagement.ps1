
Function CreateResourceAssociation {

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


Function GetComputerByNameAndDomain {

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


Function GetDataClassData {

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


Function GetResourceByContext {

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


Function GetResourceByName {

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


Function GetUserByUserIdAndDomain {

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


Function MergeResource {

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


Function PushAltirisAgentToComputers {

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


Function PushAltirisAgentToComputersStrict {

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


Function CreateResourceAssociation {

<#
.SYNOPSIS
    Creates a resource association between two resources 

.PARAMETER resourceAssociationTypeGuid
    the Resource Association Type 

.PARAMETER parentResourceGuid
    a GUID representing the parent resource in the association 

.PARAMETER childResourceGuid
    a child resource to be associated to the parent resource 

.EXAMPLE 
    CopyC#
// the GUID of the "Location" ResourceAssociationType item, which
// associates a parent asset with a child location 
Guid resourceAssociationTypeGuid = new Guid( "05de450f-39ea-4aae-8c5f-77817889c27c");
// the GUID of the previously-defined parent resource (a computer, for example)
Guid parentResourceGuid = new Guid( "3C640E2B-3008-4d8a-8F7E-CE54BF6669BA");
// the GUID of the child resource (a previously-defined location, such as "Headquarters")
Guid childResourceGuid = new Guid( "0432878C-BF6D-4e14-94CF-A9CEEB36DC41");
// See AssetManagementLib Overview for an example of setting up m_proxy.
m_proxy.CreateResourceAssociation( resourceAssociationTypeGuid, parentResourceGuid, childResourceGuid);
CopyVBScript
resAssocType = "05de450f-39ea-4aae-8c5f-77817889c27c"
parentRes = "3C640E2B-3008-4d8a-8F7E-CE54BF6669BA"
childRes = "0432878C-BF6D-4e14-94CF-A9CEEB36DC41"
call itemManagement.CreateResourceAssociation( resAssocType, parentRes, childRes)
Copy? 
AltirisASDKNS.exe cmd:CreateResourceAssociation resourceAssociationTypeGuid:05de450f-39ea-4aae-8c5f-77817889c27c parentResourceGuid:3C640E2B-3008-4d8a-8F7E-CE54BF6669BA childResourceGuid:0432878C-BF6D-4e14-94CF-A9CEEB36DC41
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    A resource association links a parent resource item of a certain resource type to a child resource item of a certain resource type. The association flows "from" the parent "to" the child. A ResourceAssociationType item contains properties that define the minimum and maximum number of child resource items of the given type that can be associated with the parent resource. (These properties are named "MinimumCardinality" and "MaximumCardinality", respectively.)
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


Function GetComputerByNameAndDomain {

<#
.SYNOPSIS
    Gets a computer guid given its name and domain 

.PARAMETER name
    Computer's Name 

.PARAMETER domain
    Computer's Domain 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
string machineName = "computer5";
string machineDomain = "WORKGROUP";
Guid computerGuid = m_proxy.GetComputerByNameAndDomain(machineName, machineDomain);
CopyVBScript
machineName = "computer5"
machineDomain = "WORKGROUP"
computerGuid = resourceManagement.GetComputerByNameAndDomain(machineName, machineDomain)
Copy? 
AltirisASDKNS.exe cmd:GetComputerByNameAndDomain name:%name% domain:%domain%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings. If you have a case sensitive database you must set an environment variable ASDK_CASE_INSENSITIVE_SEARCH. This will indicate that the system should do name queries in a case insensitive manor. This is done with the use of the SQL COLLATE command. This does not change or modify your database in any way from its current collation sequence, it will only perform the current search in a case insensitive fashion. 
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


Function GetDataClassData {

<#
.SYNOPSIS
    Returns the inventory data in a data class for a given resource 

.PARAMETER dataClass
    Guid or name of the data class to get the data from 

.PARAMETER resourceGuid
    Guid of the resource to return the data for 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
string companyDetailsDataClassName = "Company Details";
Guid AltirisCompanyResourceGuid = new Guid("{e2fea34c-adbb-47bd-9d7a-1092c5078245}");
System.Data.DataTable objRS = m_proxy.GetDataClassData(companyDetailsDataClassName, AltirisCompanyResourceGuid);
string data = "";
foreach( System.Data.DataRow row in objRS )
{
    data += "ROW: ";
    for( int i=0; i < objRS.Rows.Count; i++ )
    {
        data += row[i].ToString() + ", ";
    }
    data += @"\r\n";
 }
CopyVBScript
companyDetailsDataClassName = "Company Details"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
set objRS = resourceManagement.GetDataClassData(companyDetailsDataClassName, AltirisCompanyResourceGuid)
data = ""
while NOT objRS.EOF
    data = data + "ROW: "
    for i=0 to objRS.Fields.Count-1
        data = data & objRS.Fields.Item(i).Value & ", "
        next
        data = data + vbCrLf
        objRS.MoveNext()
wend
Wscript.Echo "Query results: " & data
Copy? 
AltirisASDKNS.exe cmd:GetDataClassData dataClass:"Company Details" resourceGuid:"{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
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


Function GetResourceByContext {

<#
.SYNOPSIS
    Find a resource by contextual data known about the resource. 

.PARAMETER parameters
    Comma-separated list of filters. Possible values are: 

.EXAMPLE 
    CopyC#
// Find a computer resource (physical or virtual) using the computer's correct name, domain, ipaddress and serial number
string parameters = "mycomputer, mydomain, 255.255.0.0, 75XYTZ, type:computer";
Guid[] guidList = m_proxy.GetResourceByContext( parameters );
// Find the company altiris
parameters = "type:company, %altiris%";
guidList = m_proxy.GetResourceByContext( parameters );
// Find anything starting with 'altir'
parameters = "altir%";
guidList = m_proxy.GetResourceByContext( parameters );
// Find all computer and virtual machine resources
parameters = "type:computer, %";
guidList = m_proxy.GetResourceByContext( parameters );
// Find only computer resources
parameters = "type:computer, strict:true, %";
guidList = m_proxy.GetResourceByContext( parameters );

CopyVBScript
parameters = "type:computer, %"
guidList = resourceManagement.GetResourceByContext(parameters)
strGuids = ""
for each guid in guidList
  strGuids = strGuids & guid & ", "
next
wscript.Echo strGuids
Copy? 
AltirisASDKNS.exe cmd:GetResourceByContext parameters:"type:computer, %%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This API is intended to only search for resources. Items that are not resources, such as collections, reports and tasks, should be searched for using one of the ItemManagement APIs.
To find a resource, you can provide any data you know about that resource, including a type. The API will return the resource you are looking for only if all the data supplied matches something in the database. If any piece of data is incorrect, the resource will not be found. Therefore you may not want to use data you are uncertain about, or use wildcards; however, wildcards will slow the search down - especially if they are used at the beginning of a string.
To find all resources of a given type, you should use the parameters 'type:x, %' where x is the type you are looking for. Using 'type:x' alone is insufficient. The '%' is necessary since the type refers to a class designation and not data about the resource.
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


Function GetResourceByName {

<#
.SYNOPSIS
    Gets a resource guid given its name and type 

.PARAMETER name
    Name of the resource to fetch 

.PARAMETER resourceType
    Resource type name or guid of the resource to fetch 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
Guid resourceGuid = m_proxy.GetResourceByName(machineName, "Computer");
CopyVBScript
resourceGuid = resourceManagement.GetResourceByName(machineName, "Computer")
Copy? 
AltirisASDKNS.exe cmd:GetResourceByName "name:%name%" "resourceType:%resourceType%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings. If you have a case sensitive database you must set an environment variable ASDK_CASE_INSENSITIVE_SEARCH. This will indicate that the system should do name queries in a case insensitive manor. This is done with the use of the SQL COLLATE command. This does not change or modify your database in any way from its current collation sequence, it will only perform the current search in a case insensitive fashion. 
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


Function GetUserByUserIdAndDomain {

<#
.SYNOPSIS
    Gets a user guid given its userId and domain 

.PARAMETER userId
    User's Id 

.PARAMETER domain
    User's Domain 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
Guid userGuid = m_proxy.GetUserByUserIdAndDomain(userId, userDomain);
CopyVBScript
userGuid = resourceManagement.GetUserByUserIdAndDomain(userId, userDomain)
Copy? 
AltirisASDKNS.exe cmd:GetUserByUserIdAndDomain userId:%userId% domain:%domain%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
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


Function MergeResource {

<#
.SYNOPSIS
    Merges two resources into a single resource. 

.PARAMETER fromGuid
    The guid of the resource to merge from. 

.PARAMETER toGuid
    The guid of the resource to merge to. 

.EXAMPLE 
    CopyC#
string fromGuid = "fe94974e-6c97-4a15-914d-761aed470199";
string toGuid = "0eb6763c-1457-4105-82ec-f6f85ad7bbb3";
ItemDetails item = m_proxy.MergeResource(fromGuid, toGuid);
CopyVBScript
fromGuid = "fe94974e-6c97-4a15-914d-761aed470199"
toGuid = "0eb6763c-1457-4105-82ec-f6f85ad7bbb3"
set item = resourceManagementLib.MergeResource(fromGuid, toGuid);
Copy? 
AltirisASDKNS.exe cmd:MergeResource fromGuid:"fe94974e-6c97-4a15-914d-761aed470199" toGuid:"0eb6763c-1457-4105-82ec-f6f85ad7bbb3"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The name and guid of the toGuid are retained. All other data is selected based on timestamp. The most recent data is retained. The resources being merged must be of the same resource type.
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


Function PushAltirisAgentToComputers {

<#
.SYNOPSIS
    Pushes the Altiris NS Agent to a set of client computers 

.PARAMETER computerNames
    Comma separated list of computer names or IP addresses 

.PARAMETER showInStartMenu
    Controls if the NS Agent appears in the Start Menu on the client machine 

.PARAMETER showInSysTray
    Controls if the NS Agent appears in the SysTray on the client machine 

.PARAMETER useProxy
    Control if a proxy will be used by the client to commicate with the NS Server 

.PARAMETER showInAddRemove
    Control if the NS Agent install will appear in Add/Remove programs 

.PARAMETER overrideInstallPath
    If not null overrides the default path where the Agent will be installed on the client machine 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
m_proxy.PushAltirisAgentToComputers("192.168.202.1", true, true, false, true, @"c:\tmp\clientAgentInstall");
CopyVBScript
call resourceManagement.PushAltirisAgentToComputers("192.168.202.1", true, true, false, true, "c:\tmp\clientAgentInstall")
Copy? 
AltirisASDKNS.exe cmd:PushAltirisAgentToComputers "computerNames:%targetComputers%" "showInStartMenu:true" "showInSysTray:true" "useProxy:false" "showInAddRemove:true" "overrideInstallPath:null"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This function only works if your NS network has been properly configured to execute push agent functions. To determine if your NS network is properly configured please refer to the documentation you received with your NS. 
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


Function PushAltirisAgentToComputersStrict {

<#
.SYNOPSIS
    Pushes the Altiris NS Agent to a set of client computers 

.PARAMETER computerNames
    Comma separated list of computer names or IP addresses 

.PARAMETER showInStartMenu
    Controls if the NS Agent appears in the Start Menu on the client machine 

.PARAMETER showInSysTray
    Controls if the NS Agent appears in the SysTray on the client machine 

.PARAMETER useProxy
    Control if a proxy will be used by the client to commicate with the NS Server 

.PARAMETER showInAddRemove
    Control if the NS Agent install will appear in Add/Remove programs 

.PARAMETER overrideInstallPath
    If not null overrides the default path where the Agent will be installed on the client machine 

.PARAMETER userName
     

.PARAMETER password
     

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
m_proxy.PushAltirisAgentToComputersStrict("192.168.202.1", true, true, false, true, @"c:\tmp\clientAgentInstall", %userName%, %password%);
CopyVBScript
call resourceManagement.PushAltirisAgentToComputersStrict("192.168.202.1", true, true, false, true, "c:\tmp\clientAgentInstall", %userName%, %password%)
Copy? 
AltirisASDKNS.exe cmd:PushAltirisAgentToComputersStrict "computerNames:%targetComputers%" "showInStartMenu:true" "showInSysTray:true" "useProxy:false" "showInAddRemove:true" "overrideInstallPath:null" "userName:%userName%" "password:%password%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This function only works if your NS network has been properly configured to execute push agent functions. To determine if your NS network is properly configured please refer to the documentation you received with your NS. 
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

