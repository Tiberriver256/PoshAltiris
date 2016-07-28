
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


Function CreateReportUsingRawSqlQuery {

<#
.SYNOPSIS
    Create a new report using a raw SQL query as the data source. 

.PARAMETER reportName
    Name of the report item 

.PARAMETER reportDescription
    Description of the report item 

.PARAMETER dataSourceName
    Name used to describe the results of the SQL query used as the data source for this report 

.PARAMETER folderGuid
    parent folder GUID of the report 

.PARAMETER sqlQuery
    SQL query to retrieve data for the report 

.EXAMPLE 
    CopyC#
string query = "SELECT DISTINCT [OS Name] FROM Inv_AeX_AC_Identification";
ItemDetails itemDetails = m_proxy.CreateReportUsingRawSqlQuery("Sample Report", "a sample report", "All client operating systems", folderObject.Guid, query);
CopyVBScript
folderGuid = "{5078D04B-8A50-4783-95DA-8B44667C3CD1}"
query = "SELECT DISTINCT [OS Name] FROM Inv_AeX_AC_Identification"
set results = reportManagement.RunLegacyReportWithParameters("Sample Report", "a sample report", "All client operating systems", folderGuid, query)
Copy? 
SET query = "SELECT DISTINCT [OS Name] FROM Inv_AeX_AC_Identification"
AltirisASDKNS.exe cmd:CreateReportUsingRawSqlQuery reportName:"Sample Report", reportDescription:"a sample report", dataSourceName:"All client operating systems", folderGuid:"{5078D04B-8A50-4783-95DA-8B44667C3CD1}" query:%query%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


Function GetReportParameters {

<#
.SYNOPSIS
    Get the user-settable parameters for a given report 

.PARAMETER reportItemGuid
    Guid of the report for which to retrieve parameters. For an NS 7 report, the GUID must be an item of type Alitiris.Reporting.ReportManagementItem.  

.EXAMPLE 
    CopyC#
string reportGuid = "4e76962d-1232-433b-8a65-a853edb052b4"; // Agent Installation Status report
XmlNode results = m_proxy.GetReportParameters(reportItemGuid);
CopyVBScript
reportGuid = "4e76962d-1232-433b-8a65-a853edb052b4" 'Agent Installation Status report
set results = reportManagement.GetReportParameters(reportItemGuid)
params = ""
results.MoveFirst()
while not results.EOF
  params = params & "Name: " & results.Fields.Item( "Name" ).Value & VbCrLf
  params = params & "Description: " & results.Fields.Item( "Description" ).Value & VbCrLf
  params = params & "Required: " & results.Fields.Item( "Required" ).Value & VbCrLf
  params = params & "Nullable: " & results.Fields.Item( "Nullable" ).Value & VbCrLf
  params = params & "ParameterTypeGuid: " & results.Fields.Item( "ParameterTypeGuid" ).Value & VbCrLf
  params = params & "ParameterTypeAlias: " & results.Fields.Item( "ParameterTypeAlias" ).Value & VbCrLf
  params = params & "DefaultValue: " & results.Fields.Item( "DefaultValue" ).Value & VbCrLf
  params = params & VbCrLf
  results.MoveNext()
wend
Copy? 
AltirisASDKNS.exe cmd:GetReportParameters reportItemGuid:"4e76962d-1232-433b-8a65-a853edb052b4"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Fields report include "Name," "Description," "Required," "Nullable," "ParameterTypeGuid," "ParameterTypeAlias" and "DefaultValue." 
The web service layer translates the DataTable into an XmlDocument. When programming in C#, the return type is an XmlNode.
The COM layer translates the XmlNode into a Recordset. When programming in VBS, the return type is an ADODB Recordset.
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


Function RunReport {

<#
.SYNOPSIS
    Runs a report that does not take parameters and returns the results. 

.PARAMETER reportItemGuid
    GUID of the report to be run. The GUID must be an item of type Alitiris.Reporting.ReportManagementItem.  

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string reportGuid = "1f382791-b2cf-4b39-afd3-28348693c44e"; // All Assets report
XmlNode results = m_proxy.RunReport(reportGuid);
CopyVBScript
reportGuid = "1f382791-b2cf-4b39-afd3-28348693c44e" 'All Assets report
set results = reportManagement.RunReport(reportGuid)
Copy? 
AltirisASDKNS.exe cmd:RunReport reportItemGuid:"1f382791-b2cf-4b39-afd3-28348693c44e"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
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


Function RunReportWithParameters {

<#
.SYNOPSIS
    Runs a report that takes parameters and returns the results. 

.PARAMETER reportItemGuid
    GUID of the report to be run. The GUID must be an item of type Alitiris.Reporting.ReportManagementItem.  

.PARAMETER nameValuePairs
    Parameter names and values to use in running the report.  

.EXAMPLE 
    CopyC#
string reportGuid = "9c6b41ac-6138-4fdd-a90b-21eb2214fc46"; // Server Load by Start and End Date report
string params = "Time Unit=Day";
XmlNode results = m_proxy.RunReportWithParameters(reportGuid, params);
CopyVBScript
reportGuid = "9c6b41ac-6138-4fdd-a90b-21eb2214fc46" 'Server Load by Start and End Date report
params = "Time Unit=Day"
set results = reportManagement.RunReportWithParameters(reportGuid, params)
Copy? 
AltirisASDKNS.exe cmd:RunReportWithParameters reportItemGuid:"9c6b41ac-6138-4fdd-a90b-21eb2214fc46" nameValuePairs:"Time Unit=Day"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    All user-settable parameters and their default values for a given report may be viewed on the report's page in the NS Console. Parameters should be supplied in the following format: "paramName1=paramValue1, paramName2=paramValue2, paramName3=paramValue3" All values are treated as strings and translated into the appropriate SQL type. If a value cannot be translated into the appropriate SQL type an exception is thrown. Do not use double quotes (") or single quotes (') when defining parameters unless these are literally part of the parameter name or value. Do not user a comma (",") within a parameter name or value; use commas only to delimit one parameter name-value pair from another. All parameter names must retain any white spacing as displayed on the report page in the Console. 
In general, values given for date-time parameters (such as "To," "From," etc.) must be in a format representing an actual date. For example, a date of November 8, 2008 may be represented as "11/8/2008," "8-Nov-08," "11-8-2008," etc. However, do not insert a comma (",") into your date value (such as "November 8, 2008"), as the comma will be interpreted as a parameter delimeter and the method will fail. You may also add a time component following the date value in the format "HH:MM:SS," as in "11/8/2008 12:30:00." You may also give a date-time value by using the convention of "Today" to represent today's date, and "Now" to represent today's date with the current time. You may also subtract a positive integer representing a number of calendar days from either such word; for example, "Today-7" would be interpreted as the date seven days ago, while "Now-1" would be interpreted as yesterday's date with the current time (i.e., exactly 24 hours ago). 
You may pass in all, or just some, of the user-settable parameters. Any parameter(s) for which you do not pass in a value will use the default value for that parameter. However, if a parameter does not have a default value, you MUST pass in a value. If a given parameter name does not match any parameters in the report, an exception is thrown. 
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

