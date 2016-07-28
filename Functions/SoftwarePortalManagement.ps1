
Function AddUserOrGroupToPublishingItem {

<#
.SYNOPSIS
    

.PARAMETER publishingItemGuid
     

.PARAMETER userOrGroup
     

.PARAMETER preApproved
     

.PARAMETER recommended
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userOrGroup,
			[Parameter(Mandatory=$true)]
			[bool]$preApproved,
			[Parameter(Mandatory=$true)]
			[bool]$recommended,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup
 			preApproved = $preApproved
 			recommended = $recommended

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/AddUserOrGroupToPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwarePortalSetting {

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


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForAdmin {

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


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForAdmin"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForManager {

<#
.SYNOPSIS
    

.PARAMETER managerLogin
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$managerLogin,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			managerLogin = $managerLogin

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForManager"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetUsersForPublishingItem {

<#
.SYNOPSIS
    

.PARAMETER publishingItemGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetUsersForPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishPolicy {

<#
.SYNOPSIS
    

.PARAMETER policyGuid
     

.PARAMETER name
     

.PARAMETER description
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishSoftwareResource {

<#
.SYNOPSIS
    

.PARAMETER softwareResourceGuid
     

.PARAMETER commandLineGuid
     

.PARAMETER name
     

.PARAMETER description
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			commandLineGuid = $commandLineGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishSoftwareResource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveUserOrGroupFromPublishingItem {

<#
.SYNOPSIS
    

.PARAMETER publishingItemGuid
     

.PARAMETER userOrGroup
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userOrGroup,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/RemoveUserOrGroupFromPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwarePortalSetting {

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


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SoftwareRequestAction {

<#
.SYNOPSIS
    

.PARAMETER softwareRequestGuid
     

.PARAMETER action
     

.PARAMETER comment
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareRequestGuid,
			[Parameter(Mandatory=$true)]
			[string]$action,
			[Parameter(Mandatory=$true)]
			[string]$comment,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareRequestGuid = $softwareRequestGuid
 			action = $action
 			comment = $comment

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SoftwareRequestAction"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddUserOrGroupToPublishingItem {

<#
.SYNOPSIS
    Add user/group to publishing item. 

.PARAMETER publishingItemGuid
    Publishing item guid. 

.PARAMETER userOrGroup
    User or group name. 

.PARAMETER preApproved
    True if published software/policy can be request by user without managers approval. 

.PARAMETER recommended
    True, if published software/policy will be visible to user by default. 

.EXAMPLE 
    Add user to publishing item 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid publishingItemGuid = new Guid("4D140F0D-911F-4c57-B4B5-A562BC6DC611");
portalManagement.AddUserOrGroupToPublishingItem(publishingItemGuid, "user1", true, true);
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
publishingItemGuid = "4D140F0D-911F-4c57-B4B5-A562BC6DC611"
call portalManagement.AddUserOrGroupToPublishingItem(publishingItemGuid, "user1", true, true)
Copy? 
set SWM=AltirisASDKSWM.exe
set PUBLISHING_ITEM_GUID=4D140F0D-911F-4c57-B4B5-A562BC6DC611                
set USER_NAME=user1
set PRE_APPROVED=true
set RECOMMENDED=true
%SWM% cmd:AddUserOrGroupToPublishingItem "publishingItemGuid:%PUBLISHING_ITEM_GUID%" "userOrGroup:%USER_NAME%" "preApproved:%PRE_APPROVED%" "recommended:%RECOMMENDED%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userOrGroup,
			[Parameter(Mandatory=$true)]
			[bool]$preApproved,
			[Parameter(Mandatory=$true)]
			[bool]$recommended,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup
 			preApproved = $preApproved
 			recommended = $recommended

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/AddUserOrGroupToPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwarePortalSetting {

<#
.SYNOPSIS
    Get software portal setting. 

.PARAMETER settingName
    Setting name. 

.EXAMPLE 
    Get software portal setting "MaxUserRequests" 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
string maxRequests = portalManagement.GetSoftwarePortalSetting("MaxUserRequests");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
maxRequests = portalManagement.GetSoftwarePortalSetting("MaxUserRequests")
Copy? 
set SWM=AltirisASDKSWM.exe
set SETTING_NAME=MaxUserRequests
%SWM% cmd:GetSoftwarePortalSetting "settingName:%SETTING_NAME%"        
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Software Portal Setting %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Setting nameSetting value
"Maximum number of open requests per user" or "MaxUserRequests"int
"Company logo" or "CompanyLogo"path
"Company name" or "CompanyName"string
"Publish software across all trusted domains" or "PublishAcrossDomains"boolean
"End task after" or "EndTaskAfter"int
"NotificationEmail" or "Notification Email"string
"UseNotificationEmail" or "Use Notification Email"string
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


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForAdmin {

<#
.SYNOPSIS
    Retrieve a list of software requests that needs managers approval. List will include request that are visible for software portal administrator. 

.EXAMPLE 
    Retrieve a list of software requests that needs managers approval and visible for administrator 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();                
SoftwareRequestDetails[] requestDetails = portalManagement.GetSoftwareRequestsForAdmin();
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")                
requestDetails = portalManagement.GetSoftwareRequestsForAdmin()
Copy? 
%SWM% cmd:GetSoftwareRequestsForAdmin
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


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForAdmin"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForManager {

<#
.SYNOPSIS
    Retrieve a list of software requests that needs managers approval. List will include only request that can accept. 

.PARAMETER managerLogin
    manager login. 

.EXAMPLE 
    Retrieve a list of software requests that needs managers approval 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();                
SoftwareRequestDetails[] requestDetails = portalManagement.GetSoftwareRequestsForManager("manager1");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")                
requestDetails = portalManagement.GetSoftwareRequestsForManager("manager1")
Copy? 
set SWM=AltirisASDKSWM.exe
set MANAGER_LOGIN=manager1
%SWM% cmd:GetSoftwareRequestsForManager "managerLogin:%MANAGER_LOGIN%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$managerLogin,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			managerLogin = $managerLogin

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForManager"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetUsersForPublishingItem {

<#
.SYNOPSIS
    Get information about user/groups for publishing item. 

.PARAMETER publishingItemGuid
    Publishing item guid. 

.EXAMPLE 
    Get information about user/groups for publishing item 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid publishingItemGuid = new Guid("4D140F0D-911F-4c57-B4B5-A562BC6DC611");
UserOrGroupDetails[] details = portalManagement.GetUsersForPublishingItem(publishingItemGuid);
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
publishingItemGuid = "4D140F0D-911F-4c57-B4B5-A562BC6DC611"
usersDetails = portalManagement.GetUsersForPublishingItem(publishingItemGuid)
Copy? 
set SWM=AltirisASDKSWM.exe
set PUBLISHING_ITEM_GUID=4D140F0D-911F-4c57-B4B5-A562BC6DC611                
%SWM% cmd:GetUsersForPublishingItem "publishingItemGuid:%PUBLISHING_ITEM_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetUsersForPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishPolicy {

<#
.SYNOPSIS
    Create publishing item for managed software delivery policy. Note that user or group should be added to publishing item by using AddUserOrGroupToPublishingItem(Guid, String, Boolean, Boolean) method. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER name
    Policy name visible for user in the software portal. 

.PARAMETER description
    Policy description visible for user in the software portal. 

.EXAMPLE 
    Publish policy 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid policyGuid = new Guid("1F64CD48-4205-44de-BA4F-2CDDED84E163");        
Guid itemGuid = portalManagement.PublishPolicy(policyGuid, "Test Policy", "Description");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
policyGuid = "1F64CD48-4205-44de-BA4F-2CDDED84E163"
itemGuid = portalManagement.PublishPolicy(policyGuid, "Test Policy", "Description")
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=1F64CD48-4205-44de-BA4F-2CDDED84E163
set NAME=Test Policy
set DESCRIPTION=Description 
%SWM% cmd:PublishPolicy "policyGuid:%POLICY_GUID%" "name:%NAME%" "description:%DESCRIPTION%"        
for /f "tokens=2" %%a in (temp.txt) do @(@set PUBLISHING_ITEM_GUID=%%a)
echo Created publishing item %PUBLISHING_ITEM_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishSoftwareResource {

<#
.SYNOPSIS
    Create publishing item for software resource command line. Note that user or group should be added to publishing item by using AddUserOrGroupToPublishingItem(Guid, String, Boolean, Boolean) method. 

.PARAMETER softwareResourceGuid
    Software resource guid. 

.PARAMETER commandLineGuid
    Command line guid. 

.PARAMETER name
    Software name visible for user in the software portal. 

.PARAMETER description
    Software description visible for user in the software portal. 

.EXAMPLE 
    Create publishing item for software resource command line 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid commandLineGuid = new Guid("FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3");
Guid itemGuid = portalManagement.PublishSoftwareResource(softwareResourceGuid, commandLineGuid, "Test Software", "Description");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
commandLineGuid = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3"
itemGuid = portalManagement.PublishSoftwareResource(softwareResourceGuid, commandLineGuid, "Test Software", "Description")
Copy? 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
set CMD_GUID=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3
set NAME=Test Software 
set DESCRIPTION=Description 
%SWM% cmd:PublishSoftwareResource "softwareResourceGuid:%RESOURCE_GUID%" "commandLineGuid:%CMD_GUID%" "name:%NAME%"        "description:%DESCRIPTION%"        
for /f "tokens=2" %%a in (temp.txt) do @(@set PUBLISHING_ITEM_GUID=%%a)
echo Created publishing item %PUBLISHING_ITEM_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			commandLineGuid = $commandLineGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishSoftwareResource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveUserOrGroupFromPublishingItem {

<#
.SYNOPSIS
    Remove user from publishing item. 

.PARAMETER publishingItemGuid
    Publishing item guid. 

.PARAMETER userOrGroup
    User or group name. 

.EXAMPLE 
    Remove user from publishing item 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid publishingItemGuid = new Guid("4D140F0D-911F-4c57-B4B5-A562BC6DC611");
portalManagement.RemoveUserOrGroupFromPublishingItem(publishingItemGuid, "user1");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
publishingItemGuid = "4D140F0D-911F-4c57-B4B5-A562BC6DC611"
call portalManagement.RemoveUserOrGroupFromPublishingItem(publishingItemGuid, "user1")
Copy? 
set SWM=AltirisASDKSWM.exe
set PUBLISHING_ITEM_GUID=4D140F0D-911F-4c57-B4B5-A562BC6DC611                
set USER_NAME=user1
%SWM% cmd:RemoveUserOrGroupFromPublishingItem "publishingItemGuid:%PUBLISHING_ITEM_GUID%" "userOrGroup:%USER_NAME%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userOrGroup,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/RemoveUserOrGroupFromPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwarePortalSetting {

<#
.SYNOPSIS
    Set software portal setting. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set software portal setting "MaxUserRequests" 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
portalManagement.SetSoftwarePortalSetting("MaxUserRequests", "50");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
call portalManagement.SetSoftwarePortalSetting("MaxUserRequests", "50")
Copy? 
set SWM=AltirisASDKSWM.exe
set SETTING_NAME=MaxUserRequests
set SETTING_VALUE=50
%SWM% cmd:SetSoftwarePortalSetting "settingName:%SETTING_NAME%"        "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
Setting nameSetting value
"Maximum number of open requests per user" or "MaxUserRequests"int
"Company logo" or "CompanyLogo"path
"Company name" or "CompanyName"string
"Publish software across all trusted domains" or "PublishAcrossDomains"boolean
"End task after" or "EndTaskAfter"int
"NotificationEmail" or "Notification Email"string
"UseNotificationEmail" or "Use Notification Email"string
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


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SoftwareRequestAction {

<#
.SYNOPSIS
    Run action for software request. 

.PARAMETER softwareRequestGuid
    Guid of the software request. 

.PARAMETER action
    Action to run. Values: Approve, OnHold, Deny, AddComment 

.PARAMETER comment
    Comment for action 

.EXAMPLE 
    Run action 'OnHold' for software request 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid softwareRequestGuid = new Guid("54A291FD-AF44-4e64-A68F-7A397B5B230A");        
portalManagement.SoftwareRequestAction(softwareRequestGuid, "OnHold", "Comment");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
softwareRequestGuid = "54A291FD-AF44-4e64-A68F-7A397B5B230A"
call portalManagement.SoftwareRequestAction(softwareRequestGuid, "OnHold", "Comment")
Copy? 
set SWM=AltirisASDKSWM.exe
set SOFTWARE_REQUEST_GUID=54A291FD-AF44-4e64-A68F-7A397B5B230A
set ACTION=OnHold
set COMMENT=Comment
%SWM% cmd:SoftwareRequestAction "softwareRequestGuid:%SOFTWARE_REQUEST_GUID%" "action:%ACTION%" "comment:%COMMENT%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareRequestGuid,
			[Parameter(Mandatory=$true)]
			[string]$action,
			[Parameter(Mandatory=$true)]
			[string]$comment,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareRequestGuid = $softwareRequestGuid
 			action = $action
 			comment = $comment

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SoftwareRequestAction"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

