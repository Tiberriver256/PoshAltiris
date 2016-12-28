. .\ServiceToCmdletMappings.ps1

Function Create-HTMLDOMFromFile
{
Param(
        [String] $FileName,
        [String] $TagName,
        [Int] $OuputCount = 11
)

    $HTML = New-Object -Com "HTMLFile";
    $Content = Get-Content -Path $FileName -raw
    
    #To convert raw content to HTML DOM (Document object Model) and 2 stands for DOM level 2
    $HTML.IHTMLDocument2_write($Content)
    
    if($TagName)
    {
        #Some data wrangling to extract the exact information
        $HTML.all.tags($TagName) | select innertext -ExpandProperty innertext -First $OuputCount
    }
    else
    {
        $HTML
    }
}

Function ConvertTo-Function ($WebService, $ServiceName) {

    $WebServiceMethods = $WebService | gm -MemberType Method | where {$_.Name -notmatch "Async" -and$_.Definition -notmatch "System.IAsyncResult" -and @("Discover","Dispose","ToString","Abort","InitializeLifetimeService","GetType","GetHashcode","Equals","GetLifeTimeService","CreateObjRef") -notcontains $_.name}

    foreach ($Method in $WebServiceMethods) {
    Write-Host "Parsing method: $Method"
    $CurrentMethodDefinition = [regex]::matches($Method.Definition, "^(.*?)\s(\w*)\(((\w*)\s(\w*),?\s?)*\).*$")
    $HtmlHelpFileName = Get-Item ".\DecompiledHelp\html\*_$($ServiceName)*$($CurrentMethodDefinition.Captures[0].Groups[2].Value).htm"
    $HTMLDOMFile = Create-HTMLDOMFromFile -FileName $HtmlHelpFileName.FullName

    $Function = @"

Function $($ServiceToCmdletMappings[$CurrentMethodDefinition.Captures[0].Groups[2].Value]) {

<#
.SYNOPSIS
    $(($HTMLDOMFile.body.getElementsByClassName("summary"))[0].textcontent)$(

    for($i = 0; $i -lt $CurrentMethodDefinition.captures[0].groups[4].Captures.count; $i++) {

        @"


.PARAMETER $($CurrentMethodDefinition[0].captures[0].groups[5].Captures[$i].Value)
    $(($HTMLDOMFile.getElementById("parameters").childnodes[$i+1].innerText -split '\n')[2])
"@

    }

        @"


.EXAMPLE 
    $($HTMLDomFile.getElementById("exampleSection").InnerText)
"@

        $(if($HTMLDomFile.getElementById("remarksSection").InnerText -notmatch "The CLI is being deprecated. Please see the CLI Programming Guide."){@"


.NOTES
    $($HTMLDomFile.getElementById("remarksSection").InnerText)
"@}
)
)
#>
    
    param (

"@

    for($i = 0; $i -lt $CurrentMethodDefinition.captures[0].groups[4].Captures.count; $i++) {

        $Function += "`t`t`t[Parameter(Mandatory=`$true)]`n`t`t`t[$($CurrentMethodDefinition.captures[0].groups[4].Captures[$i].Value)]`$$($CurrentMethodDefinition[0].captures[0].groups[5].Captures[$i].Value),`n"

    }

    $Function += @"
            [Parameter(Mandatory=`$true)]
            [string]`$Server,
            [PSCredential]`$Credential
        )

    `$Body = @{

$(
       
            for($i = 0; $i -lt $CurrentMethodDefinition.captures[0].groups[4].Captures.count; $i++) {

                "`t`t`t$($CurrentMethodDefinition.captures[0].groups[5].Captures[$i].Value) = `$$($CurrentMethodDefinition[0].captures[0].groups[5].Captures[$i].Value)`n"
        
            }
        
        )
        }


    `$WebServiceUrl = "$($WebService.Url -replace "^\w*:\/\/.*?\/",'')/$($CurrentMethodDefinition[0].Captures[0].Groups[2].Value)"


    if(`$Credential)
    {
       `$Result = Invoke-RestMethod -Uri "https://`$Server/`$WebServiceUrl" -Method Post -Body `$Body -Credential `$Credential
    }
    else
    {
       `$Result = Invoke-RestMethod -Uri "https://`$Server/`$WebServiceUrl" -Method Post -Body `$Body -UseDefaultCredentials
    }

    if(`$Result.arrayofitemdetails){
        return `$Result.ArrayOfItemDetails.ItemDetails
    }elseif(`$Result.guid){
        return `$Result.guid.'#text'
    }else{
        return `$Result
    }

}
"@

    $Function | Out-String

    }

}
