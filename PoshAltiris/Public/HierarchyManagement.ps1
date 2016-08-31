
Function New-HierarchyCustomEventRule {

<#
.SYNOPSIS
    Create a custom Hierarchy event replication rule 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER replicationType
    Specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent resource types or resource targets. More specifically, the GUID item must be of class type "ResourceTypeItem" or "ResourceTarget." 

.PARAMETER eventClassGuids
    specifies the event classes to be replicated 

.PARAMETER rowCount
    the maximum number of rows this rule will send upon replication 

.PARAMETER resend
    if true, replication will resend all entities, regardless of their timestamp 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string resourceIdGuids = "597ab6b8-1057-4a7d-b6f1-2665f07987cc";
string eventClassGuids = "{974FA2FB-C797-41b1-BCA7-0A285D0745D0}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateCustomEventHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
resourceIdGuids = "597ab6b8-1057-4a7d-b6f1-2665f07987cc"
eventClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateCustomEventHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateCustomEventHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%customScheduleXml%" "resourceType:%resType%" "resourceIdentificationGuids:%resourceIdGuids%" "eventClassGuids:%eventClassGuids%" "rowCount:%rowCount%" "resend:%resend%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$eventClassGuids,
			[Parameter(Mandatory=$true)]
			[int]$rowCount,
			[Parameter(Mandatory=$true)]
			[bool]$resend,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			eventClassGuids = $eventClassGuids
 			rowCount = $rowCount
 			resend = $resend
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomEventHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-HierarchyCustomItemRule {

<#
.SYNOPSIS
    Create a custom Hierarchy item replication rule 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Currently, the only acceptable input value is "Item." 

.PARAMETER collectionItemGuids
    the Item collection(s) this rule applies to. "Collection" in this context means the NS7 concept that is called a "filter" in the NS Console. 

.PARAMETER parentFolderGuid
    parent folder GUID of the rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateCustomItemHierarchyRule("myRule", "myRule description", true, scheduleXml, "Item", collectionGuids, parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateCustomItemHierarchyRule("myRule", "myRule description", true, scheduleXml, "Item", collectionGuids, parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateCustomItemHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%customScheduleXml%" "ruleType:Item" "collectionItemGuids:%collectionGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			ruleType = $ruleType
 			collectionItemGuids = $collectionItemGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomItemHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-HierarchyCustomResourceRule {

<#
.SYNOPSIS
    Create a Hierarchy resource replication rule for well-known objects and data running on a custom schedule. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER replicationType
    Specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent Resource Types or Resource Targets. 

.PARAMETER dataClassGuids
    comma-delimited list of the data classes to be replicated with the resources 

.PARAMETER verificationEnabled
    true to enabled verification 

.PARAMETER verificationLevel
    verification level 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string resourceIdGuids = "{493435f7-3b17-4c4c-b07f-c23e7ab7781f}";
string dataClassGuids = "{9e6f402a-6a45-4cba-9299-c2323f73a506}, {8ee53180-630e-438e-ad50-113610d2de13}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateCustomResourceHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, dataClassGuids, false, 0, "Up", parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
resourceIdGuids = "{493435f7-3b17-4c4c-b07f-c23e7ab7781f}";
dataClassGuids = "{9e6f402a-6a45-4cba-9299-c2323f73a506}, {8ee53180-630e-438e-ad50-113610d2de13}";
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateCustomResourceHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, dataClassGuids, false, 0, "Up", parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateCustomResourceHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%scheduleXml%" "replicationType:%replicationType%" "resourceIdentificationGuids:%resourceIdGuids%" "dataClassGuids:%dataClassGuids%" "verificationEnabled:%verificationEnabled%" "verificationLevel:%verificationLevel%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$dataClassGuids,
			[Parameter(Mandatory=$true)]
			[bool]$verificationEnabled,
			[Parameter(Mandatory=$true)]
			[int]$verificationLevel,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			dataClassGuids = $dataClassGuids
 			verificationEnabled = $verificationEnabled
 			verificationLevel = $verificationLevel
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomResourceHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-HierarchyCustomSecurityRule {

<#
.SYNOPSIS
    Create a custom Hierarchy security replication rule 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Acceptable input values are "Privilege" or "Role." 

.PARAMETER securityGuids
    The GUIDs of the security entities (i.e., Roles or Privileges) that this rule applies to. An example might be the GUID for the "Altiris Administrator" role, if the "ruleType" is set to "Role." If the "ruleType" is set to "Privilege," an example might be the GUID of the "ImportXML" privilege. 

.PARAMETER parentFolderGuid
    parent folder GUID 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}";
Guid parentFolderGuid = new Guid("{312323a3-b714-4779-bc88-e64dcb942558}");
m_proxy.CreateCustomSecurityHierarchyRule("myRule", "myRule description", true, scheduleXml, "Role", securityGuids, parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}");
ruleGuid = hierarchyManagement.CreateCustomSecurityHierarchyRule("myRule", "myRule description", true, scheduleXml, "Role", securityGuids, parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateCustomSecurityHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%customScheduleXml%" "ruleType:%ruleType%" "securityGuids:%securityGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$securityGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			ruleType = $ruleType
 			securityGuids = $securityGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomSecurityHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-HierarchyStandardEventRule {

<#
.SYNOPSIS
    Create a standard Hierarchy event replication rule for well-known objects and data. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER replicationType
    specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent resource types or resource targets. More specifically, the GUID item must be of class type "ResourceTypeItem" or "ResourceTarget." 

.PARAMETER eventClassGuids
    specifies the event classes to be replicated 

.PARAMETER rowCount
    the maximum number of rows this rule will send upon replication 

.PARAMETER resend
    if true, replication will resend all entities, regardless of their timestamp 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the new rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}";
string eventClassGuids = "{974FA2FB-C797-41b1-BCA7-0A285D0745D0}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateStandardEventHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}"
eventClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateStandardEventHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateStandardEventHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "resourceType:%resType%" "resourceIdentificationGuids:%resourceIdGuids%" "eventClassGuids:%eventClassGuids%" "rowCount:%rowCount%" "resend:%resend%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$eventClassGuids,
			[Parameter(Mandatory=$true)]
			[int]$rowCount,
			[Parameter(Mandatory=$true)]
			[bool]$resend,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			eventClassGuids = $eventClassGuids
 			rowCount = $rowCount
 			resend = $resend
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardEventHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-HierarchyStandardItemRule {

<#
.SYNOPSIS
    Create a standard Hierarchy item replication rule. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Currently, the only acceptable input value is "Item." 

.PARAMETER collectionItemGuids
    the Item collection(s) this rule applies to. "Collection" in this context means the NS7 concept that is called a "filter" in the NS Console. 

.PARAMETER parentFolderGuid
    parent folder GUID of the new rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateStandardItemHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Item", collectionGuids, parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateStandardItemHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Item", collectionGuids, parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateStandardItemHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "ruleType:Item" "collectionItemGuids:%collectionGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			ruleType = $ruleType
 			collectionItemGuids = $collectionItemGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardItemHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-HierarchyStandardResourceRule {

<#
.SYNOPSIS
    Create a standard Hierarchy resource replication rule. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER replicationType
    Specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent Resource Types or Resource Targets. 

.PARAMETER dataClassGuids
    comma-delimited list of the data classes to be replicated with the resources 

.PARAMETER verificationEnabled
    true to enabled verification 

.PARAMETER verificationLevel
    verification level 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the new rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}";
string dataClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}";
Guid parentFolderGuid = new Guid("{312323a3-b714-4779-bc88-e64dcb942558}");
m_proxy.CreateStandardResourceHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, dataClassGuids, true, 0, "Up", parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}"
dataClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateStandardResourceHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, dataClassGuids, true, 0, "Up", parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateStandardResourceHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "replicationType:%replicationType%" "resourceIdentificationGuids:%resourceIdGuids%" "dataClassGuids:%dataClassGuids%" "verificationEnabled:%verificationEnabled%" "verificationLevel:%verificationLevel%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$dataClassGuids,
			[Parameter(Mandatory=$true)]
			[bool]$verificationEnabled,
			[Parameter(Mandatory=$true)]
			[int]$verificationLevel,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			dataClassGuids = $dataClassGuids
 			verificationEnabled = $verificationEnabled
 			verificationLevel = $verificationLevel
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardResourceHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-HierarchyStandardSecurityRule {

<#
.SYNOPSIS
    Create a standard Hierarchy security replication rule for security objects and data. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Acceptable input values are "Privilege" or "Role." 

.PARAMETER securityGuids
    The GUIDs of the security entities (i.e., Roles or Privileges) that this rule applies to. An example might be the GUID for the "Altiris Administrator" role, if the "ruleType" is set to "Role." If the "ruleType" is set to "Privilege," an example might be the GUID of the "ImportXML" privilege. 

.PARAMETER parentFolderGuid
    parent folder GUID 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}";
Guid parentFolderGuid = new Guid("{312323a3-b714-4779-bc88-e64dcb942558}");
m_proxy.CreateStandardSecurityHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Role", securityGuids, parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}");
ruleGuid = hierarchyManagement.CreateStandardSecurityHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Role", securityGuids, parentFolderGuid)
Copy? 
AltirisASDKNS.exe cmd:CreateStandardSecurityHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "ruleType:Role" "securityGuids:%securityGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$securityGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			ruleType = $ruleType
 			securityGuids = $securityGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardSecurityHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Enable-HierarchyEditableProperty {

<#
.SYNOPSIS
    Enables or disables a Hierarchy-editable property 

.PARAMETER itemGuid
    GUID of the Item containing the property 

.PARAMETER propertyName
    name of the property to enable 

.PARAMETER enable
    set to true to enable, set to false to disable 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnableHierarchyEditableProperty(clonedObject.Guid, "Sample", true);
CopyVBScript
call hierarchyManagement.EnableHierarchyEditableProperty(clonedObject.Guid, "Sample", true)
Copy? 
AltirisASDKNS.exe cmd:EnableHierarchyEditableProperty "itemGuid:%itemGuid%" "propertyName:%propName%" "enable:true"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$propertyName,
			[Parameter(Mandatory=$true)]
			[bool]$enable,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			propertyName = $propertyName
 			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableHierarchyEditableProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Enable-HierarchyReplication {

<#
.SYNOPSIS
    Enable or disable whether the local Notification Server participates in a hierarchy environment. 

.PARAMETER enable
    Pass in true to enable replication for the local NS, false to disable replication. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnableHierarchyReplication(true);
CopyVBScript
call hierarchyManagement.EnableHierarchyReplication(true)
Copy? 
AltirisASDKNS.exe cmd:EnableHierarchyReplication "enable:true"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[bool]$enable,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableHierarchyReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Enable-ReplicationForItemInstance {

<#
.SYNOPSIS
    Enables or disables replication for the given Item instance 

.PARAMETER itemGuid
    GUID of the Item instance to be enabled or disabled 

.PARAMETER enable
    if true, instance replication is enabled; if false, instance replication is disabled 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnableReplicationForItemInstance(clonedObject.Guid, true);
CopyVBScript
call hierarchyManagement.EnableReplicationForItemInstance(clonedObject.Guid, true)
Copy? 
AltirisASDKNS.exe cmd:EnableReplicationForItemInstance "itemGuid:%itemGuid%" "enable:true"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[bool]$enable,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableReplicationForItemInstance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-HierarchyEnabledEditableProperties {

<#
.SYNOPSIS
    Get the names of the Hierarchy-editable properties on the given Item that are currently enabled 

.PARAMETER itemGuid
    the Item whose properties are examined 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.GetEnabledHierarchyEditableProperties(clonedObject.Guid);
CopyVBScript
properties = hierarchyManagement.GetEnabledHierarchyEditableProperties(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:GetEnabledHierarchyEditableProperties "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/GetEnabledHierarchyEditableProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-HierarchyEditableProperties {

<#
.SYNOPSIS
    Get the names of the Hierarchy-editable properties on the given Item 

.PARAMETER itemGuid
    the Item whose properties are examined 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.GetHierarchyEditableProperties(clonedObject.Guid);
CopyVBScript
properties = hierarchyManagement.GetHierarchyEditableProperties(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:GetHierarchyEditableProperties "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/GetHierarchyEditableProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Read-HierarchyIsManaged {

<#
.SYNOPSIS
    Determines if an item is Hierarchy-managed, that is, has been replicated from another server as part of Hierarchy replication. 

.PARAMETER itemGuid
    GUID of the item 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.IsHierarchyManaged(clonedObject.Guid);
CopyVBScript
isManaged = hierarchyManagement.IsHierarchyManaged(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:IsHierarchyManaged "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyManaged"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Read-HierarchyMember {

<#
.SYNOPSIS
    Returns true if the current Notification Server is a member of a hierarchy, returns false if the current NS is not a member of a hierarchy. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.IsHierarchyMember();
CopyVBScript
isMember = hierarchyManagement.IsHierarchyMember()
Copy? 
AltirisASDKNS.exe cmd:IsHierarchyMember
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


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyMember"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Read-HierarchyIsPublished {

<#
.SYNOPSIS
    Determines if an item is Hierarchy-published, that is, has been enabled for replication throughout a Hierarchy. 

.PARAMETER itemGuid
    GUID of the item 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.IsHierarchyPublished(clonedObject.Guid);
CopyVBScript
isPublished = hierarchyManagement.IsHierarchyPublished(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:IsHierarchyPublished "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyPublished"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-HierarchyCompleteReplication {

<#
.SYNOPSIS
    Run complete replication on the given Hierarcy Node item. 

.PARAMETER nodeGuid
    Guid of the Altiris.NS.Replication.Hierarchy.HierarchyNodeItem instance that represents the server you want to run replication for. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.RunCompleteReplication(clonedObject.Guid);
CopyVBScript
call hierarchyManagement.RunCompleteReplication(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:RunCompleteReplication "nodeGuid:%nodeGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$nodeGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			nodeGuid = $nodeGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/RunCompleteReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-HierarchyDifferentialReplication {

<#
.SYNOPSIS
    Run differential replication on the given Hierarcy Node item. 

.PARAMETER nodeGuid
    Guid of the HierarchyNodeItem instance that replication is to be run for. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.RunDifferentialReplication(clonedObject.Guid);
CopyVBScript
call hierarchyManagement.RunDifferentialReplication(clonedObject.Guid)
Copy? 
AltirisASDKNS.exe cmd:RunDifferentialReplication "nodeGuid:%nodeGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$nodeGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			nodeGuid = $nodeGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/RunDifferentialReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

