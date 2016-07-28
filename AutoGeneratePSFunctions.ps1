$WebServices = @(
@{URI='http://localhost/altiris/ASDK.DeploymentSolution/DSTaskManagementService.asmx';ServiceName='DSTaskManagement'},
@{URI='http://localhost/altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx';ServiceName='SWDSolnAdvertisementManagement'},
@{URI='http://localhost/altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx';ServiceName='SWDSolnPackageManagement'},
@{URI='http://localhost/altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx';ServiceName='SWDSolnProgramManagement'},
@{URI='http://localhost/altiris/ASDK.NS/ItemManagementService.asmx';ServiceName='ItemManagement'},
@{URI='http://localhost/altiris/ASDK.NS/CollectionManagementService.asmx';ServiceName='CollectionManagement'},
@{URI='http://localhost/altiris/ASDK.NS/HierarchyManagementService.asmx';ServiceName='HierarchyManagement'},
@{URI='http://localhost/altiris/ASDK.NS/ReportManagementService.asmx';ServiceName='ReportManagement'},
@{URI='http://localhost/altiris/ASDK.NS/ResourceManagementService.asmx';ServiceName='ResourceManagement'},
@{URI='http://localhost/altiris/ASDK.NS/ScopingManagementService.asmx';ServiceName='ScopingManagement'},
@{URI='http://localhost/altiris/ASDK.NS/SecurityManagementService.asmx';ServiceName='SecurityManagement'},
@{URI='http://localhost/altiris/ASDK.SMF/InventoryRuleManagementService.asmx';ServiceName='InventoryRuleManagement'},
@{URI='http://localhost/altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx';ServiceName='SoftwareCommandLineManagement'},
@{URI='http://localhost/altiris/ASDK.SMF/SoftwareComponentManagementService.asmx';ServiceName='SoftwareComponentManagement'},
@{URI='http://localhost/altiris/ASDK.SMF/SoftwarePackageManagementService.asmx';ServiceName='SoftwarePackageManagement'},
@{URI='http://localhost/altiris/ASDK.SMF/SoftwareProductManagementService.asmx';ServiceName='SoftwareProductManagement'},
@{URI='http://localhost/altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx';ServiceName='SoftwareDeliveryPolicyManagement'},
@{URI='http://localhost/altiris/ASDK.SWM/SoftwarePortalManagementService.asmx';ServiceName='SoftwarePortalManagement'},
@{URI='http://localhost/altiris/ASDK.SWM/SoftwareTasksManagementService.asmx';ServiceName='SoftwareTasksManagement'},
@{URI='http://localhost/altiris/ASDK.Task/TaskManagementService.asmx';ServiceName='TaskManagement'}
@{URI='http://localhost/Altiris/PatchManagementCore/PatchWorkflowSvc.asmx';ServiceName='PatchManagement'})


foreach ($WebserviceUri in $WebServices)
{
    $Path = 'C:\Users\rob.steenwyk\Documents\GitHub\PowerShellSymantecAltirisASDK\Functions\' + $WebServiceuri.ServiceName + '.ps1'
    $Webservice = New-WebServiceProxy -Uri $WebserviceUri.Uri -UseDefaultCredential
    ConvertTo-Function -WebService $Webservice -ServiceName $WebServiceUri.ServiceName | Out-File -FilePath $Path -Encoding ASCII -Append
}