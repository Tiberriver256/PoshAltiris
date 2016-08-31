
Function Set-ResourcesToOrganizationalGroup {

<#
.SYNOPSIS
    Assign one or more resource items to a Organizational Group 

.PARAMETER resourceItemGuids
    a comma-delimited string of GUIDs representing the resource items to be added 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
string resItemGuids = "{95e7f04d-a5e5-4d0c-afa8-0f0f329e976f}, {a4aefa28-db5b-492f-a848-65107ec46b7b}";
Guid organizationalGroupGuid = new Guid("{6c8cc2fa-b802-45b1-be61-e2aa1480f254}");
m_proxy.AssignResourcesToOrganizationalGroup(resItemGuids, organizationalGroupGuid);
CopyVBScript
resItemGuids = "{95e7f04d-a5e5-4d0c-afa8-0f0f329e976f}, {a4aefa28-db5b-492f-a848-65107ec46b7b}"
organizationalGroupGuid = "{6c8cc2fa-b802-45b1-be61-e2aa1480f254}"
call scopingManagement.AssignResourcesToOrganizationalGroup(resItemGuids, organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:AssignResourcesToOrganizationalGroup "resourceItemGuids:%resItemGuids%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Set-ResourceTargetsToPolicy {

<#
.SYNOPSIS
    Associate a set of resource targets with a policy that will target the resources in the resource targets. 

.PARAMETER policyItemGuid
    GUID of the policy that will consume the resource targets. 

.PARAMETER resourceTargetsGuids
    A comma-delimited list of GUIDs representing Resource Target items. Provided Resource Target items list replaces existing targets list. If no Resource Targets are passed in (i.e., resourceTargetsGuids is the Empty String), all existing targets are removed from the policy. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid policyGuid = new Guid("{5b402270-3757-4852-9ad4-9c5b67db1060}");
string resTargetGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}";
m_proxy.AssignResourceTargetsToPolicy(policyGuid, resTargetGuids, false);
CopyVBScript
policyGuid = "{5b402270-3757-4852-9ad4-9c5b67db1060}"
resTargetGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}"
call scopingManagement.AssignResourceTargetsToPolicy(policyGuid, resTargetGuids, false)
Copy? 
AltirisASDKNS.exe cmd:AssignResourceTargetsToPolicy "policyItemGuid:%policyGuid%" "resourceTargetsGuids:%resTargetGuids%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Set-RoleToOrganizationalGroup {

<#
.SYNOPSIS
    Assign a Role as owner to an Organization Group. 

