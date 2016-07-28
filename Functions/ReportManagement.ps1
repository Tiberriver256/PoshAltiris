
Function New-ReportUsingRawSql {

<#
.SYNOPSIS
    

.PARAMETER reportName
     

.PARAMETER reportDescription
     

.PARAMETER dataSourceName
     

.PARAMETER folderGuid
     

.PARAMETER sqlQuery
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$reportName,
			[Parameter(Mandatory=$true)]
			[string]$reportDescription,
			[Parameter(Mandatory=$true)]
			[string]$dataSourceName,
			[Parameter(Mandatory=$true)]
			[guid]$folderGuid,
			[Parameter(Mandatory=$true)]
			[string]$sqlQuery,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportName = $reportName
 			reportDescription = $reportDescription
 			dataSourceName = $dataSourceName
 			folderGuid = $folderGuid
 			sqlQuery = $sqlQuery

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/CreateReportUsingRawSqlQuery"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ReportParameters {

<#
.SYNOPSIS
    

.PARAMETER reportItemGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$reportItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/GetReportParameters"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-Report {

<#
.SYNOPSIS
    

.PARAMETER reportItemGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$reportItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/RunReport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Invoke-ReportWithParameters {

<#
.SYNOPSIS
    

.PARAMETER reportItemGuid
     

.PARAMETER nameValuePairs
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$reportItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$nameValuePairs,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid
 			nameValuePairs = $nameValuePairs

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/RunReportWithParameters"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

