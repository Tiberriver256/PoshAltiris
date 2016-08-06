
Function Invoke-DeploymentSolutionTask {

<#
.SYNOPSIS
    Performs some work in Deployment Solution. The CLI is being deprecated. Please see the CLI Programming Guide. RunDeploymentSolutionTask will create a new Task Server task, get resource information, change settings and create OS license keys, etc. 

.PARAMETER xml
    XML string containing input values. See the Deployment Solution COM Programming page for information on XML input format.  

.EXAMPLE 
    Get all OS file resources. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"; 
Dim ObjDSDetails As DSDetails
ObjDSDetails= taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Get OS file resources by name 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Name>SamplePackageName</Name></Item></DeploymentItem>";        
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = " <DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Name>SamplePackageName</Name></Item></DeploymentItem>" 
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Name>SamplePackageName</Name></Item></DeploymentItem>"
Get OS file resource by Resource Guid. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Guid>PackageGUID</Guid></Item></DeploymentItem>";        
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Guid>PackageGUID</Guid></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Guid>PackageGUID</Guid></Item></DeploymentItem>"
Get all Image resources. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>";
 DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Get Image resource by resource name. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>Get</ItemAction><Item><Name>Image Name</Name></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>Get</ItemAction><Item><Name>Image Name</Name></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>Get</ItemAction><Item><Name>Image Name</Name></Item></DeploymentItem>";
Get all computer resource by collection guid. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>GetAll</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>GetAll</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>GetAll</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid></Item></DeploymentItem>"
Get computer resource by collection guid and Computer name. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>Get</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid><Name>Computer Name</Name></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>Get</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid><Name>Computer Name</Name></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails= taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>Get</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid><Name>Computer Name</Name></Item></DeploymentItem>"
Create credential guid for user name and password. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>Credential</ItemName><ItemAction>Create</ItemAction><Item><userName>domain\name</userName><password>User password</password></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>Credential</ItemName><ItemAction>Create</ItemAction><Item><userName>domain\name</userName><password>User password</password></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>Credential</ItemName><ItemAction>Create</ItemAction><Item><userName>domain\name</userName><password>User password</password></Item></DeploymentItem>"
Apply multicast settings. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>ImageMulticast</ItemName><ItemAction>Apply</ItemAction>" +
"<Item><MultiCastSettings><InstallSettings><Threshold>2</Threshold><BroadcastLimit>5</BroadcastLimit><TimeOut>5</TimeOut>" +
"<IPAddress_from>224.2.0.3</IPAddress_from><IPAddress_to>224.2.0.20</IPAddress_to><Port_from>401</Port_from><Port_to>410</Port_to>" +
"</InstallSettings><GlobalSettings><Threshold>2</Threshold><BroadcastLimit>5</BroadcastLimit><TimeOut>5</TimeOut>" +
"<IPAddress_from>224.2.0.3</IPAddress_from><IPAddress_to>224.2.0.20</IPAddress_to><Port_from>401</Port_from><Port_to>410</Port_to>" + 
"</GlobalSettings></MultiCastSettings></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>ImageMulticast</ItemName><ItemAction>Apply</ItemAction>" & vbcrlf & _
"<Item><MultiCastSettings><InstallSettings><Threshold>2</Threshold><BroadcastLimit>5</BroadcastLimit><TimeOut>5</TimeOut>" & vbcrlf & _
"<IPAddress_from>224.2.0.3</IPAddress_from><IPAddress_to>224.2.0.20</IPAddress_to><Port_from>401</Port_from><Port_to>410</Port_to>" & vbcrlf & _
"</InstallSettings><GlobalSettings><Threshold>2</Threshold><BroadcastLimit>5</BroadcastLimit><TimeOut>5</TimeOut>" & vbcrlf & _
"<IPAddress_from>224.2.0.3</IPAddress_from><IPAddress_to>224.2.0.20</IPAddress_to><Port_from>401</Port_from><Port_to>410</Port_to>" & vbcrlf & _
"</GlobalSettings></MultiCastSettings></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>ImageMulticast</ItemName><ItemAction>Apply</ItemAction>
<Item><MultiCastSettings><InstallSettings><Threshold>2</Threshold><BroadcastLimit>5</BroadcastLimit><TimeOut>5</TimeOut>
<IPAddress_from>224.2.0.3</IPAddress_from><IPAddress_to>224.2.0.20</IPAddress_to><Port_from>401</Port_from><Port_to>410</Port_to>
</InstallSettings><GlobalSettings><Threshold>2</Threshold><BroadcastLimit>5</BroadcastLimit><TimeOut>5</TimeOut>
<IPAddress_from>224.2.0.3</IPAddress_from><IPAddress_to>224.2.0.20</IPAddress_to><Port_from>401</Port_from><Port_to>410</Port_to>
</GlobalSettings></MultiCastSettings></Item></DeploymentItem>"
Add license key entry for specific operating system. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>Create</ItemAction><Item>" +
"<OSLicenseKeys><OSLicenseKey><operatingSystemName>Windows Server 2003 Standard Edition</operatingSystemName><operatingSystemArchitecture>0</operatingSystemArchitecture>" +
"<licenseKey>111-111-111-111-111</licenseKey><licenseKeyDescription>Licensekey of Windows Server 2003 Standard Edition x64</licenseKeyDescription>" + 
"</OSLicenseKey><OSLicenseKey><operatingSystemName>Windows Server 2003 Enterprise Edition</operatingSystemName><operatingSystemArchitecture>0</operatingSystemArchitecture>" +
"<licenseKey>111-111-111-111-111</licenseKey><licenseKeyDescription>Licensekey of Windows Server 2003 Enterprise Edition x86</licenseKeyDescription>>" +
"</OSLicenseKey></OSLicenseKeys></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>Create</ItemAction><Item>" & vbcrlf & _
"<OSLicenseKeys><OSLicenseKey><operatingSystemName>Windows Server 2003 Standard Edition</operatingSystemName><operatingSystemArchitecture>0</operatingSystemArchitecture>" & vbcrlf & _
"<licenseKey>111-111-111-111-111</licenseKey><licenseKeyDescription>Licensekey of Windows Server 2003 Standard Edition x64</licenseKeyDescription>" + 
"</OSLicenseKey><OSLicenseKey><operatingSystemName>Windows Server 2003 Enterprise Edition</operatingSystemName><operatingSystemArchitecture>0</operatingSystemArchitecture>" & vbcrlf & _
"<licenseKey>111-111-111-111-111</licenseKey><licenseKeyDescription>Licensekey of Windows Server 2003 Enterprise Edition x86</licenseKeyDescription>>" & vbcrlf & _
"</OSLicenseKey></OSLicenseKeys></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails= taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>Create</ItemAction><Item>
<OSLicenseKeys><OSLicenseKey><operatingSystemName>Windows Server 2003 Standard Edition</operatingSystemName><operatingSystemArchitecture>0</operatingSystemArchitecture>
<licenseKey>111-111-111-111-111</licenseKey><licenseKeyDescription>Licensekey of Windows Server 2003 Standard Edition x64</licenseKeyDescription>
</OSLicenseKey><OSLicenseKey><operatingSystemName>Windows Server 2003 Enterprise Edition</operatingSystemName><operatingSystemArchitecture>0</operatingSystemArchitecture>
<licenseKey>111-111-111-111-111</licenseKey><licenseKeyDescription>Licensekey of Windows Server 2003 Enterprise Edition x86</licenseKeyDescription>>" 
</OSLicenseKey></OSLicenseKeys></Item></DeploymentItem>
Get all license key entry. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>" 
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Get all OS license keys. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = " <DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>" 
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml: "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Get OS license key for DS supported OS Name. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>Get</ItemAction><Item><OSLicenseKeys>" +
"<OSLicenseKey><osName>Windows 2003</osName><osArch>0</osArch></OSLicenseKey></OSLicenseKeys></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>Get</ItemAction><Item><OSLicenseKeys>" & vbcrlf & _
" <OSLicenseKey><osName>Windows 2003</osName><osArch>0</osArch></OSLicenseKey></OSLicenseKeys></Item></DeploymentItem>" 
  Dim ObjDSDetails As DSDetails
  ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>Get</ItemAction><Item><OSLicenseKeys>
<OSLicenseKey><osName>Windows 2003</osName><osArch>0</osArch></OSLicenseKey></OSLicenseKeys></Item></DeploymentItem>"
Recreate Preboot configuration of PXE image 
CopyC#
string inputXml =  "<DeploymentItem><ItemType>Settings</ItemType><ItemName>PrebootConfigurations</ItemName><ItemAction>Recreate</ItemAction>" +
                   "<Item><Collection><ItemGuid>2349f9d3-75c3-4757-9c1e-b4311038e04e</ItemGuid></Collection></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml =  " <DeploymentItem><ItemType>Settings</ItemType><ItemName>PrebootConfigurations</ItemName><ItemAction>Recreate</ItemAction>" & vbcrlf & _
             " <Item><Collection><ItemGuid>2349f9d3-75c3-4757-9c1e-b4311038e04e</ItemGuid></Collection></Item></DeploymentItem>" 
  Dim ObjDSDetails As DSDetails
  ObjDSDetails= taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>PrebootConfigurations</ItemName><ItemAction>Recreate</ItemAction>
 <Item><Collection><ItemGuid>2349f9d3-75c3-4757-9c1e-b4311038e04e</ItemGuid></Collection></Item></DeploymentItem>"
Create preboot configuration for PXE image. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>PrebootConfigurations</ItemName><ItemAction>Create</ItemAction>" +
                  "<Item><name>Sample Image</name><description>Preboot configuration Sample Image</description><operatingSystem>6</operatingSystem>" +
                  "<architectureType>1</architectureType><OemExtension>1</OemExtension><bootImageType>1</bootImageType><outputFile></outputFile>" +
                  "</Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>PrebootConfigurations</ItemName><ItemAction>Create</ItemAction>" & vbcrlf & _
                  "<Item><name>Sample Image</name><description>Preboot configuration Sample Image</description><operatingSystem>6</operatingSystem>" & vbcrlf & _
                  "<architectureType>1</architectureType><OemExtension>1</OemExtension><bootImageType>1</bootImageType><outputFile></outputFile>" & vbcrlf & _
                  "</Item></DeploymentItem>"
  Dim ObjDSDetails As DSDetails
  ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>PrebootConfigurations</ItemName><ItemAction>Create</ItemAction>
<Item><name>Sample Image</name><description>Preboot configuration Sample Image</description><operatingSystem>6</operatingSystem>
<architectureType>1</architectureType><OemExtension>1</OemExtension><bootImageType>1</bootImageType><outputFile></outputFile></Item></DeploymentItem>"
Create an OEM Extension. 
CopyC#
  string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>Create</ItemAction>" +
                 "<Item><OEMExtensionName> NewOEM </OEMExtensionName><OEMExtensionLocation> NewOEMLoc</OEMExtensionLocation><OEMIsDefault>0</OEMIsDefault>" +
                 "</Item></DeploymentItem>"
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>Create</ItemAction>" & vbcrlf & _
               "<Item><OEMExtensionName> NewOEM </OEMExtensionName><OEMExtensionLocation> NewOEMLoc</OEMExtensionLocation><OEMIsDefault>0</OEMIsDefault>" & vbcrlf & _
               "</Item></DeploymentItem>"
Dim ObjDSDetails As DSDetails
ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>Create</ItemAction>
<Item><OEMExtensionName> NewOEM </OEMExtensionName><OEMExtensionLocation> NewOEMLoc</OEMExtensionLocation><OEMIsDefault>0</OEMIsDefault></Item></DeploymentItem>"
Get a single OEM extension. 
CopyC#
string inputXml = <DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>Get</ItemAction><Item><OEMExtensionName>NewOEM</OEMExtensionName></Item></DeploymentItem>
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
string inputXml = <DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>Get</ItemAction><Item><OEMExtensionName>NewOEM</OEMExtensionName></Item></DeploymentItem>
Dim ObjDSDetails As DSDetails
ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>Get</ItemAction><Item><OEMExtensionName>NewOEM</OEMExtensionName></Item></DeploymentItem>"
Get all OEM extensions. 
CopyC#
string inputXml = <DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
string inputXml = <DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>
Dim ObjDSDetails As DSDetails
ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Create configuration settings. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>SystemConfiguration</ItemName><ItemAction>Create</ItemAction>" +
                  "<Item><ConfigData guid="" name="" description="" modified=""><ComputerName value="" index="" type="" index_type="">" +
                  "</ComputerName><NICs dns_suffix="" range="" ><NIC ip_type=""><IPInterfaces><Interface address="" mask = "">" +
                  "</IPInterfaces><Gateways><Gateway value=""></Gateways><DNSServers><DNSServer value=""></DNSServers><DNSSearchSuffixes>" +
                  "<Suffix value=""></DNSSearchSuffixes></NIC></NICs><Microsoft value="" org_unit="" type=""><credential guid="" />" +
                  "</Microsoft></ConfigData></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>SystemConfiguration</ItemName><ItemAction>Create</ItemAction>" & vbcrlf & _
                  "<Item><ConfigData guid="" name="" description="" modified=""><ComputerName value="" index="" type="" index_type="">" & vbcrlf & _
                  "</ComputerName><NICs dns_suffix="" range="" ><NIC ip_type=""><IPInterfaces><Interface address="" mask = "">" & vbcrlf & _
                  "</IPInterfaces><Gateways><Gateway value=""></Gateways><DNSServers><DNSServer value=""></DNSServers><DNSSearchSuffixes>" & vbcrlf & _
                 "<Suffix value=""></DNSSearchSuffixes></NIC></NICs><Microsoft value="" org_unit="" type=""><credential guid="" />" & vbcrlf & _
                  "</Microsoft></ConfigData></Item></DeploymentItem>"
  Dim ObjDSDetails As DSDetails
  ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml);
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>SystemConfiguration</ItemName><ItemAction>Create</ItemAction>
<Item><ConfigData guid="" name="" description="" modified=""><ComputerName value="" index="" type="" index_type="">
</ComputerName><NICs dns_suffix="" range="" ><NIC ip_type=""><IPInterfaces><Interface address="" mask = "">
</IPInterfaces><Gateways><Gateway value=""></Gateways><DNSServers><DNSServer value=""></DNSServers><DNSSearchSuffixes>
<Suffix value=""></DNSSearchSuffixes></NIC></NICs><Microsoft value="" org_unit="" type=""><credential guid="" />
</Microsoft></ConfigData></Item></DeploymentItem>"
Sample code to create Task 
CopyC#
string inputXml = "[Use above Xml]";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "[Use above Xml]"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
Copy? 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml : "[Use above Xml]" 

.NOTES
    NOTE: The Altiris.ASDK.DeploymentSolution.RunDeploymentSolutionTask method is not intended for use directly by ASDK users. Use one of the ASDK interface layers (COM, web services and CLI) to access the functionality in this method. See the Examples section, below, for sample code in each of these three layers. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$xml,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			xml = $xml

        }


    $WebServiceUrl = "altiris/ASDK.DeploymentSolution/DSTaskManagementService.asmx/RunDeploymentSolutionTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

