
Function Add-Expression {

<#
.SYNOPSIS
    Merge two expressions into one 

.PARAMETER RuleExpression
    xml of expression. User can obtain an expression by calling functions CreateExpressionXXX 

.PARAMETER ParentOperation
    parent operation. The empty guid, {00000000-0000-0000-0000-000000000000} can be used to add the expression to the root 

.PARAMETER RuleExpressionToAdd
    xml of expression to add 

.EXAMPLE 
    Merge expression 
CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.AddExpression(expressionDetails.Xml, operation.Guid, expressionDetails2.Xml);
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.AddExpression(expressionDetails.Xml, operation.Guid, expressionDetails2.Xml)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:AddExpression "RuleExpression:%EXPRESSION_DETAILS_XML%" "ParentOperation:{01CF7673-56E2-49e0-A737-971BCCD68D28}" "RuleExpressionToAdd:%EXPRESSION_DETAILS2_XML%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$RuleExpression,
			[Parameter(Mandatory=$true)]
			[guid]$ParentOperation,
			[Parameter(Mandatory=$true)]
			[string]$RuleExpressionToAdd,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleExpression = $RuleExpression
 			ParentOperation = $ParentOperation
 			RuleExpressionToAdd = $RuleExpressionToAdd

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/AddExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Add-OperatorToExpression {

<#
.SYNOPSIS
    Add an operation to expression 

.PARAMETER RuleExpression
    xml of expression. User can obtain an expression by calling functions CreateExpressionXXX 

.PARAMETER ParentOperation
    parent operation. The empty guid, {00000000-0000-0000-0000-000000000000}, can be used to add the expression to the root 

.PARAMETER Operation
    name of operation. Valid values are: 'and', 'or' and 'not'  

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.AddOperatorToExpression(expressionDetails.Xml, operation.Guid, "and");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.AddOperatorToExpression(expressionDetails.Xml, operation.Guid, "and")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:AddOperatorToExpression "RuleExpression:%EXPRESSION_DETAILS_XML%" "ParentOperation:{01CF7673-56E2-49e0-A737-971BCCD68D28}" "Operation:and"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$RuleExpression,
			[Parameter(Mandatory=$true)]
			[guid]$ParentOperation,
			[Parameter(Mandatory=$true)]
			[string]$Operation,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleExpression = $RuleExpression
 			ParentOperation = $ParentOperation
 			Operation = $Operation

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/AddOperatorToExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-Expression64BitWindowsInstalled {

<#
.SYNOPSIS
    Create expression: check '64-bit Windows Installed' Expression can be used to create a new inventory rule 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpression64BitWindowsInstalled();
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpression64BitWindowsInstalled()
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpression64BitWindowsInstalled
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


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpression64BitWindowsInstalled"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionFileVersion {

<#
.SYNOPSIS
    Create expression: check 'File Version' Expression can be used to create a new inventory rule 

.PARAMETER VersionType
    type of expression. Following values are available: FileVersion or ProductVersion 

.PARAMETER FileName
    file name(including path) 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, BETWEEN  

.PARAMETER Version
    Version. If MacthType equal to BETWEEN then HigherVersion 

.PARAMETER VersionLower
    Lower Version. If MacthType equal to BETWEEN then check use this parameter, otherwise it should be empty string("") 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionFileVersion("FileVersion", @"C:\DB\1.xml", "Higher", "1.0", "");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionFileVersion("FileVersion", "C:\DB\1.xml", "Higher", "1.0", "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionFileVersion "VersionType:FileVersion" "FileName:%FILENAME%" "MatchType:Higher" "Version:1.0" "VersionLower:"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$VersionType,
			[Parameter(Mandatory=$true)]
			[string]$FileName,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$VersionLower,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			VersionType = $VersionType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionFileVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionMSIProductCode {

<#
.SYNOPSIS
    Create expression: check 'MSI Product Code' Expression can be used to create a new inventory rule 

.PARAMETER PackageGuid
    guid of package to check 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionMSIProductCode(new Guid("01CF7673-56E2-49e0-A737-971BCCD68D28"));
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionMSIProductCode(package.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionMSIProductCode "PackageGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    The object type referenced by the PackageGuid must be of a specific type, Altiris.SoftwareManagement.Resources.MsiSoftwareInstallationFileResource. If it is not of this type then you will see type cast errors. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionMSIProductCode"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionMUIInstalled {

<#
.SYNOPSIS
    Create expression: check 'Multilingual User Interface Installed' Expression can be used to create a new inventory rule 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionMUIInstalled();
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionMUIInstalled()
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionMUIInstalled
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


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionMUIInstalled"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionProcessorType {

<#
.SYNOPSIS
    Create expression: check 'Processor Type' Expression can be used to create a new inventory rule 

.PARAMETER ProcessorType
    type of processor. Following values are available: x86, IA64, x64  

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionProcessorType("x86");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionProcessorType("x86")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionProcessorType "ProcessorType:x86"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$ProcessorType,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ProcessorType = $ProcessorType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionProcessorType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionRegistryKeyExists {

<#
.SYNOPSIS
    Create expression: check 'Regsitry Key Exists' Expression can be used to create a new inventory rule 

.PARAMETER Key
    Registry key 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionRegistryKeyExits(@"HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionRegistryKeyExits("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionRegistryKeyExits "Key:HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Key,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Key = $Key

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyExits"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionRegistryKeyPathToFileVersion {

<#
.SYNOPSIS
    Create expression: check 'Registry Key/File Path to File Version' Expression can be used to create a new inventory rule 

.PARAMETER KeyPath
    Registry key path 

.PARAMETER Entry
    Registry entry.If empty string passed then 'default' value will be check. 

.PARAMETER FileName
    File path 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, BETWEEN  

.PARAMETER Version
    Version. If MacthType equal to BETWEEN then HigherVersion 

.PARAMETER VersionLower
    Lower Version. If MacthType equal to BETWEEN then check use this parameter, otherwise it should be empty string("") 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = CreateExpressionRegistryKeyPathToFileVersion(@"HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", @"C:\DB\1.exe", "Higher", "1.0", "");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionRegistryKeyPathToFileVersion("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "C:\DB\1.exe", "Higher", "1.0", "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionRegistryKeyPathToFileVersion"KeyPath:HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" "Entry:Value" "FileName:C:\DB\1.exe" "MatchType:Higher" "Version:1.0" "VersionLower:"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$KeyPath,
			[Parameter(Mandatory=$true)]
			[string]$Entry,
			[Parameter(Mandatory=$true)]
			[string]$FileName,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$VersionLower,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyPathToFileVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionRegistryKeyPathToProductVersion {

<#
.SYNOPSIS
    Create expression: check 'Registry Key/File Path to Product Version' Expression can be used to create a new inventory rule 

.PARAMETER KeyPath
    Registry key path 

.PARAMETER Entry
    Registry entry 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, BETWEEN  

.PARAMETER Version
    Version. If MacthType equal to BETWEEN then HigherVersion 

.PARAMETER VersionLower
    Lower Version. If MacthType equal to BETWEEN then check use this parameter, otherwise it should be empty string("") 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = CCreateExpressionRegistryKeyPathToProductVersion(@"HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "Higher", "1.0", "");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionRegistryKeyPathToProductVersion("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "Higher", "1.0", "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionRegistryKeyPathToProductVersion "KeyPath:HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" "Entry:Value" "MatchType:Higher" "Version:1.0" "VersionLower:"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$KeyPath,
			[Parameter(Mandatory=$true)]
			[string]$Entry,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$VersionLower,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyPathToProductVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionRegistryKeyToFileVersion {

<#
.SYNOPSIS
    Create expression: check 'Registry Key to File Version' Expression can be used to create a new inventory rule 

.PARAMETER KeyPath
    Registry key path 

.PARAMETER Entry
    Registry entry. If empty string passed then 'default' value will be check 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, BETWEEN  

.PARAMETER Version
    Version. If MacthType equal to BETWEEN then HigherVersion 

.PARAMETER VersionLower
    Lower Version. If MacthType equal to BETWEEN then check use this parameter, otherwise it should be empty string("") 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = CreateExpressionRegistryKeyToFileVersion(@"HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "Higher", "1.0", "");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionRegistryKeyToFileVersion("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "Higher", "1.0", "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionRegistryKeyToFileVersion "KeyPath:HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" "Entry:Value" "MatchType:Higher" "Version:1.0" "VersionLower:"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$KeyPath,
			[Parameter(Mandatory=$true)]
			[string]$Entry,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$VersionLower,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyToFileVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionRegistryKeyValue {

<#
.SYNOPSIS
    Create expression: check 'Registry Key Value' Expression can be used to create a new inventory rule 

.PARAMETER KeyPath
    Registry key path 

.PARAMETER Entry
    Registry entry. If empty string passed then 'default' value will be check. 

.PARAMETER Value
    Value of entry 

.PARAMETER Substring
    true if search substring or false for entire string 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = CreateExpressionRegistryKeyValue(@"HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "1.0", true);
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionRegistryKeyValue("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "1.0", True)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionRegistryKeyValue "KeyPath:HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" "Entry:Value" "Value:1.0" "Substring:%SUBSTRING%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$KeyPath,
			[Parameter(Mandatory=$true)]
			[string]$Entry,
			[Parameter(Mandatory=$true)]
			[string]$Value,
			[Parameter(Mandatory=$true)]
			[bool]$Substring,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			Value = $Value
 			Substring = $Substring

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyValue"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionRegistryKeyVersion {

<#
.SYNOPSIS
    Create expression: check 'Registry Key Version' Expression can be used to create a new inventory rule 

.PARAMETER KeyPath
    Registry key path 

.PARAMETER Entry
    Registry entry 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, BETWEEN  

.PARAMETER Version
    Version. If MacthType equal to BETWEEN then HigherVersion 

.PARAMETER VersionLower
    Lower Version. If MacthType equal to BETWEEN then check use this parameter, otherwise it should be empty string("") 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = CreateExpressionRegistryKeyVersion(@"HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "Higher", "1.0", "");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionRegistryKeyVersion("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop", "Version", "Higher", "1.0", "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionRegistryKeyVersion "KeyPath:HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Control Panel\Desktop" "Entry:Value" "MatchType:Higher" "Version:1.0" "VersionLower:"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$KeyPath,
			[Parameter(Mandatory=$true)]
			[string]$Entry,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$VersionLower,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			KeyPath = $KeyPath
 			Entry = $Entry
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionRegistryKeyVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionSoftwareFile {

<#
.SYNOPSIS
    Create expression: check 'SoftwareFileExpression' with 1 file. Additional files can be added via function 'CreateExpressionSoftwareFileAddFile' Expression can be used to create a new inventory rule 

.PARAMETER SoftwareResourceGuid
    Guid of Software Resource item 

.PARAMETER Selected
    selected or not 

.PARAMETER PathType
    type of path. Following values are available: Desktop, ProgramMenu, Personal, Favorites, Startup, Recent, SendTo, StartMenu, NetHood, Fonts, Templates, AppDataFolder, PrintHood, Windows, System, ProgramFiles, ProgramFilesX86, CommonFiles, CommonFilesX86, AdminTools, Profiles, Temp, System16, DefaultWebSite, StaticPath  

.PARAMETER FileName
    Output file name, including the fully qualified path. 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, ANY  

.PARAMETER Version
    Version. If MacthType equal to HIGHER and the Version to empty string(""), so the agent will just check that the file exists 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionSoftwareFile(new Guid("01CF7673-56E2-49e0-A737-971BCCD68D28"), true, "StaticPath", @"C:\DB\1.xml", "Higher", "");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionSoftwareFile(softwareResource.Guid, True, "StaticPath", "C:\DB\1.xml", "Higher", "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionSoftwareFile "SoftwareResourceGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}" "Selected:%SELECTED%" "PathType:%PATHTYPE%" "FileName:%FILENAME%" "MatchType:%MATCHTYPE%" "Version:%VERSION%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[bool]$Selected,
			[Parameter(Mandatory=$true)]
			[string]$PathType,
			[Parameter(Mandatory=$true)]
			[string]$FileName,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareResourceGuid = $SoftwareResourceGuid
 			Selected = $Selected
 			PathType = $PathType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionSoftwareFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionSoftwareFileAddFile {

<#
.SYNOPSIS
    Create expression: adds one more additional file to the expression created via function'CreateExpressionSoftwareFile'. Expression can be used to create a new inventory rule 

.PARAMETER SoftwareFileExpression
    Xml of Software File expression - created via CreateExpressionSoftwareFile( 

.PARAMETER Selected
    selected or not 

.PARAMETER PathType
    type of path. Following values are available: Desktop, ProgramMenu, Personal, Favorites, Startup, Recent, SendTo, StartMenum NetHood, Fonts, Templates, AppDataFolder, PrintHood, Windows, System, ProgramFiles, ProgramFilesX86, CommonFiles, CommonFilesX86, AdminTools, Profiles, Temp, System16, DefaultWebSite, StaticPath  

.PARAMETER FileName
    Output file name, including the fully qualified path. 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, ANY  

.PARAMETER Version
    Version. If MacthType equal to HIGHER and the Version to empty string(""), so the agent will just check that the file exists 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionSoftwareFileAddFile(expression.Xml, true, "StaticPath", @"C:\DB\1.xml", "Higher");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionSoftwareFileAddFile(expression.Xml, True, "StaticPath", "C:\DB\1.xml", "Higher", "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionSoftwareFileAddFile "SoftwareFileExpression:%SOFTWAREFILEEXPRESSION%" "Selected:%SELECTED%" "PathType:%PATHTYPE%" "FileName:%FILENAME%"  "MatchType:%MATCHTYPE%" "Version:%VERSION%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$SoftwareFileExpression,
			[Parameter(Mandatory=$true)]
			[bool]$Selected,
			[Parameter(Mandatory=$true)]
			[string]$PathType,
			[Parameter(Mandatory=$true)]
			[string]$FileName,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareFileExpression = $SoftwareFileExpression
 			Selected = $Selected
 			PathType = $PathType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionSoftwareFileAddFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionStaticFile {

<#
.SYNOPSIS
    Create expression: check 'Static File' Expression can be used to create a new inventory rule 

.PARAMETER Selected
    selected or not 

.PARAMETER PathType
    type of path. Following values are available: Desktop, ProgramMenu, Personal, Favorites, Startup, Recent, SendTo, StartMenu, NetHood, Fonts, Templates, AppDataFolder,PrintHood, Windows, System, ProgramFiles, ProgramFilesX86, CommonFiles, CommonFilesX86, AdminTools, Profiles, Temp, System16, DefaultWebSite, StaticPath  

.PARAMETER FileName
    Output file name, including the fully qualified path. 

.PARAMETER MatchType
    Type of comparsion. Following values are available: LOWER, LOWER_OR_SAME, HIGHER_OR_SAME, HIGHER, SAME, BETWEEN, ANY  

.PARAMETER Version
    Version. If MacthType equal to BETWEEN then HigherVersion 

.PARAMETER VersionLower
    Lower Version. If MacthType equal to BETWEEN then check use this parameter, otherwise it should be empty string("") 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionStaticFile(true, "StaticPath", @"C:\DB\1.xml", "Higher", "1.1", "");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionStaticFile(True, "StaticPath", "C:\DB\1.xml", "Higher", "1.1" "")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionStaticFile "Selected:%SELECTED%" "PathType:%PATHTYPE%" "FileName:%FILENAME%"  "MatchType:%MATCHTYPE%" "Version:%VERSION%" "VersionLower:%VERSIONLOWER%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[bool]$Selected,
			[Parameter(Mandatory=$true)]
			[string]$PathType,
			[Parameter(Mandatory=$true)]
			[string]$FileName,
			[Parameter(Mandatory=$true)]
			[string]$MatchType,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$VersionLower,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Selected = $Selected
 			PathType = $PathType
 			FileName = $FileName
 			MatchType = $MatchType
 			Version = $Version
 			VersionLower = $VersionLower

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionStaticFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionStaticShortcutTarget {

<#
.SYNOPSIS
    Create expression: check 'Static Shortcut Target' Expression can be used to create a new inventory rule 

.PARAMETER PathType
    type of path. Following values are available: Desktop, ProgramMenu, Personal, Favorites, Startup, Recent, SendTo, StartMenu, NetHood, Fonts, Templates, AppDataFolder, PrintHood, Windows, System, ProgramFiles, ProgramFilesX86, CommonFiles, CommonFilesX86, AdminTools, Profiles, Temp, System16, DefaultWebSite, StaticPath  

.PARAMETER FileName
    file path 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionStaticShortcutTarget("StaticPath", @"C:\DB\1.xml");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionStaticShortcutTarget("StaticPath", "C:\DB\1.xml")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionStaticShortcutTarget "PathType:%PATHTYPE%" "FileName:%FILENAME%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    NOTE: For CLI usage, all attributes must be protected with single quote characters rather than double quotes. The command shell strips double quotes so the XML will not work if this modification is not done. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$PathType,
			[Parameter(Mandatory=$true)]
			[string]$FileName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PathType = $PathType
 			FileName = $FileName

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionStaticShortcutTarget"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionWindowsLanguage {

<#
.SYNOPSIS
    Create expression: check 'Windows Language' Expression can be used to create a new inventory rule 

.PARAMETER Lang
    Language id. Following values are available: Afrikaans = 54, Albanian = 28, Arabic = 1, Armenian = 43, Azeri = 44, Basque = 45, Belarusian = 35, Bulgarian = 2, Catalan = 3, Chinese = 4, Croatian = 25, Czech = 5, Danish = 6, Divehi = 101, Dutch = 19, English = 9, Estonian = 37, Faeroese = 56, Farsi = 41, Finnish = 11, French = 12, FYRO Macedonian = 47, Galician = 86, Georgian = 55, German = 7, Greek = 8, Gujarati = 71, Hebrew = 13, Hindi = 57, Hungarian = 14, Icelandic = 15, Indonesian = 33, Italian = 16, Japanese = 17, Kannada = 75, Kazak = 63, Konkani = 87, Korean = 18, Kyrgyz = 64, Latvian = 38, Lithuanian = 39, Malay = 62, Marathi = 78, Mongolian = 80, Norwegian = 20, Polish = 21, Portuguese = 22, Punjabi = 70, Romanian = 23, Russian = 24, Sanskrit = 79, Serbian = 26, Slovak = 27, Slovenian = 36, Spanish = 10, Swahili = 65, Swedish = 29, Syriac = 90, Tamil = 73, Tatar = 68, Telugu = 74, Thai = 30, Turkish = 31, Ukrainian = 34, Urdu = 32, Uzbek = 67, Vietnamese = 42  

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionWindowsLanguage(9);
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionWindowsLanguage(9)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionWindowsLanguage "Lang:9"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[int]$Lang,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Lang = $Lang

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionWindowsLanguage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-ExpressionWindowsVersion {

<#
.SYNOPSIS
    Create expression: check 'Windows Version' Expression can be used to create a new inventory rule. There are three different rule scenarios that exist. 1. "AllSuitesMustBePresent" & "SuiteMask". These two must both be present to be valid. "AllSuitesMustBePresent" must have the value of "true" or "false". "SuiteMask" must have a decimal value. 2. "Comparison" & "MajorVersion" & "MinorVersion" must all be present to be valid. Optionally "ProductType". Optionally "ServicePackMajor" & "ServicePackMinor" must both be present to be valid. 3. Both rules 1 and 2 maybe present. If that is the case, they must both evaluate as an AND condition. 

.PARAMETER MatchSuites
    if true then use params "AllSuitesMustBePresent" & "SuiteMask" (scenario 1) 

.PARAMETER AllSuitesMustBePresent
    All suites should be checked if true, otherwise Suitemask should be be used 

.PARAMETER SuiteMask
    Combination of one or more bit flags. Following flags are available: VER_SUITE_BACKOFFICE = 0x00000004, VER_SUITE_BLADE = 0x00000400, VER_SUITE_DATACENTER = 0x00000080, VER_SUITE_ENTERPRISE = 0x00000002, VER_SUITE_PERSONAL = 0x00000200, VER_SUITE_SMALLBUSINESS = 0x00000001, VER_SUITE_SMALLBUSINESS_RESTRICTED = 0x00000020, VER_SUITE_TERMINAL = 0x00000010  

.PARAMETER MatchVersion
    if true then use params: "MinorVersion", "MajorVersion", "ServicePackMinor", "ServicePackMajor" and ProductType (scenario 2) 

.PARAMETER MinorVersion
    Value to be used for minor version. 

.PARAMETER MajorVersion
    Value to be used for major version. 

.PARAMETER ServicePackMinor
    If equal to -1 then is not used. 

.PARAMETER ServicePackMajor
    If equal to -1 then is not used. 

.PARAMETER ProductType
    The following product type value are available: "Any", "NTWorkstation", "DomainController", "Server". 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.CreateExpressionWindowsVersion(true, true, 0, true, 1, 2, -1, -1, "Any");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.CreateExpressionWindowsVersion(True, True, 0, True, 1, 2, -1, -1, "Any")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateExpressionWindowsVersion "MatchSuites:%MATCHSUITES%" "AllSuitesMustBePresent:%AllSuitesMustBePresent%" "SuiteMask:%SuiteMask%" "MatchVersion:%MatchVersion%" "MinorVersion:%MinorVersion%" "MajorVersion:%MajorVersion%" "ServicePackMinor:%ServicePackMinor%" "ServicePackMajor:%ServicePackMajor%" "ProductType:Any"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[bool]$MatchSuites,
			[Parameter(Mandatory=$true)]
			[bool]$AllSuitesMustBePresent,
			[Parameter(Mandatory=$true)]
			[int]$SuiteMask,
			[Parameter(Mandatory=$true)]
			[bool]$MatchVersion,
			[Parameter(Mandatory=$true)]
			[int]$MinorVersion,
			[Parameter(Mandatory=$true)]
			[int]$MajorVersion,
			[Parameter(Mandatory=$true)]
			[int]$ServicePackMinor,
			[Parameter(Mandatory=$true)]
			[int]$ServicePackMajor,
			[Parameter(Mandatory=$true)]
			[string]$ProductType,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			MatchSuites = $MatchSuites
 			AllSuitesMustBePresent = $AllSuitesMustBePresent
 			SuiteMask = $SuiteMask
 			MatchVersion = $MatchVersion
 			MinorVersion = $MinorVersion
 			MajorVersion = $MajorVersion
 			ServicePackMinor = $ServicePackMinor
 			ServicePackMajor = $ServicePackMajor
 			ProductType = $ProductType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateExpressionWindowsVersion"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-InventoryRule {

<#
.SYNOPSIS
    Create new inventory rule 

.PARAMETER RuleName
    Rule name. 

.PARAMETER RuleDescription
    Rule description. 

.PARAMETER RuleXMLFile
    Inventory rule XML. User can obtain this file by calling ExportRuleDefinitionsFromComponent or ExportRuleDefinition methods. 

.EXAMPLE 
    Create new rule 
CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
InventoryRuleDetails ruleDetails = ruleLib.CreateInventoryRule("Test rule", "Description of the Test rule", @"c:\rules\IsWin64Rule.xml");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set ruleDetails = ruleLib.CreateInventoryRule("Test rule", "Description of the Test rule", "c:\rules\IsWin64Rule.xml")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateInventoryRule "RuleName:Test Rule" "RuleDescription:Description of the Test rule" "RuleXMLFile:c:\rules\IsWin64Rule.xml"
echo Rule created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    NOTE: For CLI usage, all attributes must be protected with single quote characters rather than double quotes. The command shell strips double quotes so the XML will not work if this modification is not done. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$RuleName,
			[Parameter(Mandatory=$true)]
			[string]$RuleDescription,
			[Parameter(Mandatory=$true)]
			[string]$RuleXMLFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleName = $RuleName
 			RuleDescription = $RuleDescription
 			RuleXMLFile = $RuleXMLFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateInventoryRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function New-InventoryRuleFromExpression {

<#
.SYNOPSIS
    Create new inventory rule 

.PARAMETER RuleName
    Rule name 

.PARAMETER RuleDescription
    Rule description. 

.PARAMETER RuleExpression
    xml of expression. User can obtain an expression by calling functions CreateExpressionXXX  

.EXAMPLE 
    Create new rule 
CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
InventoryRuleDetails ruleDetails = ruleLib.CreateInventoryRuleFromExpression("Test rule", "Test rule description", expressionDetails.Xml);
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set ruleDetails = ruleLib.CreateInventoryRuleFromExpression("Test rule", "Test rule description", expressionDetails.Xml)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:CreateInventoryRuleFromExpression "RuleName:Test Rule" "RuleDescription:Test rule description" "RuleExpression:%EXPRESSION_DETAILS_XML%"
echo Rule created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    NOTE: For CLI usage, all attributes must be protected with single quote characters rather than double quotes. The command shell strips double quotes so the XML will not work if this modification is not done. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$RuleName,
			[Parameter(Mandatory=$true)]
			[string]$RuleDescription,
			[Parameter(Mandatory=$true)]
			[string]$RuleExpression,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleName = $RuleName
 			RuleDescription = $RuleDescription
 			RuleExpression = $RuleExpression

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/CreateInventoryRuleFromExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Export-RuleDefinition {

<#
.SYNOPSIS
    Export rule definition XML used Inventory Rule Resource guid. Exported XML can be used as a template for creating/updating new rules using CreateInventoryRule/UpdateInventoryRule methods You can use exported XML as input in CreateInventoryRule method. 

.PARAMETER RuleGuid
    Guid of existing rule 

.PARAMETER DestinationFileName
    Fully qualified path to rule definition file. 

.EXAMPLE 
    Export rule 
CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
bool bResult = ruleLib.ExportRuleDefinition(ruleDetails.Guid, @"c:\rules\IsWin64Rule_New.xml");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
bResult = ruleLib.ExportRuleDefinition(ruleDetails.Guid, "c:\rules\IsWin64Rule_New.xml")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:ExportRuleDefinition "RuleGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}" "DestinationFileName:c:\rules\IsWin64Rule_New.xml"
echo Rule exported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$RuleGuid,
			[Parameter(Mandatory=$true)]
			[string]$DestinationFileName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid
 			DestinationFileName = $DestinationFileName

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/ExportRuleDefinition"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Export-RuleDefinitionsFromComponent {

<#
.SYNOPSIS
    Exports definitions of inventory rules assigned on software component. Exported xml can be used as templates for creating new rules. This methods exports only inventory rule definition and cannot be imported via NS Console import item functionality. You can use exported XML file as input in CreateInventoryRule method. 

.PARAMETER SoftwareComponentGuid
    guid of Software Component Resource 

.PARAMETER ApplicabilityRuleFullPath
    Full path to file for Applicability rule XML, if no applicability rule was assigned on software component the file will not be created. 

.PARAMETER DetectionRuleFullPath
    Full path to file for Detection rule XML, if no detection rule was assigned on software component the file will not be created. 

.EXAMPLE 
    Export applicability rule 
CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
bool bResult = ruleLib.ExportRuleDefinitionsFromComponent(releaseOrca.Guid, @"c:\rules\App_Rule.xml", @"c:\rules\Det_Rule.xml");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
bResult = ruleLib.ExportRuleDefinitionsFromComponent(releaseOrca.Guid, "c:\rules\App_Rule.xml", "c:\rules\Det_Rule.xml")
Copy? 
set SMF=AltirisASDKSMF.exe
set APP_RULE=c:\rules\App_Rule.xml
set DET_RULE=c:\rules\Det_Rule.xml
%SMF% cmd:ExportRuleDefinitionsFromComponent "SoftwareComponentGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}" "ApplicabilityRuleFullPath:%APP_RULE%" "DetectionRuleFullPath:%DET_RULE%"
echo Rule exported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$ApplicabilityRuleFullPath,
			[Parameter(Mandatory=$true)]
			[string]$DetectionRuleFullPath,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareComponentGuid = $SoftwareComponentGuid
 			ApplicabilityRuleFullPath = $ApplicabilityRuleFullPath
 			DetectionRuleFullPath = $DetectionRuleFullPath

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/ExportRuleDefinitionsFromComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ExpressionsFromRule {

<#
.SYNOPSIS
    Return list of expression from inventory rule. Supported only 'Smart rule engine'. For other engines, the list will be empty 

.PARAMETER RuleGuid
    Inventory rule guid 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
List<ExpressionDetails> expressions = new List<ExpressionDetails>(ruleLib.GetExpressionsFromRule(new Guid("01CF7673-56E2-49e0-A737-971BCCD68D28"));
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
ruleDetails = ruleLib.GetExpressionsFromRule(Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:GetExpressionsFromRule "RuleGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}"
echo Rule created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$RuleGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/GetExpressionsFromRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Get-ExpressionsFromRuleFile {

<#
.SYNOPSIS
    Return list of expression from inventory rule file. Supported only 'Smart rule engine'. For other engines, the list will be empty 

.PARAMETER RuleXMLFile
    Inventory rule XML. User can obtain this file by calling ExportRuleDefinitionsFromComponent or ExportRuleDefinition methods. 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
List<ExpressionDetails> expressions = new List<ExpressionDetails>(ruleLib.GetExpressionsFromRuleFile(@"c:\rules\IsWin64Rule_New.xml");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
ruleDetails = ruleLib.GetExpressionsFromRuleFile("c:\rules\IsWin64Rule_New.xml")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:GetExpressionsFromRuleFile "RuleXMLFile:c:\rules\IsWin64Rule_New.xml"
echo Rule created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    NOTE: For CLI usage, all attributes must be protected with single quote characters rather than double quotes. The command shell strips double quotes so the XML will not work if this modification is not done. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$RuleXMLFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleXMLFile = $RuleXMLFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/GetExpressionsFromRuleFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Remove-Expression {

<#
.SYNOPSIS
    Remove expression 

.PARAMETER RuleExpression
    This is the XML expression. You can use the CreateExpressionXXX or GetExpressionsXXX methods for obtaining an expression. 

.PARAMETER ExpressionGuid
    This is the Guid of an expression or child operation. For example, AddOperatorToExpression can create additional operators such as 'and', 'or' and 'not' as part of the expression. It is the guid of the additional operator that is used in this parameter. 

.EXAMPLE 
    CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
ExpressionDetails details = ruleLib.RemoveExpression(expressionDetails.Xml, operation.Guid);
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.RemoveExpression(expressionDetails.Xml, operation.Guid)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:RemoveExpression"RuleExpression:%EXPRESSION_DETAILS_XML%" "ExpressionGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    NOTE: For CLI usage, all XML attributes must be protected with single quote characters rather than double quotes. The command shell strips double quotes so the XML will not work if this modification is not done. 
For further information please see the Expressions information. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$RuleExpression,
			[Parameter(Mandatory=$true)]
			[guid]$ExpressionGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleExpression = $RuleExpression
 			ExpressionGuid = $ExpressionGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/RemoveExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Update-InventoryRule {

<#
.SYNOPSIS
    Updated existing inventory rule based on template XML 

.PARAMETER RuleGuid
    RuleGuid - guid of existing rule. 

.PARAMETER RuleXMLFile
    Inventory rule XML. You can obtain a ruleXML with the CreateInventoryRule method. 

.EXAMPLE 
    Update rule 
CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
bool success = ruleLib.UpdateInventoryRule(ruleDetails.Guid, @"c:\rules\IsWin64Rule_New.xml");
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
success = ruleLib.UpdateInventoryRule(ruleDetails.Guid, "c:\rules\IsWin64Rule_New.xml")
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:UpdateInventoryRule "RuleGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}" "RuleXMLFile:c:\rules\IsWin64Rule_New.xml"
echo Rule updated
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    NOTE: For CLI usage, all attributes must be protected with single quote characters rather than double quotes. The command shell strips double quotes so the XML will not work if this modification is not done. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$RuleGuid,
			[Parameter(Mandatory=$true)]
			[string]$RuleXMLFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid
 			RuleXMLFile = $RuleXMLFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/UpdateInventoryRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function Update-InventoryRuleFromExpression {

<#
.SYNOPSIS
    Updated existing inventory rule based on expression 

.PARAMETER RuleGuid
    RuleGuid - guid of existing rule 

.PARAMETER RuleExpression
    xml of expression. User can obtain an expression by calling functions CreateExpressionXXX 

.EXAMPLE 
    Update rule 
CopyC#
InventoryRuleManagement ruleLib = new InventoryRuleManagement();
InventoryRuleDetails details = ruleLib.UpdateInventoryRuleFromExpression(ruleDetails.Guid, expressionDetails.Xml);
CopyVBScript
set ruleLib = CreateObject("Altiris.ASDK.SMF.InventoryRuleManagement")
set details = ruleLib.UpdateInventoryRuleFromExpression(ruleDetails.Guid, expressionDetails.Xml)
Copy? 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:UpdateInventoryRuleFromExpression "RuleGuid:{01CF7673-56E2-49e0-A737-971BCCD68D28}" "RuleExpression:%EXPRESSION_DETAILS_XML%"
echo Rule updated
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    NOTE: For CLI usage, all attributes must be protected with single quote characters rather than double quotes. The command shell strips double quotes so the XML will not work if this modification is not done. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$RuleGuid,
			[Parameter(Mandatory=$true)]
			[string]$RuleExpression,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			RuleGuid = $RuleGuid
 			RuleExpression = $RuleExpression

        }


    $WebServiceUrl = "altiris/ASDK.SMF/InventoryRuleManagementService.asmx/UpdateInventoryRuleFromExpression"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

