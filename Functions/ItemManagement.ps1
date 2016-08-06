
Function  {

<#
.SYNOPSIS
    Clones an item and names the new item. 

.PARAMETER itemGuid
    Guid of the item to clone 

.PARAMETER newItemName
    Name to be given to the new item 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid AltirisCompanyResourceGuid = new Guid("{e2fea34c-adbb-47bd-9d7a-1092c5078245}");
ItemDetails clonedObject = m_proxy.CloneItem(AltirisCompanyResourceGuid, "Cloned Item");
CopyVBScript
symantecCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
set clonedObject = itemManagement.CloneItem(symantecCompanyResourceGuid, "Cloned Item")
Copy? 
AltirisASDKNS.exe cmd:CloneItem "itemGuid:%agentUpgradePolicyGuid%" "newItemName:%clonedPolicyName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$newItemName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			newItemName = $newItemName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/CloneItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-Folder {

<#
.SYNOPSIS
    Creates a folder item 

.PARAMETER folderName
    Name of the new folder 

.PARAMETER parentFolderGuid
    Guid of an existing folder that the new folder will be created under 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails folderObject = m_proxy.CreateFolder("NewfolderName", myCollectionFolderGuid );
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
set folderObject = itemManagement.CreateFolder("NewfolderName", myCollectionFolderGuid )
Copy? 
AltirisASDKNS.exe cmd:CreateFolder "folderName:%newfolderName%" "parentFolderGuid:%parentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$folderName,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			folderName = $folderName
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/CreateFolder"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-AltirisItem {

<#
.SYNOPSIS
    Deletes an item from the NS database 

.PARAMETER itemGuid
    Guid of the item to specify 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.DeleteItem(clonedObject.Guid);
CopyVBScript
call itemManagement.DeleteItem(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:DeleteItem "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/DeleteItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Disable-PolicyItem {

<#
.SYNOPSIS
    Disables a policy 

.PARAMETER policyItemGuid
    Guid of the item to disable 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.DisablePolicyItem(clonedObject.Guid);
CopyVBScript
call itemManagement.DisablePolicyItem(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:DisablePolicyItem "policyItemGuid:%clonedPolicyGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
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


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/DisablePolicyItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Enable-PolicyItem {

<#
.SYNOPSIS
    Enables a policy 

.PARAMETER policyItemGuid
    Guid of the item to enable 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnablePolicyItem(clonedPolicyObject.Guid);
CopyVBScript
call itemManagement.EnablePolicyItem(clonedPolicyObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:EnablePolicyItem "policyItemGuid:%clonedPolicyGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
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


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/EnablePolicyItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-SchedulableItem {

<#
.SYNOPSIS
    Calls the schedule execution method on a schedulable item. The produces the same effect as if the item has been scheduled to execute immediately 

.PARAMETER itemGuid
    Guid of the schedulable item to be executed 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.ExecuteSchedulableItem(reportObject.Guid);
CopyVBScript
itemManagement.ExecuteSchedulableItem(reportObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:ExecuteSchedulableItem "itemGuid:%newReportGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExecuteSchedulableItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Export-ItemXml {

<#
.SYNOPSIS
    Exports an item's Xml definition. 

.PARAMETER itemGuid
    Guid of the item to export 

.PARAMETER outputFile
    Full name of the file to write the xml to. If the file already exists it is overwritten 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xmlDir = @"C:\Items\";
string xmlFileName = xmlDir + "exportedItem.xml";
m_proxy.ExportItemXml(clonedObject.Guid, xmlFileName);
CopyVBScript
xmlDir = "C:\Items\"
xmlFileName = xmlDir & "exportedItem.xml"
call itemManagement.ExportItemXml(clonedObject.Guid, xmlFileName)
Copy? 
AltirisASDKNS.exe cmd:ExportItemXml "itemGuid:%itemGuid%" "outputFile:%xmlFileName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$outputFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			outputFile = $outputFile

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemXml"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Export-ItemXmlString {

<#
.SYNOPSIS
    Exports an item's Xml definition. 

.PARAMETER itemGuid
    Guid of the item to export. 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xml = m_proxy.ExportItemXmlString(clonedObject.Guid);
CopyVBScript
xml = itemManagement.ExportItemXmlString(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:ExportItemXmlString "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ItemByGuid {

<#
.SYNOPSIS
    Returns the details of an item 

.PARAMETER itemGuid
    Guid of the item to retrieve 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails itemObject = m_proxy.GetItemByGuid(myCollectionFolderGuid);
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
set itemObject = itemManagement.GetItemByGuid(myCollectionFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:GetItemByGuid "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ItemsByName {

<#
.SYNOPSIS
    Returns the details of an item 

.PARAMETER itemName
    Name of the item to retrieve 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
ItemDetails[] itemsList = m_proxy.GetItemsByName(itemName);
ItemDetails itemObject = null;
foreach( ItemDetails obj in itemsList )
{
    // if there are more than one items with this name then you need to pick which one you want
    // Here we just pick the one that is a report.
    if( obj.TypeName == "Report" )
        itemObject = obj;
}
CopyVBScript
itemsList = itemManagement.GetItemsByName(itemName)
for each obj in itemsList
' if there are more than one items with this name then you need to pick which one you want
' Here we just pick the one that is a report.
    if obj.TypeName = "Report" Then
        set itemObject = obj
    End if
next
Copy? 
AltirisASDKNS.exe cmd:GetItemsByName "itemName:%itemName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This method does a strict comparison on itemName. The name must match exactly and wild cards are not acknowledged. To use wildcards, see the method GetItemsByNameAndType(String, String). 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemName = $itemName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ItemsByNameAndType {

<#
.SYNOPSIS
    Find an item by its name and/or type. 

.PARAMETER name
    The item's name. Wildcards (%) are permitted. 

.PARAMETER type
    The item's type. Wildcards (%) are permitted. 

.EXAMPLE 
    CopyC#
// find the collection All Computers
Guid[] guidList = m_proxy.GetItemsByNameAndType( "All Computers", "%collection" );
// find the report Computers
Guid[] guidList = m_proxy.GetItemsByNameAndType( "Computers", "%report" );
// find all collections
Guid[] guidList = m_proxy.GetItemsByNameAndType( null, "%collection" );
// find all things named Computers
Guid[] guidList = m_proxy.GetItemsByNameAndType( "All Computers", null );
CopyVBScript
guidList = itemManagement.GetItemsByNameAndType( "All Computers", "%collection" )
strGuids = ""
for each guid in guidList
  strGuids = strGuids & guid & ", "
next
wscript.Echo strGuids
Copy? 
AltirisASDKNS.exe cmd:GetItemsByNameAndType name:"All Computers" type:%collection
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    A null value is permitted for either name or type, but not both. This method does a like comparison on name and type so that wild cards can be used. To make a strict comparison, see the methods GetItemsByName(String) and GetItemsByType(String). If you do not use wildcards, you must use the fully- qualified name of the type. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$type,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByNameAndType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ItemsByType {

<#
.SYNOPSIS
    Returns all items of the given type in the NS 

.PARAMETER typeName
    Type of item to be returned 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string collectionTypeName = "Collection";
ItemDetails[] items = m_proxy.GetItemsByType(collectionTypeName);
string allItemNames = "";
foreach( ItemDetails NSItemDetails in items )
{
  allItemNames += ", " + NSItemDetails.Name;
}
CopyVBScript
collectionTypeName = "Collection"
items = itemManagement.GetItemsByType(collectionTypeName)
allItemNames = ""
for each NSItemDetails in items
  allItemNames = allItemNames & ", " & NSItemDetails.Name
next
wscript.Echo "All items: " & allItemNames
Copy? 
AltirisASDKNS.exe cmd:GetItemsByType "typeName:Collection"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This method does a strict comparison on typeName. The name must match exactly and wild cards are not acknowledged. To use wildcards, see the method GetItemsByNameAndType(String, String).
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$typeName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			typeName = $typeName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ItemsInFolder {

<#
.SYNOPSIS
    Gets the details of the items in the given folder. 

.PARAMETER folderGuid
    Guid of the folder to search 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails[] items = m_proxy.GetItemsInFolder(myCollectionFolderGuid);
string allItemNames = "";
foreach( ItemDetails NSItemDetails in items )
{
  allItemNames += ", " + NSItemDetails.Name;
}
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
items = itemManagement.GetItemsInFolder(myCollectionFolderGuid)
allItemNames = ""
for each NSItemDetails in items
  allItemNames = allItemNames & ", " & NSItemDetails.Name
next
wscript.Echo "All items in folder: " & allItemNames
Copy? 
AltirisASDKNS.exe cmd:GetItemsInFolder "folderGuid:%parentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$folderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			folderGuid = $folderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsInFolder"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Import-ItemXmlFile {

<#
.SYNOPSIS
    Imports an item definition Xml file into the NS 

.PARAMETER sourceFile
    The full name of the file to import 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xmlDir = @"C:\Items\";
string xmlFileName = xmlDir + "exportedItem.xml";
m_proxy.ImportItemXmlFile(xmlFileName);
CopyVBScript
xmlDir = "C:\Items\"
xmlFileName = xmlDir & "exportedItem.xml"
call itemManagement.ImportItemXmlFile(xmlFileName)
Copy? 
AltirisASDKNS.exe cmd:ImportItemXmlFile "sourceFile:%xmlFileName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sourceFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sourceFile = $sourceFile

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Import-ItemXmlFiles {

<#
.SYNOPSIS
    Imports all xml files within the a directory. Each of these xml files must contain valid xml item(s) defintions 

.PARAMETER sourceDirectory
    Directory to seach for xml files 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xmlDir = @"C:\Items\";
m_proxy.ImportItemXmlFiles(xmlDir);
CopyVBScript
xmlDir = "C:\Items\"
call itemManagement.ImportItemXmlFiles(xmlDir)
Copy? 
AltirisASDKNS.exe cmd:ImportItemXmlFiles "sourceDirectory:%xmlDirectory%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sourceDirectory,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sourceDirectory = $sourceDirectory

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlFiles"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Import-ItemXmlString {

<#
.SYNOPSIS
    Imports an item definition into the NS. 

.PARAMETER xml
    The xml string defining the item to import. 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.ImportItemXmlString(xml);
CopyVBScript
call itemManagement.ImportItemXmlString(xml)
Copy? 
AltirisASDKNS.exe cmd:ImportItemXmlString "xml:%xmlString%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$xml,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			xml = $xml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Move-Item {

<#
.SYNOPSIS
    Moves an item to a different folder 

.PARAMETER itemGuid
    Guid of the item to move 

.PARAMETER destinationFolderGuid
    Guid of an existing folder to move the item into 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid userResourceFolderGuid = new Guid("{4f169065-6b1e-4959-8658-60797be58b18}");
m_proxy.MoveItem(clonedObject.Guid, userResourceFolderGuid);
CopyVBScript
userResourceFolderGuid = "{4f169065-6b1e-4959-8658-60797be58b18}"
call itemManagement.MoveItem(clonedObject.Guid, userResourceFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:MoveItem itemGuid:%clonedPolicyGuid% destinationFolderGuid:%newFolderGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[guid]$destinationFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			destinationFolderGuid = $destinationFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/MoveItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Rename-Item {

<#
.SYNOPSIS
    Renames an item 

.PARAMETER itemGuid
    Guid of the item to rename 

.PARAMETER newName
    New name to be given to the item 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.RenameItem(clonedObject.Guid, "new Cloned Item Name");
CopyVBScript
call itemManagement.RenameItem(clonedObject.Guid, "new Cloned Item Name")
Copy? 
AltirisASDKNS.exe cmd:RenameItem itemGuid:%itemGuid% newName:"new Cloned Item Name"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$newName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			newName = $newName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/RenameItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-AutomationPolicyTask {

<#
.SYNOPSIS
    Run an automation policy task 

.PARAMETER policyItemGuid
    Guid of the automation policy to run 

.EXAMPLE 
    CopyC#
m_proxy.RunAutomationPolicyTask(clonedObject.Guid);
CopyVBScript
itemManagement.RunAutomationPolicyTask(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:RunAutomationPolicyTask policyItemGuid:c31b7f82-2f96-4657-a5c0-c4fb5ab9ee86
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/RunAutomationPolicyTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-ItemsSchedule {

<#
.SYNOPSIS
    Set an items schedule 

.PARAMETER itemGuid
    Guid of the item to set the schedule of 

.PARAMETER scheduleXml
    Schedule definition xml. If set to null then the schedule on the item is disabled. 

.EXAMPLE 
    CopyC#
string scheduleXml = "<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>";
m_proxy.SetItemsSchedule( itemGuid, scheduleXml );
CopyVBScript
scheduleXml = "<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>"
call itemManagement.SetItemsSchedule( itemGuid, scheduleXml );
Copy? 
AltirisASDKNS.exe cmd:SetItemsSchedule itemGuid:%itemGuid% scheduleXml:"<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$scheduleXml,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			scheduleXml = $scheduleXml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/SetItemsSchedule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

