
Function Invoke-Task {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.PARAMETER executionName
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER taskInstanceGuid
     

.PARAMETER resourceGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER parentFolderGuid
     

.PARAMETER taskTypeGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER taskGuid
     

.PARAMETER scheduleName
     

.PARAMETER description
     

.PARAMETER customScheduleXml
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER taskGuid
     

.PARAMETER scheduleName
     

.PARAMETER description
     

.PARAMETER sharedScheduleGuid
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
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


Function ExecuteTask {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.PARAMETER executionName
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
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


Function GetExecutedTaskInstances {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
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


Function GetTask {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
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


Function GetTaskResourceStatus {

<#
.SYNOPSIS
    

.PARAMETER taskInstanceGuid
     

.PARAMETER resourceGuid
     

.EXAMPLE 
     

.NOTES
    
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


Function GetTasks {

<#
.SYNOPSIS
    

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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


Function GetTasksByType {

<#
.SYNOPSIS
    

.PARAMETER parentFolderGuid
     

.PARAMETER taskTypeGuid
     

.EXAMPLE 
     

.NOTES
    
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


Function GetTaskStatus {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
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


Function ScheduleTaskCustom {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.PARAMETER scheduleName
     

.PARAMETER description
     

.PARAMETER customScheduleXml
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
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


Function ScheduleTaskShared {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.PARAMETER scheduleName
     

.PARAMETER description
     

.PARAMETER sharedScheduleGuid
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
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

