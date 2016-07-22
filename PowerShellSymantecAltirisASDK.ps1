function Start-DeploymentSolutionTask
{
    param([string]$xml,
            $NSServer, 
            $Credential)

    $Body = @{

        xml=$xml

    } | ConvertTo-Json

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/altiris/asdk.deploymentsolution/DSTaskManagementService.asmx/RunDeploymentSolutionTask" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/altiris/asdk.deploymentsolution/DSTaskManagementService.asmx/RunDeploymentSolutionTask" -Method Post -Body $Body -UseDefaultCredentials
    }

}

function New-AdvertisementEx
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters Here

    } | ConvertTo-Json

    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/CreateAdvertisementEx"
    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

function Get-AdvertisementEx
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json

    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/GetAdvertisementExByGuid"
    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

function Get-AdvertisementExStatus
{
    param(
            [Parameter(ParameterSetName="ResourceGuid")]
            $ResourceGuid,
            [Parameter(ParameterSetName="ResourceName")]
            $ResourceName,
            [Parameter(ParameterSetName="ResourceTargetGuid")]
            $ResourceTargetGuid,
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json

    switch($PSCmdlet.ParameterSetName) 
    {

        "ResourceGuid" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceGuid"}
        "ResourceName" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceName"}
        "ResourceTargetGuid" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceTargetGuid"}

    }
    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Get-AdvertisementExRunTime
{
    param(
            [Parameter(ParameterSetName="ResourceGuid")]
            $ResourceGuid,
            [Parameter(ParameterSetName="ResourceName")]
            $ResourceName,
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json

    switch($PSCmdlet.ParameterSetName) 
    {

        "ResourceGuid" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/GetAdvertisementExRunTimeByResourceGuid"}
        "ResourceName" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/GetAdvertisementExRunTimeByResourceName"}

    }
    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementEx
{
    param(
            [Parameter(ParameterSetName="Basic")]
            $sAdvertisementExGuid,
            [Parameter(ParameterSetName="Basic")]
            $sPackageGuid,
            [Parameter(ParameterSetName="Basic")]
            $sProgramGuid,
            [Parameter(ParameterSetName="Detail")]
            $bEnable,
            [Parameter(ParameterSetName="Detail")]
            $sAdvertisementExName,
            [Parameter(ParameterSetName="Detail")]
            $sAdvertisementExDescription,
            [Parameter(ParameterSetName="Detail")]
            $sResourceTargets,
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json

    switch($PSCmdlet.ParameterSetName) 
    {

        "Basic" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/ModifyAdvertisementExBasic"}
        "Detail" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/ModifyAdvertisementExDetail"}

    }
    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementExResourceTargets
{
    param(
            $sAdvertisementExGuid,
            $sResourceTarget,
            [Parameter(ValidateSet = ("ADD","REMOVE"))]
            $Action,
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/ModifyResourceTargets"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementExAgentSettings
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/SetAdvertisementExAgentSettings"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementExRunOptions
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/SetAdvertisementExRunOptions"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementExScheduleRunASAP
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleRunASAP"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementExScheduleRunAt
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleRunAt"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementExScheduleScheduleXML
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleScheduleXML"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-AdvertisementExAvailabilityRemovalOptions
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnAdvertisementManagementService.asmx/SetAvailabilityRemovalOptions"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

function Add-ProgramToPackage
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/AddProgramToPackage"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function New-PackageEx
{
    param(
            [Parameter(ParameterSet="Basic")]
            [Parameter(ParameterSet="Detail")]
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json

    switch($PSCmdlet.ParameterSetName) 
    {

        "Basic" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/CreatePackageExBasic"}
        "Detail" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/CreatePackageExDetail"}

    }

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-PackageEx
{
    param(
            [Parameter(ParameterSet="Basic")]
            [Parameter(ParameterSet="Detail")]
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json

    switch($PSCmdlet.ParameterSetName) 
    {

        "Basic" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/ModifyPackageExBasic"}
        "Detail" {$ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/ModifyPackageExDetail"}

    }

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-PackageExAdvancedOptions
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/SetPackageExAdvancedOptions"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Set-PackageExPackageServerOptions
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/SetPackageExPackageServerOptions"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


function Update-PackageExDistributionPoints
{
    param(
            $NSServer, 
            $Credential)

    $Body = @{

        #Parameters here

    } | ConvertTo-Json


    $ASDKUrl = "altiris/asdk.ns.softwaredelivery/swdSolnPackageManagementService.asmx/UpdateDistributionPoints"

    
    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$NSServer/$ASDKUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}