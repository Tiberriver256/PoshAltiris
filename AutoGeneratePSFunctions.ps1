﻿$WebServices = @(
"http://vagrant-2012-r2/altiris/ASDK.DeploymentSolution/DSTaskManagementService.asmx"
"http://vagrant-2012-r2/altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS/ItemManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS/CollectionManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS/HierarchyManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS/ReportManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS/ResourceManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS/ScopingManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.NS/SecurityManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SMF/InventoryRuleManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SMF/SoftwareComponentManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SMF/SoftwarePackageManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SMF/SoftwareProductManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SWM/SoftwarePortalManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.SWM/SoftwareTasksManagementService.asmx",
"http://vagrant-2012-r2/altiris/ASDK.Task/TaskManagementService.asmx")

$Credential = Get-Credential

foreach ($WebserviceUri in $WebServices)
{

    $Webservice = New-WebServiceProxy -Uri $WebserviceUri -Credential $Credential
    ConvertTo-Function -WebService $Webservice | Out-File C:\Users\wmrm\Desktop\GitHub\PowerShellSymantecAltirisASDK\AutoGeneratedPS.ps1 -Append
}