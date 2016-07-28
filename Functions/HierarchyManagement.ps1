
Function New-HierarchyCustomEventRule {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER customScheduleXml
     

.PARAMETER replicationType
     

.PARAMETER resourceIdentificationGuids
     

.PARAMETER eventClassGuids
     

.PARAMETER rowCount
     

.PARAMETER resend
     

.PARAMETER direction
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER customScheduleXml
     

.PARAMETER ruleType
     

.PARAMETER collectionItemGuids
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER customScheduleXml
     

.PARAMETER replicationType
     

.PARAMETER resourceIdentificationGuids
     

.PARAMETER dataClassGuids
     

.PARAMETER verificationEnabled
     

.PARAMETER verificationLevel
     

.PARAMETER direction
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER customScheduleXml
     

.PARAMETER ruleType
     

.PARAMETER securityGuids
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER sharedScheduleGuid
     

.PARAMETER replicationType
     

.PARAMETER resourceIdentificationGuids
     

.PARAMETER eventClassGuids
     

.PARAMETER rowCount
     

.PARAMETER resend
     

.PARAMETER direction
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER sharedScheduleGuid
     

.PARAMETER ruleType
     

.PARAMETER collectionItemGuids
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER sharedScheduleGuid
     

.PARAMETER replicationType
     

.PARAMETER resourceIdentificationGuids
     

.PARAMETER dataClassGuids
     

.PARAMETER verificationEnabled
     

.PARAMETER verificationLevel
     

.PARAMETER direction
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER name
     

.PARAMETER description
     

.PARAMETER enabled
     

.PARAMETER sharedScheduleGuid
     

.PARAMETER ruleType
     

.PARAMETER securityGuids
     

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER itemGuid
     

.PARAMETER propertyName
     

.PARAMETER enable
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER enable
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER itemGuid
     

.PARAMETER enable
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER itemGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER itemGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER itemGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER itemGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER nodeGuid
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER nodeGuid
     

.EXAMPLE 
     

.NOTES
    
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

