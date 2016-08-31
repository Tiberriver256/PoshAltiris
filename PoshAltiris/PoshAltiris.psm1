#Get public and private function definition files.
    $FunctionFiles  = Get-ChildItem -Path $PSScriptRoot\Public\*.ps1

    Write-Verbose "Hello"

    $FunctionNames = @()

#Dot source the files
    Foreach($import in $FunctionFiles)
    {
        Try
        {
            Write-Verbose "Importing: $($import.FullName)"
            . $import.fullname

            #Since we broke out the functions by web service instead of by function name I had to parse the contents of each ps1 file to extract the names of the functions and store them in a variable for exporting. See http://mikefrobbins.com/2016/01/14/powershell-script-module-design-placing-functions-directly-in-the-psm1-file-versus-dot-sourcing-separate-ps1-files/
            #Maybe there is a better way
            $FunctionNames += [System.Management.Automation.PSParser]::Tokenize((get-content $import),[ref]$null) | where {$_.content -match "-" -and $_.Type -eq "CommandArgument"} | select -ExpandProperty content
        }
        Catch
        {
            Write-Error -Message "Failed to import function $($import.fullname): $_"
        }
    }



Export-ModuleMember -Function $FunctionNames