.PARAMETER roleGuid
    Guid of the existing role. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to which the Role will be assigned.  

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid roleGuid = new Guid("{a9535582-73bb-4dc9-8fb2-743666afa550}");
Guid organizationalViewGuid = new Guid("{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}");
bool success = m_proxy.AssignRoleToOrganizationalGroup(roleGuid, organizationalGroupGuid);
CopyVBScript
roleGuid = "{a9535582-73bb-4dc9-8fb2-743666afa550}"
organizationalGroupGuid = "{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}"
success = scopingManagement.AssignRoleToOrganizationalGroup(roleGuid, organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:AssignRoleToOrganizationalGroup "roleGuid:a9535582-73bb-4dc9-8fb2-743666afa550" "organizationalGroupGuid:1d2402e7-3d2d-415e-bd6a-be14dba4e75e"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function New-OrganizationalGroup {

<#
.SYNOPSIS
    Create a Organizational Group and assign it to a Organizational View 

.PARAMETER name
    name of the group 

.PARAMETER description
    description of the group 

.PARAMETER organizationalViewGuid
    GUID of the scope set (Organizational View) this group will belong to 

.PARAMETER parentGuid
    GUID of the parent of the newly-created Organizational Group. The parent may be either an existing Organizational Group, or the same Organizational View that was given as the "OrganizationalViewGuid" parameter value. If the parent is to be the Organizational View itself, you can pass in either the GUID of the resource view or the Empty GUID ("00000000-0000-0000-0000-000000000000"). 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewGuid = new Guid("{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}");
Guid organizationalGroupGuid = m_proxy.CreateOrganizationalGroup("First Floor Computers", "Computers on first floor", organizationalViewGuid, organizationalViewGuid);
CopyVBScript
organizationalViewGuid = "{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}"
set organizationalGroupGuid = scopingManagement.CreateOrganizationalGroup("First Floor Computers", "Computers on first floor", organizationalViewGuid, organizationalViewGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateOrganizationalGroup "name:First Floor Computers" "description:Computers on first floor" "organizationalViewGuid:%resViewGuid%" "parentGuid:%resViewGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function New-OrganizationalView {

<#
.SYNOPSIS
    Create a new Organizational View 

.PARAMETER name
    the name of the view 

.PARAMETER description
    description of the view 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewGuid = m_proxy.CreateOrganizationalView("My Computers", "Computers I manage");
CopyVBScript
set organizationalViewGuid = scopingManagement.CreateOrganizationalView("My Computers", "Computers I manage")
Copy? 
AltirisASDKNS.exe cmd:CreateOrganizationalView "name:My Computers" "description:Computers I manage"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function New-ResourceTarget {

<#
.SYNOPSIS
    Create a new ResourceTarget item. 

.PARAMETER configXml
    XML containing the information needed to set up the resource target. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
// See the Remarks section for a sample of the XML format to set the "xml" variable
Guid resourceTargetGuid = m_proxy.CreateResourceTarget(xml);
CopyVBScript
' See the Remarks section for a sample of the XML format to set the "xml" variable
set resourceTargetGuid = scopingManagement.CreateResourceTarget(xml)
Copy? 
AltirisASDKNS.exe cmd:CreateResourceTarget "configXml:%xml%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Note that XML format used in the configXml parameter is NOT identical to the Item XML that would be used to create a new ResourceTarget Item via an NS configuration file. Rather, it is an XML format unique to this method, that provides only the elements needed to programatically create a new ResourceTarget item.
The following is a sample XML format for the "configXml" parameter (empty GUIDs should be replaced with the appropriate actual GUIDs):
CopyXML
<resourceTarget>
  <name>Sample Resource Target</name>
  <description>This is a Sample Resource Target</description>
  <mode>Computers</mode>
  <baseOrganizationalGroupGuid>00000000-0000-0000-0000-000000000000</baseOrganizationalGroupGuid>
  <targetFilters>
    <targetFilter>
      <type>Organizational Group</type>
      <operation>Intersect</operation>
      <organizationalGroupGuid>00000000-0000-0000-0000-000000000000</organizationalGroupGuid>
    </targetFilter>
    <targetFilter>
      <type>Resource Collection</type>
      <operation>Union</operation>
      <resourceCollectionGuid>00000000-0000-0000-0000-000000000000</resourceCollectionGuid>
    </targetFilter>
    <targetFilter>
      <type>Individual Resources</type>
      <operation>Except</operation>
      <resourceGuids>
        <resourceGuid>00000000-0000-0000-0000-000000000000</resourceGuid>
        <resourceGuid>00000000-0000-0000-0000-000000000000</resourceGuid>
        <resourceGuid>00000000-0000-0000-0000-000000000000</resourceGuid>
      </resourceGuids>
    </targetFilter>
  </targetFilters>
</resourceTarget>
The "name" value is the name of the new Resource Target. The "description" contains a description of the Resource Target (this "description" element is optional). The "mode" contains a type of the Resource Target. Computers - this Computers Resource Target, Automatically added filter "All Computers". Users - this Users Resource Target, Automatically added filter "All Userss". (This "mode" element is optional). The "baseOrganizationalGroupGuid" value should be given the value of the GUID of the Organizational Group item that defines the base or beginning set of resources against which any filters will be applied. If no value is given for the "baseOrganizationalGroupGuid" element, the base organizational group will be set to "All Discovered Resources." (NOTE: Some policies may impose an additional restriction on the starting Group to apply only to Computer or User resources.)
Zero or more filters may be added under the "targetFilters" element. Each "targetFilter" element defines a different filter to apply. The "type" of the filter must be one of "Organizational Group," "Resource Collection," or "Individual Resources." If the type is given as "Organizational Group," then there must be a sibling element "organizationalGroupGuid" whose value is the GUID of the existing Organizational Group item to be used as the filter. If the type is "Resource Collection," there must be a sibling element "resourceCollectionGuid" with the value the Guid of an NS 7 Resource Collection, containing the resources to be used as the filter. (Note: An NS 7 Resource Collection is referred to as a "filter" in the NS Console.) If the type is given as "Individual Resources," there must be a sibling element "resourceGuids" which in turn contains one or more "resourceGuid" elements, each of which contains the GUID of an individual resource to be included in that filter. 
There can be zero or more of each of the three types of filters, in any combination. NOTE: The order in which you place the filters in the XML is important. When the Resource Target is created, each filter will be evaluated in the order it appears in the XML, starting at the topmost filter element and moving downward.
The "operation" element in each Target Filter defines the logical operation that will be performed between the resources contained in the the filter and base organizational group (in the case of the first filter), or between the filter's resources and the resource set derived from the previous filter opertation (in the case of the second and subsequent filters). Only three values are allowed: "Intersect," "Union," and "Except."
For more information, see the NS7 documentation regarding Resource Targets and Target Filters.
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


Function Remove-OrganizationalGroup {

<#
.SYNOPSIS
    Delete an organizational group. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group item 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{58541982-7d1d-451f-aaf7-63ba6421c5ee}");
m_proxy.DeleteOrganizationalGroup(organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{58541982-7d1d-451f-aaf7-63ba6421c5ee}"
call scopingManagement.DeleteOrganizationalGroup(organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:DeleteOrganizationalGroup "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Remove-OrganizationalView {

<#
.SYNOPSIS
    Delete a Organizational View. 

.PARAMETER organizationalViewGuid
    GUID of the Organizational View item 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
m_proxy.DeleteOrganizationalView(clonedObject.Guid);
CopyVBScript
call scopingManagement.DeleteOrganizationalView(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:DeleteOrganizationalView "organizationalViewGuid:%organizationalViewGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-OrganizationalGroupDirectMembership {

<#
.SYNOPSIS
    Returns the GUIDs of all direct members of the given Organizational Group. This includes both: (1) resource items that are direct children of the given Organization Group (i.e., are at the root level of the Organizational Group); and (2) any Organizational Group items that are direct children of the given Organizational Group. Items returned include any such items that are visible in the Console, as well as any such items that are hidden from view in the Console. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group whose membership is returned 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{acde3562-2f26-42e3-80b1-8e34c74159b3}");
Guid[] resources = m_proxy.GetOrganizationalGroupDirectMembership(organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{acde3562-2f26-42e3-80b1-8e34c74159b3}"
set resources = scopingManagement.GetOrganizationalGroupDirectMembership(organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:GetOrganizationalGroupDirectMembership "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-OrganizationalGroupMembership {

<#
.SYNOPSIS
    Returns the GUIDs of all members of the given Organizational Group. This includes: (1) resource items that are direct children of the given Organization Group as well resource items that are contained in other Organizational Groups in the given Group's sub-tree; (2) any child Organizational Group items found anywhere in the given Organizational Group's subtree; and (3) items visible in the Console, as well as any items that exist in the given Organizational Group's sub-tree but are hidden from view in the Console. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group whose membership is returned 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{acde3562-2f26-42e3-80b1-8e34c74159b3}");
Guid[] resources = m_proxy.GetOrganizationalGroupMembership(organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{acde3562-2f26-42e3-80b1-8e34c74159b3}"
set resources = scopingManagement.GetOrganizationalGroupMembership(organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:GetOrganizationalGroupMembership "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-OrganizationalGroupsFromOrganizationalView {

<#
.SYNOPSIS
    Returns the GUIDs for all Organizational Groups for which the current user has read permission, that are members of the given Organizational View. These include: (1) Organizational Groups that are direct children or are found at any level of the given Organizational Group's sub-tree; and (2) any such Organizational Groups that are hidden in the Console as well as those that are visible. The user must have Read permission on the given Organizational Group. 

.PARAMETER organizationalViewGuid
    GUID of the Organizational View containing the Organizational Groups 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewGuid = new Guid("{fbee9440-0033-4489-b69d-5aecf6475da4}");
Guid[] resGroups = m_proxy.GetOrganizationalGroupsFromOrganizationalView(organizationalViewGuid);
CopyVBScript
organizationalViewGuid = "{fbee9440-0033-4489-b69d-5aecf6475da4}"
set resGroups = scopingManagement.GetOrganizationalGroupsFromOrganizationalView(organizationalViewGuid)
Copy? 
AltirisASDKNS.exe cmd:GetOrganizationalGroupsFromOrganizationalView "OrganizationalViewGuid:%organizationalViewGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-OrganizationalViews {

<#
.SYNOPSIS
    Get the GUIDs of all active Organizational Views on the system. The current user must have Read permissions on the "Organizational Views" folder. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid[] organizationalViews = m_proxy.GetOrganizationalViews();
CopyVBScript
set organizationalViews = scopingManagement.GetOrganizationalViews()
Copy? 
AltirisASDKNS.exe cmd:GetOrganizationalViews
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-OrganizationalViewsFolderGuid {

<#
.SYNOPSIS
    Returns the well-known GUID of the one-and-only "Organizational Views" folder that is the parent folder to all OrganizationalView objects. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewFolderGuid = m_proxy.GetOrganizationalViewsFolderGuid();
CopyVBScript
set organizationalViewFolderGuid = scopingManagement.GetOrganizationalViewsFolderGuid()
Copy? 
AltirisASDKNS.exe cmd:GetOrganizationalViewsFolderGuid
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-ResourcesTargetedByPolicy {

<#
.SYNOPSIS
    Returns a list of the resources that the given policy currently targets. 

.PARAMETER policyItemGuid
    Guid of the policy item 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid policyGuid = new Guid("{1c046531-f62c-4e05-bdce-5c4c17a023c2}");
Guid[] resources = m_proxy.GetResourcesTargetedByPolicy(policyGuid);
CopyVBScript
policyGuid = "{1c046531-f62c-4e05-bdce-5c4c17a023c2}"
set resources = scopingManagement.GetResourcesTargetedByPolicy(policyGuid)
Copy? 
AltirisASDKNS.exe cmd:GetResourcesTargetedByPolicy "policyItemGuid:%policyGuid%"
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


Function Get-ResourceTargetMembership {

<#
.SYNOPSIS
    Returns the list of resource items in a resource target. The Guid must be of type ResourceTarget. 

.PARAMETER resourceTargetGuid
    GUID of the resource target to be evaluated 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid resTargetGuid = new Guid("{09af2f95-6281-444d-a410-30b58fb57aec}");
Guid[] resourceTargetMemberGuids = m_proxy.GetResourceTargetMembership(resTargetGuid);
CopyVBScript
resTargetGuid = "{09af2f95-6281-444d-a410-30b58fb57aec}"
set resourceTargetMemberGuids = scopingManagement.GetResourceTargetMembership(resTargetGuid)
Copy? 
AltirisASDKNS.exe cmd:GetResourceTargetMembership "resourceTargetGuid:%resTargetGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Get-ResourceTargets {

<#
.SYNOPSIS
    Returns a list of the Resource Target items that currently apply to the given Client Config Policy. 

.PARAMETER policyItemGuid
    GUID of the policy item to which the Resource Targets apply 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid[] resourceTargetGuids = m_proxy.GetResourceTargets(clonedObject.Guid);
CopyVBScript
// See ScopingManagementLib Overview for an example of setting up m_proxy.
set resourceTargetGuids = scopingManagement.GetResourceTargets(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:GetResourceTargets "policyItemGuid:%itemGuid%"
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


Function Test-ItemIsInOrganizationalGroup {

<#
.SYNOPSIS
    Tells whether a given resource item is a member of the given Organizational Group, either directly or as a member of a child Organizational Group 

.PARAMETER resourceItemGuid
    GUID of the resource item to be checked 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to be queried 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}");
bool isInGroup = m_proxy.IsInOrganizationalGroup(clonedObject.Guid, organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}"
isInGroup = scopingManagement.IsInOrganizationalGroup(clonedObject.Guid, organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:IsInOrganizationalGroup "resourceItemGuid:%resourceGuid%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Test-ItemIsInOrganizationalGroupDirectMembership {

<#
.SYNOPSIS
    Tells whether a given resource item is a direct member of the given Organizational Group (members of any child Organizational Groups are ignored) 

.PARAMETER resourceItemGuid
    GUID of the resource item to be checked 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to be queried 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}");
bool isInGroup = m_proxy.IsInOrganizationalGroupDirectMembership(clonedObject.Guid, organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}"
isInGroup = scopingManagement.IsInOrganizationalGroupDirectMembership(clonedObject.Guid, organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:IsInOrganizationalGroupDirectMembership "resourceItemGuid:%resourceGuid%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Move-OrganizationalGroupWithinOrganizationalView {

<#
.SYNOPSIS
    Moves an existing Organizational Group to a different position in the Organizational View hierarchy containing that group 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to be moved 

.PARAMETER parentGroupGuid
    GUID of the Organizational Group that will be the parent of the moved Organizational Group after the move is completed. If the Organizational Group is to be moved to the root level (i.e., its parent is to be a Organizational View rather than another Organizational Group), this parameter's value must be the Empty GUID (i.e., "00000000-0000-0000-0000-000000000000"). 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{da404f3a-1452-469d-8e04-baa592f1d50d}");
Guid parentGuid = new Guid("{6f76e30b-b124-4434-811c-c0d137bcf7cb}");
m_proxy.MoveOrganizationalGroupWithinOrganizationalView(organizationalGroupGuid, parentGuid);
CopyVBScript
orgGroupGuid = "{da404f3a-1452-469d-8e04-baa592f1d50d}"
parentGuid = "{6f76e30b-b124-4434-811c-c0d137bcf7cb}"
call scopingManagement.MoveOrganizationalGroupWithinOrganizationalView(organizationalGroupGuid, parentGuid)
Copy? 
AltirisASDKNS.exe cmd:MoveOrganizationalGroupWithinOrganizationalView "organizationalGroupGuid:%orgGroupGuid%"  "parentGroupGuid:%parentGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function Remove-ResourcesFromOrganizationalGroup {

<#
.SYNOPSIS
    Remove a list of resource items from the Organizational Group that contains them 

.PARAMETER resourceItemGuids
    comma-delimiated list of the GUIDs of the resource items to be removed 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group containing the resource items 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
string resItemGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}";
Guid organizationalGroupGuid = new Guid("{6c8cc2fa-b802-45b1-be61-e2aa1480f254}");
m_proxy.RemoveResourcesFromOrganizationalGroup(resItemGuids, organizationalGroupGuid);
CopyVBScript
resItemGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}"
organizationalGroupGuid = "{6c8cc2fa-b802-45b1-be61-e2aa1480f254}"
call scopingManagement.RemoveResourcesFromOrganizationalGroup(resItemGuids, organizationalGroupGuid)
Copy? 
AltirisASDKNS.exe cmd:RemoveResourcesFromOrganizationalGroup "resourceItemGuids:%resItemGuids%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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

