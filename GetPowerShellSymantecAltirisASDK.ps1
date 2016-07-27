# This awesome installation script was actually developed by the makers of psget. Great module!


param (
  $url = "https://raw.githubusercontent.com/Tiberriver256/PowerShellSymantecAltirisASDK/master/PowerShellSymantecAltirisASDK.psm1"
)

function Find-Proxy() {
    if ((Test-Path Env:HTTP_PROXY) -Or (Test-Path Env:HTTPS_PROXY)) {
        return $true
    }
    Else {
        return $false
    }
}

function Get-Proxy() {
    if (Test-Path Env:HTTP_PROXY) {
        return $Env:HTTP_PROXY
    }
    ElseIf (Test-Path Env:HTTPS_PROXY) {
        return $Env:HTTPS_PROXY
    }
}

function Get-File {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory=$true)]
        [String] $Url,

        [Parameter(Mandatory=$true)]
        [String] $SaveToLocation
    )
    $command = (Get-Command Invoke-WebRequest -ErrorAction SilentlyContinue)
    if($command -ne $null) {
        if (Find-Proxy) {
            $proxy = Get-Proxy
            Write-Host "Proxy detected"
            Write-Host "Using proxy address $proxy"
            Invoke-WebRequest -Uri $Url -OutFile $SaveToLocation -Proxy $proxy
        }
        else {
            Invoke-WebRequest -Uri $Url -OutFile $SaveToLocation
        }
    }
    else {
        $client = (New-Object Net.WebClient)
        $client.UseDefaultCredentials = $true
        if (Find-Proxy) {
            $proxy = Get-Proxy
            Write-Host "Proxy detected"
            Write-Host "Using proxy address $proxy"
            $webproxy = new-object System.Net.WebProxy
            $webproxy.Address = $proxy
            $client.proxy = $webproxy
        }
        $client.DownloadFile($Url, $SaveToLocation)
    }
}

function Install-PowerShellSymantecAltirisASDK {
  
    param (
      [string]
      # URL to the respository to download PowerShellSymantecAltirisASDK from
      $url
    )

    if(!(Test-Admin)) {
        Write-Host "User is not running with administrative rights. Attempting to elevate..."
        $command = "-ExecutionPolicy bypass -noexit -command (new-object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Tiberriver256/PowerShellSymantecAltirisASDK/master/GetPowerShellSymantecAltirisASDK.ps1') | iex"
        Start-Process powershell -verb runas -argumentlist $command
        return
    }
  
    $Destination = "C:\Program Files\WindowsPowerShell\Modules"
    
    Write-host "Installing to $Destination"
    New-Item -Path ($Destination + "\PowerShellSymantecAltirisASDK\") -ItemType Directory -Force | Out-Null
    Write-Host ('Downloading PowerShellSymantecAltirisASDK from {0}' -f $url)
    Get-File -Url $url -SaveToLocation "$Destination\PowerShellSymantecAltirisASDK\PowerShellSymantecAltirisASDK.psm1"

    $executionPolicy = (Get-ExecutionPolicy)
    $executionRestricted = ($executionPolicy -eq "Restricted")
    if ($executionRestricted) {
        Write-Warning @"
Your execution policy is $executionPolicy, this means you will not be able import or use any scripts including modules.
To fix this change your execution policy to something like RemoteSigned.

        PS> Set-ExecutionPolicy RemoteSigned

For more information execute:

        PS> Get-Help about_execution_policies

"@
    }

    if (!$executionRestricted) {
        # ensure PowerShellSymantecAltirisASDK is imported from the location it was just installed to
        Import-Module -Name $Destination\PowerShellSymantecAltirisASDK
    }
    Write-Host "PowerShellSymantecAltirisASDK is installed and ready to use" -Foreground Green
    Write-Host @"
USAGE:
    PS> import-module PowerShellSymantecAltirisASDK
    PS> Get-Command -Module PowerShellSymantecAltirisASDK

For more details visit https://github.com/Tiberriver256/PowerShellSymantecAltirisASDK
"@
}

function Test-Admin {
    $identity  = [System.Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = New-Object System.Security.Principal.WindowsPrincipal( $identity )
    return $principal.IsInRole( [System.Security.Principal.WindowsBuiltInRole]::Administrator )
}

Install-PowerShellSymantecAltirisASDK -Url $url