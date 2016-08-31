
Function Add-SoftwareDeliveryItem {

<#
.SYNOPSIS
    Add software resource or task to the policy. 

.PARAMETER policyGuid
    Policy Guid (existing or returned by CreatePolicy(String, String) method. 

.PARAMETER softwareOrTaskGuid
    Software resource guid or task guid. 

.EXAMPLE 
    Add new software resource. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
Guid softwareResourceGuid = new Guid("B70D80F2-DF32-41f9-A06F-A9EAA8B7FB0E");
DeliveryItemDetails deliveryItem = policyManagement.AddDeliveryItem(policyGuid, softwareResourceGuid);
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
softwareResourceGuid = "B70D80F2-DF32-41f9-A06F-A9EAA8B7FB0E"
set deliveryItem = policyManagement.AddDeliveryItem(policyGuid, softwareResourceGuid)
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SOFTWARE_RESOURCE_GUID=B70D80F2-DF32-41f9-A06F-A9EAA8B7FB0E
%SWM% cmd:AddDeliveryItem "policyGuid:%POLICY_GUID%" "softwareOrTaskGuid:%SOFTWARE_RESOURCE_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Policy can be created using CreatePolicy(String, String) method.
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
    Create empty managed software delivery policy. 

.PARAMETER name
    Policy name. Can't be null or empty. 

.PARAMETER description
    Policy description. If null then policy will have empty description. 

.EXAMPLE 
    Create a new policy named "Software Workspace Virtualization 6.1 SP7" with "This policy installs SWV 6.1.1240 build": 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = policyManagement.CreatePolicy("Software Workspace Virtualization 6.1 SP7",
  "This policy installs SWV 6.1.1240 build");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = policyManagement.CreatePolicy("Software Workspace Virtualization 6.1 SP7", "This policy installs SWV 6.1.1240 build")
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_NAME=Software Workspace Virtualization 6.1 SP7
set POLICY_DESC=This policy installs SWV 6.1.1240 build
%SWM% cmd:CreatePolicy "name:%POLICY_NAME%" "description:%POLICY_DESC%"
for /f "tokens=2" %%a in (temp.txt) do @(@set POLICY_GUID=%%a)
echo Created policy %POLICY_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    The default settings for this policy can be changed by SetDefaultPolicySetting(String, String) method.
Policy will be created in the "Policies\Software\Managed Software Delivery" folder. Policy state will be disabled.
Software resources or tasks can be added to the policy using AddDeliveryItem(Guid, Guid) method.
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
    Get default policy setting. This methods allows to find out which settings will be used for policy created by CreatePolicy(String, String) method. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.EXAMPLE 
    Get default policy setting "Prompt user when this policy is available". 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
string flag = policyManagement.GetDefaultPolicySetting("Prompt user when this policy is available");
bool result;
if (Boolean.TryParse(flag, out result))
{
  ...
}
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
flag = policyManagement.GetDefaultPolicySetting("Prompt user when this policy is available")
Copy? 
set SWM=AltirisASDKSWM.exe
set SETTING_NAME=Prompt user when this policy is available
%SWM% cmd:GetDefaultPolicySetting "settingName:%SETTING_NAME%"
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Default policy setting %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
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
    Get policy delivery item(s). Type of the delivery item can found by examining Type member of returned DeliveryItemDetails structure. 

.PARAMETER policyGuid
    Policy guid. 

.EXAMPLE 
    Get delivery items. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");        
DeliveryItemDetails[] deliveryItems = policyManagement.GetDeliveryItems(policyGuid);
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItems = policyManagement.GetDeliveryItems(policyGuid)
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
%SWM% cmd:GetDeliveryItems "policyGuid:%POLICY_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Delivery item can be added using AddDeliveryItem(Guid, Guid) method.
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
    Get delivery item settings. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER deliveryItemGuid
    Delivery item guid. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.EXAMPLE 
    Get delivery item setting "Perform software compliance check". 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
Guid deliveryItemGuid = new Guid("827D9A7C-0764-4af8-AF71-313ED7607C50");    
string flag = policyManagement.GetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItemGuid = "827D9A7C-0764-4af8-AF71-313ED7607C50"
flag = policyManagement.GetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check")
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set DELIVERY_ITEM_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Perform software compliance check
%SWM% cmd:GetDeliveryItemSetting "policyGuid:%POLICY_GUID%" "deliveryItemGuid:%DELIVERY_ITEM_GUID%" "settingName:%SETTING_NAME%"
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Delivery Item Setting %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always uses value converted to string using invarian culture.
Software delivery item setting names:
Setting nameSetting value
"Perform software compliance check" or "ComplianceCheck"boolean
"Command line" or "Commandline"Command line Guid
"Package"Package Guid
"Automatically upgrade software that has been superseded by this software" or "UpgradeSuperseded"boolean
"Do not install if a newer version of this software is already installed" or "NoDowngrade"boolean
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int

Task delivery setting names:
Setting nameSetting value
"Override the policy settings for this task" or "OverridePolicy"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
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
    Get policy setting value. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.EXAMPLE 
    Get "Prompt user when this policy is available" for Software virtualization agent rollout policy. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid rolloutPolicyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
string flag = policyManagement.GetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available");
bool result;
if (Boolean.TryParse(flag, out result))
{
  ...
}
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
rolloutPolicyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
flag = policyManagement.GetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available")
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Prompt user when this policy is available
%SWM% cmd:GetPolicySetting "policyGuid:%POLICY_GUID%" "settingName:%SETTING_NAME%"
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Policy setting value %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"Virtual layer name" or "VirtualLayer"Virtual layer name or "" to disable installation into virtual layer
"Display name" or "DisplayName"The name displayed in the Symantec Management Agent
"Display description" or "DisplayDescription"The description displayed in the Symantec Management Agent 
"Enable verbose reporting" or "EnableVerbose"boolean
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
    Remove delivery item from policy. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER deliveryItemGuid
    Delivery item guid. 

.EXAMPLE 
    Remove delivery item. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");        
Guid deliveryItemGuid = new Guid("827D9A7C-0764-4af8-AF71-313ED7607C50");    
policyManagement.RemoveDeliveryItem(policyGuid, deliveryItemGuid);
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItemGuid = "827D9A7C-0764-4af8-AF71-313ED7607C50"
call policyManagement.RemoveDeliveryItem(policyGuid, deliveryItemGuid)
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set DELIVERY_ITEM_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
%SWM% cmd:RemoveDeliveryItem "policyGuid:%POLICY_GUID%" "deliveryItemGuid:%DELIVERY_ITEM_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    This method only removes reference to the software resource or task from policy. The software resource or task itself are not affected. 
Delivery item can be added using AddDeliveryItem(Guid, Guid) method.
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
    Set default policy settings. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set defult policy setting "Prompt user when this policy is available". 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
policyManagement.SetDefaultPolicySetting("Prompt user when this policy is available", "true");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
call policyManagement.SetDefaultPolicySetting("Prompt user when this policy is available", "true")
Copy? 
set SWM=AltirisASDKSWM.exe                
set SETTING_NAME=Prompt user when this policy is available
set SETTING_VALUE=true
%SWM% cmd:SetDefaultPolicySetting "settingName:%SETTING_NAME%" "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always uses value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
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
    Set delivery item setting value. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER deliveryItemGuid
    Delivery item guid. 

.PARAMETER settingName
    Setting name. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set "Perform software compliance check" for delivery item. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
Guid deliveryItemGuid = new Guid("827D9A7C-0764-4af8-AF71-313ED7607C50");    
policyManagement.SetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check", "true");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
rolloutPolicyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItemGuid = "827D9A7C-0764-4af8-AF71-313ED7607C50"    
call policyManagement.SetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check", "true")
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set DELIVERY_ITEM_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Perform software compliance check
set SETTING_VALUE=true
%SWM% cmd:SetDeliveryItemSetting "policyGuid:%POLICY_GUID%" "deliveryItemGuid:%DELIVERY_ITEM_GUID%" "settingName:%SETTING_NAME%" "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Policy guid or delivery item guid or setting name is empty. Policy or delivery item does not exist Policy is not Managed Delivery Policy or delivery item is not Software Delivery Item or Task Delivery Item If setting is not implemented If delivery item setting can't be set. Look at inner exception for more details. 
Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Software delivery item setting names:
Setting nameSetting value
"Perform software compliance check" or "ComplianceCheck"boolean
"Command line" or "Commandline"Command line Guid
"Package"Package Guid
"Automatically upgrade software that has been superseded by this software" or "UpgradeSuperseded"boolean
"Do not install if a newer version of this software is already installed" or "NoDowngrade"boolean
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int

Task delivery setting names:
Setting nameSetting value
"Override the policy settings for this task" or "OverridePolicy"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
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
    Set policy setting value. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set "Prompt user when this policy is available" for Software virtualization agent rollout policy. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid rolloutPolicyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
policyManagement.SetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available", "true");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
rolloutPolicyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
call policyManagement.SetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available", "true")
Copy? 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Prompt user when this policy is available
set SETTING_VALUE=true
%SWM% cmd:SetPolicySetting "policyGuid:%POLICY_GUID%" "settingName:%SETTING_NAME%" "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always uses value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"Virtual layer name" or "VirtualLayer"Virtual layer name or "" to disable installation into virtual layer
"Display name" or "DisplayName"The name displayed in the Symantec Management Agent
"Display description" or "DisplayDescription"The description displayed in the Symantec Management Agent 
"Enable verbose reporting" or "EnableVerbose"boolean
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

