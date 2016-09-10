
Function Invoke-Task {

<#
.SYNOPSIS
    Immediately executes a task or job. 

.PARAMETER taskGuid
    The guid of the task or job to execute. 

.PARAMETER executionName
    The name given to this instance of the task or job execution. 

.PARAMETER inputParameters
    Xml-formatted input parameters for the task or job. 

.EXAMPLE 
    CopyC#
Guid taskGuid = new Guid("74b4e850-bdcf-4c09-876d-2ddc223dac8d");
string inputXml = @"
<inputParameters>
    <parameter>
        <name>@AssignedResources</name>
        <value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value>
    </parameter>
    <parameter>
        <name>@CompRequirements</name>
        <value>
                <minWaitTime>1 minutes</minWaitTime>
                <maxWaitTime>10 minutes</maxWaitTime>
                <minCompletion>95 %</minCompletion>
        </value>
    </parameter>
    <parameter>
        <name>@OverrideMaintenanceWindows</name>
        <value>
            <boolean>true</boolean>
        </value>
    </parameter>
</inputParameters>";
Guid taskInstanceGuid = m_proxy.ExecuteTask(taskGuid, "Some Name", inputXml);
CopyVBScript
taskGuid = "74b4e850-bdcf-4c09-876d-2ddc223dac8d"
inputXml = _
"<inputParameters>" & _
"    <parameter>" & _
"        <name>@AssignedResources</name>" & _
"        <value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value>" & _
"    </parameter> " & _
"    <parameter> " & _
"        <name>@CompRequirements</name>" & _
"        <value>" & _
"                <minWaitTime>1 minutes</minWaitTime>" & _
"                <maxWaitTime>10 minutes</maxWaitTime>" & _
"                <minCompletion>95 %</minCompletion>" & _
"        </value>" & _
"    </parameter>" & _
"    <parameter>" & _
"        <name>@OverrideMaintenanceWindows</name>" & _
"        <value>" & _
"            <boolean>true</boolean>" & _
"        </value>" & _
"    </parameter>" & _
"</inputParameters>"
taskInstanceGuid = taskManagement.ExecuteTask(taskGuid, "Some Name", inputXml)
Copy? 
set inputXml="<inputParameters><parameter><name>@AssignedResources</name><value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value></parameter><parameter><name>@CompRequirements</name><value><minWaitTime>1 minutes</minWaitTime><maxWaitTime>10 minutes</maxWaitTime><minCompletion>95 %</minCompletion>   </value></parameter><parameter><name>@OverrideMaintenanceWindows</name><value><boolean>true</boolean></value></parameter></inputParameters>"
set taskGuid="74b4e850-bdcf-4c09-876d-2ddc223dac8d"
AltirisASDKTask.exe cmd:ExecuteTask taskGuid:%taskGuid% executionName:"Some Name" inputParameters:%inputXml%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The value of the "inputParameters" parameter must be a string containing XML in a schema that defines the input parameters, and their values, that you want to pass to the selected Task. Each Task has its own set of input parameters, defined by that Task. Consequently, the parameter names and values in this ASDK method's "inputParameters" XML must match the previously-defined input parameters belonging to the Task you choose to run. This method will ignore any parameters you provide whose name does not match the name of an existing Input Parameter for your chosen Task.
The Input Parameters of a Task may be required or optional. Again, this is defined by the Task itself and is not affected by anything you pass in via the "inputParameters" parameter XML of this ASDK method. You must pass in a parameter name and value for every required Input Parameter of the Task. You MAY, but do not HAVE to, provide a parameter name and value for any Input Parameter that the Task has defined as optional. If the task or job does not take any input parameters, pass in the Empty String.
See the sample XML in the Examples section, below.
NOTE: Both the parameters @AssignedResources and @CompRequirements are required in the input XML. When using the input parameter named "@AssignedResources," the GUID(s) you pass in must represent existing GuidCollection(s) (Altiris.Common.GuidCollection). Each of the Guid Collections may contain any combination of computer(s), resource collection(s), organizational view(s), or resource target(s). When using @OverrideMaintenanceWindows the value can be either 'true' or 'false'.
The following table lists and describes the valid elements of the "inputParameters" XML:
XML Element NameDescriptionParent ElementRequired?
<inputParameters>The root elementN.A.Yes
<parameter>Contains a name and value for a Task input parameter, which will be passed to the task you choose to run.<inputParameters>A separate <parameter> element is required for each input parameter you wish to pass in to the Task.
<name>The name of the Task's Input Parameter, as defined by the Task itself.<parameter>Yes, if a <parameter> element is present
<value>The value you give to this Task Input Parameter.<parameter>Yes, if a <parameter> element is present
<minWaitTime>The number of minutes or hours to wait for 100% before checking for the minimum percentage.<value>This element is used only with a parameter named "@CompRequirements". (See the reference to data type "ClientTaskCompletionRequirements" in the table below).
<maxWaitTime>The maximum number of minutes or hours to wait for the minimum percent complete before the task fails.<value>This element is used only with a parameter named "@CompRequirements". (See the reference to data type "ClientTaskCompletionRequirements" in the table below).
<minCompletion>The number or percent of computers required to complete before moving on.<value>This element is used only with a parameter named "@CompRequirements". (See the reference to data type "ClientTaskCompletionRequirements" in the table below).

The following table lists the valid .NET 4.1 data types for values given to the Task Input Parameters and how those data types are to be represented in the XML's <value> element(s):
Input Parameter Data TypeHow Represented in the XML
System.Guid00000000-0000-0000-0000-000000000000
Altiris.Common.GuidCollectionA comma-separated list of GUID's
System.StringPlain text
System.Int32 (integer)Numerals in plain text
System.DateTimeText formatted in any of the accepted DateTime formats, e.g., YYYY-MM-DD HH:MM:SS
System.Boolean"true" or "false"
Altiris.TaskManagement.Common.ClientTask.ClientTaskCompletionRequirements<minWaitTime>1 minutes</minWaitTime> <!-- acceptable values are integers followed by any of: minutes, hours -->
<maxWaitTime>10 minutes</maxWaitTime> <!-- acceptable values are integers followed by any of: minutes, hours -->
<minCompletion>95 %</minCompletion> <!-- acceptable values are integers followed by any of: %, computers -->
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
			[Parameter(Mandatory=$true)]
			[string]$executionName,
			[Parameter(Mandatory=$true)]
			[string]$inputParameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			executionName = $executionName
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ExecuteTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-TaskExecutedInstances {

<#
.SYNOPSIS
    Gets the guids of task instances that have already executed. 

.PARAMETER taskGuid
    The guid of the task to look up. 

.EXAMPLE 
    CopyC#
Guid taskGuid = new Guid("74b4e850-bdcf-4c09-876d-2ddc223dac8d");
Guid[] guids = m_proxy.GetExecutedTaskInstances(taskGuid);
CopyVBScript
taskGuid = "74b4e850-bdcf-4c09-876d-2ddc223dac8d"
guids = taskManagement.GetExecutedTaskInstances(taskGuid)
Copy? 
set taskGuid="74b4e850-bdcf-4c09-876d-2ddc223dac8d"
AltirisASDKTask.exe cmd:GetExecutedTaskInstances taskGuid:%taskGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetExecutedTaskInstances"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-Task {

<#
.SYNOPSIS
    Get detailed information for a specific task. 

.PARAMETER taskGuid
    The task to retrieve. 

.EXAMPLE 
    CopyC#
Guid taskGuid = new Guid("74b4e850-bdcf-4c09-876d-2ddc223dac8d");
TaskDetails details = m_proxy.GetTask(taskGuid);
CopyVBScript
taskGuid = "74b4e850-bdcf-4c09-876d-2ddc223dac8d"
set details = taskManagement.GetTask(taskGuid)
Copy? 
set taskGuid="74b4e850-bdcf-4c09-876d-2ddc223dac8d"
AltirisASDKTask.exe cmd:GetTask taskGuid:%taskGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-TaskResourceStatus {

<#
.SYNOPSIS
    Gets the status information of a given task executed on a given resource. 

.PARAMETER taskInstanceGuid
    The guid of the task instance. 

.PARAMETER resourceGuid
    The guid of the resource. 

.EXAMPLE 
    CopyC#
Guid taskInstanceGuid = new Guid("705a1d00-40c6-4c44-9905-e73019bab754");
Guid resourceGuid = new Guid("1361c7d8-3946-49c1-acfb-8004b06e8df4");
TaskResourceStatusDetails details = m_proxy.GetTaskResourceStatus(taskInstanceGuid, resourceGuid);
CopyVBScript
taskInstanceGuid = "705a1d00-40c6-4c44-9905-e73019bab754"
resourceGuid = "1361c7d8-3946-49c1-acfb-8004b06e8df4"
set details = taskManagement.GetTaskResourceStatus(taskInstanceGuid, resourceGuid)
Copy? 
set taskInstanceGuid="705a1d00-40c6-4c44-9905-e73019bab754"
set resourceGuid="1361c7d8-3946-49c1-acfb-8004b06e8df4"
AltirisASDKTask.exe cmd:GetTaskResourceStatus taskInstanceGuid:%taskInstanceGuid% resourceGuid:%resourceGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskInstanceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$resourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskInstanceGuid = $taskInstanceGuid
 			resourceGuid = $resourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTaskResourceStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-Tasks {

<#
.SYNOPSIS
    Get the guids of all tasks and jobs under the given parent folder. 

.PARAMETER parentFolderGuid
    The guid of the folder to search in. 

.EXAMPLE 
    CopyC#
Guid taskManagementFolderGuid = new Guid("455ae0db-ec74-455b-b262-89421c96908d");
Guid[] guids = m_proxy.GetTasks(taskManagementFolderGuid);
CopyVBScript
taskManagementFolderGuid = "455ae0db-ec74-455b-b262-89421c96908d"
guids = taskManagement.GetTasks(taskManagementFolderGuid)
Copy? 
AltirisASDKTask.exe cmd:GetTasks parentFolderGuid:"455ae0db-ec74-455b-b262-89421c96908d"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTasks"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-TasksByType {

<#
.SYNOPSIS
    Get the guids of all tasks and/or jobs of a given type under the given parent folder. 

.PARAMETER parentFolderGuid
    The guid of the folder to search in. 

.PARAMETER taskTypeGuid
    The guid of the task types to look for. 

.EXAMPLE 
    CopyC#
Guid taskManagementFolderGuid = new Guid("455ae0db-ec74-455b-b262-89421c96908d");
Guid scriptTaskTypeGuid = new Guid("4F1B9B32-B5C6-4D83-8992-F73582217AAC");
Guid[] guids = m_proxy.GetTasksByType(taskManagementFolderGuid, scriptTaskTypeGuid);
CopyVBScript
taskManagementFolderGuid = "455ae0db-ec74-455b-b262-89421c96908d"
scriptTaskTypeGuid = "4F1B9B32-B5C6-4D83-8992-F73582217AAC"
guids = taskManagement.GetTasksByType(taskManagementFolderGuid, scriptTaskTypeGuid)
Copy? 
AltirisASDKTask.exe cmd:GetTasksByType parentFolderGuid:"455ae0db-ec74-455b-b262-89421c96908d" taskTypeGuid:"4F1B9B32-B5C6-4D83-8992-F73582217AAC"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The following table lists a few task types with their guids. 
TypeGuid
Server Job99DAA059-1D72-45B6-AC2E-1D24C29D66F5
Client Job12EE457F-F97C-4864-B9F8-FCDB4E6447DB
Policy Control Task61FC1C79-D0BB-4B7D-ACD2-EEB44ADB12FF
Power Control Task48AE1FF9-9A43-4244-98BD-98F2D5EBF583
Script Task4F1B9B32-B5C6-4D83-8992-F73582217AAC
Sql Query TaskC079C774-1F00-49EE-B4D4-C30466396C98
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
			[Parameter(Mandatory=$true)]
			[guid]$taskTypeGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parentFolderGuid = $parentFolderGuid
 			taskTypeGuid = $taskTypeGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTasksByType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-TaskStatus {

<#
.SYNOPSIS
    Gets the status information of a task or job. 

.PARAMETER taskGuid
    The guid of the task or job to retrieve status for. 

.EXAMPLE 
    CopyC#
Guid taskGuid = new Guid("74b4e850-bdcf-4c09-876d-2ddc223dac8d");
TaskStatusDetails[] details = m_proxy.GetTaskStatus(taskGuid);
CopyVBScript
taskGuid = "74b4e850-bdcf-4c09-876d-2ddc223dac8d"
details = taskManagement.GetTaskStatus(taskGuid)
Copy? 
set taskGuid="74b4e850-bdcf-4c09-876d-2ddc223dac8d"
AltirisASDKTask.exe cmd:GetTaskStatus taskGuid:%taskGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTaskStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-TaskScheduleCustom {

<#
.SYNOPSIS
    Creates a schedule for a task or job using a custom schedule. 

.PARAMETER taskGuid
    The guid of the task or job to be scheduled. 

.PARAMETER scheduleName
    The name given to this scheduled instance of the task or job. 

.PARAMETER description
    A description of this scheduled instance. 

.PARAMETER customScheduleXml
    Xml defining the custom schedule to use. 

.PARAMETER inputParameters
    Xml-formatted input parameters for the task or job. Only required input parameters must be supplied. 

.EXAMPLE 
    CopyC#
Guid taskGuid = new Guid("74b4e850-bdcf-4c09-876d-2ddc223dac8d");
string scheduleXml = "<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>";
string inputXml = @"
<inputParameters>
    <parameter>
        <name>@AssignedResources</name>
        <value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value>
    </parameter>
    <parameter>
        <name>@CompRequirements</name>
        <value>
                <minWaitTime>1 minutes</minWaitTime>
                <maxWaitTime>10 minutes</maxWaitTime>
                <minCompletion>95 %</minCompletion>
        </value>
    </parameter>
    <parameter>
        <name>@OverrideMaintenanceWindows</name>
        <value>
            <boolean>true</boolean>
        </value>
    </parameter>
</inputParameters>";
Guid taskInstanceGuid = m_proxy.ScheduleTaskCustom(taskGuid, "Some Name", "Some Description", scheduleXml, inputXml);
CopyVBScript
taskGuid = "74b4e850-bdcf-4c09-876d-2ddc223dac8d"
scheduleXml = "<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>"
inputXml = _
"<inputParameters>" & _
"    <parameter>" & _
"        <name>@AssignedResources</name>" & _
"        <value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value>" & _
"    </parameter> " & _
"    <parameter> " & _
"        <name>@CompRequirements</name>" & _
"        <value>" & _
"                <minWaitTime>1 minutes</minWaitTime>" & _
"                <maxWaitTime>10 minutes</maxWaitTime>" & _
"                <minCompletion>95 %</minCompletion>" & _
"        </value>" & _
"    </parameter>" & _
"    <parameter>" & _
"        <name>@OverrideMaintenanceWindows</name>" & _
"        <value>" & _
"            <boolean>true</boolean>" & _
"        </value>" & _
"    </parameter>" & _
"</inputParameters>"
taskInstanceGuid = taskManagement.ScheduleTaskCustom(taskGuid, "Some Name", "Some Description", scheduleXml, inputXml)
Copy? 
set inputXml="<inputParameters><parameter><name>@AssignedResources</name><value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value></parameter><parameter><name>@CompRequirements</name><value><minWaitTime>1 minutes</minWaitTime><maxWaitTime>10 minutes</maxWaitTime><minCompletion>95 %</minCompletion>   </value></parameter></parameter><parameter><name>@OverrideMaintenanceWindows</name><value><boolean>true</boolean></value></parameter></inputParameters>"
set taskGuid="74b4e850-bdcf-4c09-876d-2ddc223dac8d"
set scheduleXml="<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>"
AltirisASDKTask.exe cmd:ScheduleTaskCustom taskGuid:%taskGuid% scheduleName:"Some Name" description:"Some Description" customScheduleXml:%scheduleXml% inputParameters:%inputXml%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    For a more detailed description of the input parameters please go to TaskManagementLib.ExecuteTask. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
			[Parameter(Mandatory=$true)]
			[string]$scheduleName,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$inputParameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			scheduleName = $scheduleName
 			description = $description
 			customScheduleXml = $customScheduleXml
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ScheduleTaskCustom"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Set-TaskScheduleShared {

<#
.SYNOPSIS
    Creates a schedule for a task or job using a shared schedule. 

.PARAMETER taskGuid
    The guid of the task or job to be scheduled. 

.PARAMETER scheduleName
    The name given to this scheduled instance of the task or job. 

.PARAMETER description
    A description of this scheduled instance. 

.PARAMETER sharedScheduleGuid
    The guid of the shared schedule to use. 

.PARAMETER inputParameters
    Xml-formatted input parameters for the task or job. Only required input parameters must be supplied. 

.EXAMPLE 
    CopyC#
Guid taskGuid = new Guid("74b4e850-bdcf-4c09-876d-2ddc223dac8d");
Guid scheduleGuid = new Guid("AB7141ED-E03A-48E5-9051-A71B5912B7F2");
string inputXml = @"
<inputParameters>
    <parameter>
        <name>@AssignedResources</name>
        <value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value>
    </parameter>
    <parameter>
        <name>@CompRequirements</name>
        <value>
                <minWaitTime>1 minutes</minWaitTime>
                <maxWaitTime>10 minutes</maxWaitTime>
                <minCompletion>95 %</minCompletion>
        </value>
    </parameter>
    <parameter>
        <name>@OverrideMaintenanceWindows</name>
        <value>
            <boolean>true</boolean>
        </value>
    </parameter>
</inputParameters>";
Guid taskInstanceGuid = m_proxy.ScheduleTaskShared(taskGuid, "Some Name", "Some Description", scheduleGuid, inputXml);
CopyVBScript
taskGuid = "74b4e850-bdcf-4c09-876d-2ddc223dac8d"
scheduleGuid = "AB7141ED-E03A-48E5-9051-A71B5912B7F2"
inputXml = _
"<inputParameters>" & _
"    <parameter>" & _
"        <name>@AssignedResources</name>" & _
"        <value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value>" & _
"    </parameter> " & _
"    <parameter> " & _
"        <name>@CompRequirements</name>" & _
"        <value>" & _
"                <minWaitTime>1 minutes</minWaitTime>" & _
"                <maxWaitTime>10 minutes</maxWaitTime>" & _
"                <minCompletion>95 %</minCompletion>" & _
"        </value>" & _
"    </parameter>" & _
"    <parameter>" & _
"        <name>@OverrideMaintenanceWindows</name>" & _
"        <value>" & _
"            <boolean>true</boolean>" & _
"        </value>" & _
"    </parameter>" & _
"</inputParameters>"
taskInstanceGuid = taskManagement.ScheduleTaskShared(taskGuid, "Some Name", "Some Description", scheduleGuid, inputXml)
Copy? 
set inputXml="<inputParameters><parameter><name>@AssignedResources</name><value>4404f03f-8001-4054-b86e-344e43b778f9, c2258340-be59-4051-9c89-3af1d53d33de</value></parameter><parameter><name>@CompRequirements</name><value><minWaitTime>1 minutes</minWaitTime><maxWaitTime>10 minutes</maxWaitTime><minCompletion>95 %</minCompletion>   </value></parameter></parameter><parameter><name>@OverrideMaintenanceWindows</name><value><boolean>true</boolean></value></parameter></inputParameters>"
set taskGuid="74b4e850-bdcf-4c09-876d-2ddc223dac8d"
set scheduleGuid="AB7141ED-E03A-48E5-9051-A71B5912B7F2"
AltirisASDKTask.exe cmd:ScheduleTaskShared taskGuid:%taskGuid% scheduleName:"Some Name" description:"Some Description" sharedScheduleGuid:%scheduleGuid% inputParameters:%inputXml%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    For a more detailed description of the input parameters please go to TaskManagementLib.ExecuteTask. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
			[Parameter(Mandatory=$true)]
			[string]$scheduleName,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$inputParameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			scheduleName = $scheduleName
 			description = $description
 			sharedScheduleGuid = $sharedScheduleGuid
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ScheduleTaskShared"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

