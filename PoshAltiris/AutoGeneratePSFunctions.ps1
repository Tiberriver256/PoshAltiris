Function AutoGeneratePSFunctions ($Server, $PowerShellASDKPath)
{

    $WebServices = @(
    @{URI="http://$Server/altiris/ASDK.DeploymentSolution/DSTaskManagementService.asmx";ServiceName="DSTaskManagement"},
    @{URI="http://$Server/altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx";ServiceName="SWDSolnAdvertisementManagement"},
    @{URI="http://$Server/altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx";ServiceName="SWDSolnPackageManagement"},
    @{URI="http://$Server/altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx";ServiceName="SWDSolnProgramManagement"},
    @{URI="http://$Server/altiris/ASDK.NS/ItemManagementService.asmx";ServiceName="ItemManagement"},
    @{URI="http://$Server/altiris/ASDK.NS/CollectionManagementService.asmx";ServiceName="CollectionManagement"},
    @{URI="http://$Server/altiris/ASDK.NS/HierarchyManagementService.asmx";ServiceName="HierarchyManagement"},
    @{URI="http://$Server/altiris/ASDK.NS/ReportManagementService.asmx";ServiceName="ReportManagement"},
    @{URI="http://$Server/altiris/ASDK.NS/ResourceManagementService.asmx";ServiceName="ResourceManagement"},
    @{URI="http://$Server/altiris/ASDK.NS/ScopingManagementService.asmx";ServiceName="ScopingManagement"},
    @{URI="http://$Server/altiris/ASDK.NS/SecurityManagementService.asmx";ServiceName="SecurityManagement"},
    @{URI="http://$Server/altiris/ASDK.SMF/InventoryRuleManagementService.asmx";ServiceName="InventoryRuleManagement"},
    @{URI="http://$Server/altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx";ServiceName="SoftwareCommandLineManagement"},
    @{URI="http://$Server/altiris/ASDK.SMF/SoftwareComponentManagementService.asmx";ServiceName="SoftwareComponentManagement"},
    @{URI="http://$Server/altiris/ASDK.SMF/SoftwarePackageManagementService.asmx";ServiceName="SoftwarePackageManagement"},
    @{URI="http://$Server/altiris/ASDK.SMF/SoftwareProductManagementService.asmx";ServiceName="SoftwareProductManagement"},
    @{URI="http://$Server/altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx";ServiceName="SoftwareDeliveryPolicyManagement"},
    @{URI="http://$Server/altiris/ASDK.SWM/SoftwarePortalManagementService.asmx";ServiceName="SoftwarePortalManagement"},
    @{URI="http://$Server/altiris/ASDK.SWM/SoftwareTasksManagementService.asmx";ServiceName="SoftwareTasksManagement"},
    @{URI="http://$Server/altiris/ASDK.Task/TaskManagementService.asmx";ServiceName="TaskManagement"},
    @{URI="http://$Server/Altiris/PatchManagementCore/PatchWorkflowSvc.asmx";ServiceName="PatchManagement"})

    start-process hh.exe -ArgumentList @("-decompile", "$((Get-Location).Path + '\DecompiledHelp')", "$((Get-Item .\ASDK8.0.chm).FullName)") -Wait

    foreach ($WebserviceUri in $WebServices)
    {
        $Path = "$PowerShellASDKPath\Public\" + $WebServiceuri.ServiceName + '.ps1'
        New-Item -Path $Path -Force
        $Webservice = New-WebServiceProxy -Uri $WebserviceUri.Uri -UseDefaultCredential
        ConvertTo-Function -WebService $Webservice -ServiceName $WebServiceUri.ServiceName | Out-File -FilePath $Path -Encoding ASCII -Append
    }

    Remove-Item .\DecompiledHelp -Force -Recurse

}