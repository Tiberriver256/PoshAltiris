
Function Add-RoleMembers {

<#
.SYNOPSIS
    Add members to a security role. 

.PARAMETER roleGuid
    The guid of the role to add to. 

.PARAMETER memberNames
    A comma-seperated list of names to be added to the role. A name may be either (1) a fully qualified Windows credential name including both the domain and user name, such as DOMAIN\User, OR (2) an SMP User name. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167";
string names = "DOMAIN\User1, DOMAIN\User2";
bool success = m_proxy.AddRoleMembers(roleGuid, names);
CopyVBScript
roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167"
names = "DOMAIN\User1, SomeSmpUser"
success = securityManagement.AddRoleMembers(roleGuid, names)
Copy? 
AltirisASDKNS.exe cmd:AddRoleMembers roleGuid:"7644e630-27ab-4d5e-9ce3-f2b3fff6a167" memberNames:"DOMAIN\User1, "
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    IMPORTANT: A Windows credential can only be added to a role if that credential has previously been associated with an SMP User account. Make sure that each Windows credential has an associated SMP User account before attempting to add it to a role. (This can be done in the SMP Console through the "Add Credentials" button for the SMP User.)
If any name in the list is not found in the database, the name is not added to the role. Remaining names may still be added. To find out if a name was not added, check the return value of the API - false indicates one or more names failed. Then check the log (Warning level) to see which names failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$memberNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			memberNames = $memberNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AddRoleMembers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Add-RolePrivileges {

<#
.SYNOPSIS
    Add privileges to a security role. 

.PARAMETER roleGuid
    Guid of the security role. 

.PARAMETER privilegeNames
    A comma-seperated list of privilege names to add to the role. The privilegeNames parameter takes those privileges as they are seen in the console under the role management. They are not case sensitive. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317";
string names = "Create Reports, Import XML";
bool success = m_proxy.AddRolePrivileges(roleGuid, names);
CopyVBScript
roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317"
names = "Create Reports, Import XML"
success = securityManagement.AddRolePrivileges(roleGuid, names)
Copy? 
AltirisASDKNS.exe cmd:AddRolePrivileges roleGuid:"c1a02088-b36a-4e32-8b86-2a22a947d2317" privilegeNames:"Create Reports, Import XML"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    If any privileges in the list is not found in the database, the privileges is not added to the role. Remaining privileges may still be added. To find out if a privilege was not added, check the return value of the API - false indicates one or more privileges failed. Then check the log (Warning level) to see which privileges failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$privilegeNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			privilegeNames = $privilegeNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AddRolePrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-ItemOwnership {

<#
.SYNOPSIS
    Sets the ownership of the item to the requested user. 

.PARAMETER itemGuid
    Guid of the item to set. 

.PARAMETER userName
    Name of the SMP User to assign ownership of the item to. This name must be an SMP User, not a Windows credential. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string itemGuid = "65bb6c45-b013-4599-96dd-32a955404ed5";
string name = @"My SMP Account";
bool success = m_proxy.AssignItemOwnership(itemGuid, name);
CopyVBScript
itemGuid = "65bb6c45-b013-4599-96dd-32a955404ed5"
name = "My SMP Account"
success = securityManagement.AssignItemOwnership(itemGuid, name)
Copy? 
AltirisASDKNS.exe cmd:AssignItemOwnership itemGuid:"65bb6c45-b013-4599-96dd-32a955404ed5" userName:"My SMP Account"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The calling user must have permissions to make change security changes. The requested user must have permissions to take ownership of items.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			userName = $userName

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AssignItemOwnership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-Role {

<#
.SYNOPSIS
    Creates a new security role in the NS database. 

.PARAMETER roleName
    The name of the role. 

.PARAMETER roleDescription
    A description of the role. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = m_proxy.CreateNewRole("New Role", "New Role description");
CopyVBScript
roleGuid = securityManagement.CreateNewRole("New Role", "New Role description")
Copy? 
AltirisASDKNS.exe cmd:CreateNewRole roleName:"New Role" roleDescription:"New Role description"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleName,
			[Parameter(Mandatory=$true)]
			[string]$roleDescription,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleName = $roleName
 			roleDescription = $roleDescription

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/CreateNewRole"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-Role {

<#
.SYNOPSIS
    Removes a security role in the NS database. 

.PARAMETER roleGuid
    The guid of the role. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
m_proxy.DeleteRole(roleGuid);
CopyVBScript
call securityManagement.DeleteRole(roleGuid)
Copy? 
rem This must be an existing role guid.
set roleGuid="30a14442-3070-484d-ab97-1b6df7aa040a"
AltirisASDKNS.exe cmd:DeleteRole roleGuid:%roleGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$roleGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/DeleteRole"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Disable-PermissionInheritance {

<#
.SYNOPSIS
    Set the item to not inherit permissions from its parent object. 

.PARAMETER itemGuid
    The guid of the item to set. 

.PARAMETER actionFlag
    The action to take when removing inheritance. 1=Remove inherited permissions, 2=Copy inherited permissions. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2";
bool success = m_proxy.DisablePermissionInheritance(itemGuid, 1);
CopyVBScript
itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2"
success = itemManagement.DisablePermissionInheritance(itemGuid, 1)
Copy? 
AltirisASDKNS.exe cmd:DisablePermissionInheritance itemGuid:"e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2" actionFlag:1
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuid,
			[Parameter(Mandatory=$true)]
			[int]$actionFlag,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			actionFlag = $actionFlag

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/DisablePermissionInheritance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Enable-PermissionInheritance {

<#
.SYNOPSIS
    Set the item to inherit permissions from its parent object. 

.PARAMETER itemGuid
    The guid of the item to set. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2";
bool success = m_proxy.EnablePermissionInheritance(itemGuid);
CopyVBScript
itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2"
success = itemManagement.EnablePermissionInheritance(itemGuid)
Copy? 
AltirisASDKNS.exe cmd:EnablePermissionInheritance itemGuid:"e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/EnablePermissionInheritance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Find-RoleByName {

<#
.SYNOPSIS
    This method will allow you to find a role by its name. 

.PARAMETER roleName
    The name of the role. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = m_proxy.FindRoleByName("Existing Role Name");
CopyVBScript
roleGuid = securityManagement.FindRoleByName("Existing Role Name")
Copy? 
AltirisASDKNS.exe cmd:FindRoleByName roleName:"Existing Role Name"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleName = $roleName

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/FindRoleByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-RoleMembers {

<#
.SYNOPSIS
    Remove members from a security role. 

.PARAMETER roleGuid
    The guid of the role to remove from. 

.PARAMETER memberNames
    A comma-seperated list of names to be removed from the role. A name may be either (1) a fully qualified Windows credential name including both the domain and user name, such as DOMAIN\User, OR (2) an SMP User name. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167";
string names = "DOMAIN\User1, SomeSmpUser";
bool success = m_proxy.RemoveRoleMembers(roleGuid, names);
CopyVBScript
roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167"
names = "DOMAIN\User1, SomeSmpUser"
success = securityManagement.RemoveRoleMembers(roleGuid, names)
Copy? 
AltirisASDKNS.exe cmd:RemoveRoleMembers roleGuid:"7644e630-27ab-4d5e-9ce3-f2b3fff6a167" memberNames:"DOMAIN\User1, SomeSmpUser"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    NOTE: A Windows credential can only be removed from a role if that credential has previously been associated with an SMP User account. Make sure that each Windows credential has an associated SMP User account before attempting to remove it from a role. (This can be verified in the SMP Console under the "Credentials" heading for the SMP User.)
If any name in the list is not found in the database, the name is not removed from the role. Remaining names may still be removed. To find out if a name was not removed, check the return value of the API - false indicates one or more names failed. Then check the log (Warning level) to see which names failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$memberNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			memberNames = $memberNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/RemoveRoleMembers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-RolePrivileges {

<#
.SYNOPSIS
    Remove privileges from a security role. 

.PARAMETER roleGuid
    Guid of the security role. 

.PARAMETER privilegeNames
    A comma-seperated list of privilege names to remove from the role. The privilegeNames parameter takes those privileges as they are seen in the console under the role management. They are not case sensitive. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317";
string names = "Create Reports, Import XML";
bool success = m_proxy.RemoveRolePrivileges(roleGuid, names);
CopyVBScript
roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317"
names = "Create Reports, Import XML"
success = securityManagement.RemoveRolePrivileges(roleGuid, names)
Copy? 
AltirisASDKNS.exe cmd:RemoveRolePrivileges roleGuid:"c1a02088-b36a-4e32-8b86-2a22a947d2317" privilegeNames:"Create Reports, Import XML"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    If any privileges in the list is not found in the database, the privileges is not removed from the role. Remaining privileges may still be removed. To find out if a privilege was not removed, check the return value of the API - false indicates one or more privileges failed. Then check the log (Warning level) to see which privileges failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$privilegeNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			privilegeNames = $privilegeNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/RemoveRolePrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

