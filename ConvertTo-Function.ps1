Function ConvertTo-Function ($WebService) {

    $WebServiceMethods = $WebService | gm -MemberType Method | where {$_.Name -notmatch "Async" -and$_.Definition -notmatch "System.IAsyncResult" -and @("Discover","Dispose","ToString","Abort","InitializeLifetimeService","GetType","GetHashcode","Equals","GetLifeTimeService","CreateObjRef") -notcontains $_.name}

    foreach ($Method in $WebServiceMethods) {
    Write-Host "Parsing method: $Method"
    $CurrentMethodDefinition = [regex]::matches($Method.Definition, "^(.*?)\s(\w*)\(((\w*)\s(\w*),?\s?)*\).*$")

    $Function = @"

Function $($CurrentMethodDefinition.Captures[0].Groups[2].Value) {
    
    param (

"@

    for($i = 0; $i -lt $CurrentMethodDefinition.captures[0].groups[4].Captures.count; $i++) {

        $Function += "`t`t`t[$($CurrentMethodDefinition.captures[0].groups[4].Captures[$i].Value)]`$$($CurrentMethodDefinition[0].captures[0].groups[5].Captures[$i].Value),`n"

    }

    $Function += @"
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
        Invoke-RestMethod -Uri "https://`$Server/`$WebServiceUrl" -Method Post -Body `$Body -Credential `$Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://`$Server/`$WebServiceUrl" -Method Post -Body `$Body -UseDefaultCredentials
    }

}
"@

    $Function | Out-String

    }

}
