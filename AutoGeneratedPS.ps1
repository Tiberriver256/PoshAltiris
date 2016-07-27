
Function RunDeploymentSolutionTask {

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
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Get OS file resources by name 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Name>SamplePackageName</Name></Item></DeploymentItem>";        
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = " <DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Name>SamplePackageName</Name></Item></DeploymentItem>" 
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Name>SamplePackageName</Name></Item></DeploymentItem>"
Get OS file resource by Resource Guid. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Guid>PackageGUID</Guid></Item></DeploymentItem>";        
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Guid>PackageGUID</Guid></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>OSFile</ItemName><ItemAction>Get</ItemAction><Item><Guid>PackageGUID</Guid></Item></DeploymentItem>"
Get all Image resources. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>";
 DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Get Image resource by resource name. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>Get</ItemAction><Item><Name>Image Name</Name></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>Get</ItemAction><Item><Name>Image Name</Name></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Image</ItemName><ItemAction>Get</ItemAction><Item><Name>Image Name</Name></Item></DeploymentItem>";
Get all computer resource by collection guid. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>GetAll</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>GetAll</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>GetAll</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid></Item></DeploymentItem>"
Get computer resource by collection guid and Computer name. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>Get</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid><Name>Computer Name</Name></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>Get</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid><Name>Computer Name</Name></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails= taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Resources</ItemType><ItemName>Computers</ItemName><ItemAction>Get</ItemAction><Item><CollectionGuid>350AD6ED-3430-4789-8CC9-4358C91D7F3F</CollectionGuid><Name>Computer Name</Name></Item></DeploymentItem>"
Create credential guid for user name and password. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>Credential</ItemName><ItemAction>Create</ItemAction><Item><userName>domain\name</userName><password>User password</password></Item></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>Credential</ItemName><ItemAction>Create</ItemAction><Item><userName>domain\name</userName><password>User password</password></Item></DeploymentItem>"
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
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
CopyÂ 
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
CopyÂ 
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
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>"
Get all OS license keys. 
CopyC#
string inputXml = "<DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>";
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
inputXml = " <DeploymentItem><ItemType>Settings</ItemType><ItemName>OSLicenseKey</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>" 
 Dim ObjDSDetails As DSDetails
 ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
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
CopyÂ 
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
CopyÂ 
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
CopyÂ 
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
CopyÂ 
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
CopyÂ 
AltirisASDKDeploymentSolution.exe cmd:RunDeploymentSolutionTask xml:"<DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>Get</ItemAction><Item><OEMExtensionName>NewOEM</OEMExtensionName></Item></DeploymentItem>"
Get all OEM extensions. 
CopyC#
string inputXml = <DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>
DSDetails dsDetails = m_proxy.RunDeploymentSolutionTask(inputXml);
CopyVBScript
string inputXml = <DeploymentItem><ItemType>Settings</ItemType><ItemName>OEMExtension</ItemName><ItemAction>GetAll</ItemAction></DeploymentItem>
Dim ObjDSDetails As DSDetails
ObjDSDetails = taskManagement.RunDeploymentSolutionTask(inputXml)
CopyÂ 
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
CopyÂ 
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
CopyÂ 
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


Function CreateAdvertisementEx {

<#
.SYNOPSIS
    This ASDKMethod will be the basic method to save a AdvertisementItemEx. The rest of the parameters will be defaulted. (e.g.: Schedule would be Run ASAP) Like ItemDetails struct used in ItemManagementLib, AdvertisementExDetails would be a struct which would be specific to AdvertisementEx and would give the details about the same. 

.PARAMETER bEnable
    True if the item is enabled, false otherwise.  

.PARAMETER sAdvertisementExName
    Name of the advertisement. 

.PARAMETER sAdvertisementExDescription
    Description of the advertisement. 

.PARAMETER sFolderGuid
    Parent folder Guid of the item. 

.PARAMETER sPackageGuid
    The Guid of the package associated to the item. 

.PARAMETER sProgramGuid
    The Guid of the Program to execute that is associate with the package. 

.PARAMETER sResourceTargets
    Comma seperated list of resource target guids this item is applied to. 

.PARAMETER sPriority
    Priority of the Advertisement Item.Possible values are Low,Normal,High and VeryHigh. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}";
SWDSolnAdvertisementDetails advertisementObject = m_proxy.CreateAdvertisementEx( true, adName,"Advertisement description",folderObject.Guid, packageObject.Guid, programObject.Guid, AllWindowsComputersCollectionGuid, "High");
CopyVBScript
AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}"
set advertisementObject = advertisementManagement.CreateAdvertisementEx( true, adName,"Advertisement description",folderObject.Guid, packageObject.Guid, programObject.Guid, AllWindowsComputersCollectionGuid, "High")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:CreateAdvertisementEx "bEnable:%Enable%" "sAdvertisementExName:%AdvertisementExName%" "sAdvertisementExDescription:%AdvertisementExDescription%" "sFolderGuid:%FolderGuid%" "sPackageGuid:%PackageGuid%"  "sProgramGuid:%ProgramGuid%"  "sResourceTargets:%ResourceTargets%" "sPriority:%Priority%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[bool]$bEnable,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExName,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExDescription,
			[Parameter(Mandatory=$true)]
			[string]$sFolderGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTargets,
			[Parameter(Mandatory=$true)]
			[string]$sPriority,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bEnable = $bEnable
 			sAdvertisementExName = $sAdvertisementExName
 			sAdvertisementExDescription = $sAdvertisementExDescription
 			sFolderGuid = $sFolderGuid
 			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid
 			sResourceTargets = $sResourceTargets
 			sPriority = $sPriority

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/CreateAdvertisementEx"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAdvertisementExByGuid {

<#
.SYNOPSIS
    This ASDKMethod will give the details about a AdvertisementEx filtered out by Guid. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose details are to be fetched. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
SWDSolnAdvertisementDetails advertisementObject =m_proxy.GetAdvertisementExByGuid(advertisementObject.Guid);
CopyVBScript
set advertisementObject = advertisementManagement.GetAdvertisementExByGuid(advertisementObject.Guid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExByGuid "sAdvertisementExGuid:%AdvertisementExGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAdvertisementExStatusByResourceGuid {

<#
.SYNOPSIS
    Gets the execution status of an advertisement on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceGuid
    Guid of the computer resource 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strStatus = m_proxy.GetAdvertisementExStatusByResourceGuid(advertisementObject.Guid, machineGuid);
CopyVBScript
strStatus = advertisementManagement.GetAdvertisementExStatusByResourceGuid(advertisementObject.Guid, machineGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExStatusByResourceGuid "sAdvertisementExGuid:%advertisementObjectGuid% sResourceGuid:%machineGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceGuid = $sResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAdvertisementExStatusByResourceName {

<#
.SYNOPSIS
    Gets the execution status of an advertisement on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceName
    Name of the computer resource i.e. domain\name or Workgroup\name 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strStatus = m_proxy.GetAdvertisementExStatusByResourceName(advertisementObject.Guid, machineName);
CopyVBScript
strStatus = advertisementManagement.GetAdvertisementExStatusByResourceName(advertisementObject.Guid, machineName)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExStatusByResourceName "sAdvertisementExGuid:%advertisementObjectGuid% sResourceName:%machineName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceName = $sResourceName

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAdvertisementExStatusByResourceTargetGuid {

<#
.SYNOPSIS
    This ASDKMethod will return the execution status of an advertisement on specified resource targets. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement. 

.PARAMETER sResourceTargetGuids
    Comma seperated list of resource target guids this item is applied to. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}";
string strStatus = m_proxy.GetAdvertisementExStatusByCollectionGuid( advertisementObject.Guid, AllWindowsComputersCollectionGuid);
CopyVBScript
AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}"
strStatus= advertisementManagement.GetAdvertisementExStatusByCollectionGuid( advertisementObject.Guid, AllWindowsComputersCollectionGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertisementExStatusByCollectionGuid "sAdvertisementExGuid:%AdvertisementExGuid% sResourceTargetGuids:%ResourceTargetGuids%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTargetGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceTargetGuids = $sResourceTargetGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertisementExStatusByResourceTargetGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAdvertismentExRunTimeByResourceGuid {

<#
.SYNOPSIS
    This ASDKMethod will return advertisement run time on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceGuid
    Guid of the computer resource 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strRunTime = m_proxy.GetAdvertismentExRunTimeByResourceGuid(advertisementObject.Guid, machineGuid);
CopyVBScript
strRunTime = advertisementManagement.GetAdvertismentExRunTimeByResourceGuid(advertisementObject.Guid, machineGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertismentExRunTimeByResourceGuid "sAdvertisementExGuid:%advertisementObjectGuid% sResourceGuid:%machineGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceGuid = $sResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertismentExRunTimeByResourceGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAdvertismentExRunTimeByResourceName {

<#
.SYNOPSIS
    This ASDKMethod will return advertisement run time on specified resource. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement 

.PARAMETER sResourceName
    Name of the computer resource i.e. domain\name 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string strRunTime = m_proxy.GetAdvertismentExRunTimeByResourceName(advertisementObject.Guid, machineName);
CopyVBScript
strRunTime = advertisementManagement.GetAdvertismentExRunTimeByResourceName(advertisementObject.Guid, machineName)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetAdvertismentExRunTimeByResourceName "sAdvertisementExGuid:%advertisementObjectGuid% sResourceName:%machineName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceName = $sResourceName

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/GetAdvertismentExRunTimeByResourceName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyAdvertisementExBasic {

<#
.SYNOPSIS
    This ASDKMethod will modify the Package and Program for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement to be modified. 

.PARAMETER sPackageGuid
    The Guid of the package associated to the item. 

.PARAMETER sProgramGuid
    The Guid of the Program to execute that is associate with the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyAdvertisementExBasic( advertisementObject.Guid, packageObject.Guid, programObject.Guid);
CopyVBScript
result = advertisementManagement.ModifyAdvertisementExBasic( advertisementObject.Guid,  packageObject.Guid, programObject.Guid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:ModifyAdvertisementExBasic "sAdvertisementExGuid:%AdvertisementExGuid%" "sPackageGuid:%PackageGuid%"  "sProgramGuid:%ProgramGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/ModifyAdvertisementExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyAdvertisementExDetail {

<#
.SYNOPSIS
    This ASDKMethod will modify the settings for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement to be modified. 

.PARAMETER bEnable
    True if the item is enabled, otherwise false.  

.PARAMETER sAdvertisementExName
    Name of the advertisement. 

.PARAMETER sAdvertisementExDescription
    Description of the advertisment. 

.PARAMETER sPackageGuid
    The Guid of the package associated to the item. 

.PARAMETER sProgramGuid
    The Guid of the Program to execute that is associate with the package. 

.PARAMETER sResourceTargets
    Comma seperated list of resource target guids this item is applied to. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
string AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}";
bool result = m_proxy.ModifyAdvertisementExDetail( advertisementObject.Guid, true, "Advertisement Name","This is a modified description",packageObject.Guid, programObject.Guid, AllWindowsComputersCollectionGuid);
CopyVBScript
AllWindowsComputersCollectionGuid = "{e3a71b08-1612-44a6-9f71-7d359d5475b4}"
result = advertisementManagement.ModifyAdvertisementExDetail( advertisementObject.Guid, true, "Advertisement Name", "This is a modified description",packageObject.Guid,  programObject.Guid, AllWindowsComputersCollectionGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:ModifyAdvertisementExDetail "sAdvertisementExGuid:%AdvertisementExGuid%" "bEnable:%Enable%" "sAdvertisementExName:%AdvertisementExName%" "sAdvertisementExDescription:%AdvertisementExDescription%" "sPackageGuid:%PackageGuid%"  "sProgramGuid:%ProgramGuid%"  "sResourceTargets:%ResourceTargets%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bEnable,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExName,
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTargets,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bEnable = $bEnable
 			sAdvertisementExName = $sAdvertisementExName
 			sAdvertisementExDescription = $sAdvertisementExDescription
 			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid
 			sResourceTargets = $sResourceTargets

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/ModifyAdvertisementExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyResourceTargets {

<#
.SYNOPSIS
    This ASDKMethod will add or remove a resource target from a Software Advertisement Policy. list of a task. 'Action' parameter will set whether to 'Add' or 'Remove'. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose target is to be modified. 

.PARAMETER sResourceTarget
    Guid of the resource target. 

.PARAMETER sAction
    Value will be "ADD" if resource target guid is to be added to the Advertisement Policy else it will be "REMOVE" if the resource target is to be removed. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyResourceTargets( advertisementObject.Guid, targetObject.Guid, "add");
CopyVBScript
result = advertisementManagement.ModifyResourceTargets( advertisementObject.Guid, targetObject.Guid, "add")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:ModifyResourceTargets "sAdvertisementExGuid:%AdvertisementExGuid%" "sCollectionGuid:%CollectionGuid%" "sAction:%Action%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sResourceTarget,
			[Parameter(Mandatory=$true)]
			[string]$sAction,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sResourceTarget = $sResourceTarget
 			sAction = $sAction

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/ModifyResourceTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetAdvertisementExAgentSettings {

<#
.SYNOPSIS
    This ASDKMethod will set the Advance options for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose agent setting are to be modified. 

.PARAMETER bEnableVerboseReporting
    True if advertisement will send status event to notification server, else false. 

.PARAMETER bUseDefaultAgentSettings
    True if the item is to use the default agent settings, else false. 

.PARAMETER bRunFromServer
    True if the item has to run from the server, else false. 

.PARAMETER bDownloadAndRunLocally
    True if the package is to be downloaded and run locally, else false. 

.PARAMETER sDownloadLocallyBandwidth
    Bandwidth required for downloading and running the item locally. Possible values are 1 KBytes/second,2 KBytes/second,5 KBytes/second,10 KBytes/second,50 KBytes/second,100 KBytes/second,256 KBytes/second,512 KBytes/second and 1 MBytes/second. 

.PARAMETER sDownloadLocallySpeed
    Speed required for downloading and running the item locally. Possible values are 1 KBytes/second,2 KBytes/second,5 KBytes/second,10 KBytes/second,50 KBytes/second,100 KBytes/second,256 KBytes/second,512 KBytes/second and 1 MBytes/second. 

.PARAMETER bDownloadPackageAsap
    True if the package is to be downloaded ASAP, else False. 

.PARAMETER bMulticastPackage
    True if Package multicast is enabled else false. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExAgentSettings( advertisementObject.Guid, true,false, true, true, "10 KBytes/second", "10 KBytes/second", true, true);
CopyVBScript
result = advertisementManagement.SetAdvertisementExAgentSettings( advertisementObject.Guid, true,false, true, true, "10 KBytes/second", "10 KBytes/second", true, true)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExAgentSettings "sAdvertisementExGuid:%AdvertisementExGuid%" "bEnableVerboseReporting:%EnableVerboseReporting%" "bUseDefaultAgentSettings:%UseDefaultAgentSettings%" "bRunFromServer:%RunFromServer%" "bDownloadAndRunLocally:%DownloadAndRunLocally%" "sDownloadLocallyBandwidth:%DownloadLocallyBandwidth%" "sDownloadLocallySpeed:%DownloadLocallySpeed%" "bDownloadPackageASAP:%DownloadPackageASAP%" "bMulticastPackage:%MulticastPackage%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Parameters bRunFromServer and bDownloadAndRunLocally can not be set to false simultaneously.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bEnableVerboseReporting,
			[Parameter(Mandatory=$true)]
			[bool]$bUseDefaultAgentSettings,
			[Parameter(Mandatory=$true)]
			[bool]$bRunFromServer,
			[Parameter(Mandatory=$true)]
			[bool]$bDownloadAndRunLocally,
			[Parameter(Mandatory=$true)]
			[string]$sDownloadLocallyBandwidth,
			[Parameter(Mandatory=$true)]
			[string]$sDownloadLocallySpeed,
			[Parameter(Mandatory=$true)]
			[bool]$bDownloadPackageAsap,
			[Parameter(Mandatory=$true)]
			[bool]$bMulticastPackage,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bEnableVerboseReporting = $bEnableVerboseReporting
 			bUseDefaultAgentSettings = $bUseDefaultAgentSettings
 			bRunFromServer = $bRunFromServer
 			bDownloadAndRunLocally = $bDownloadAndRunLocally
 			sDownloadLocallyBandwidth = $sDownloadLocallyBandwidth
 			sDownloadLocallySpeed = $sDownloadLocallySpeed
 			bDownloadPackageAsap = $bDownloadPackageAsap
 			bMulticastPackage = $bMulticastPackage

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExAgentSettings"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetAdvertisementExRunOptions {

<#
.SYNOPSIS
    This ASDKMethod will set the run options for a SWD Task. 

.PARAMETER sAdvertisementExGuid
    Guid of the Advertisement Item whose run options are to be set.  

.PARAMETER bIndependentExecution
    True for independent execution of task else false. 

.PARAMETER bScheduleRetry
    Whether the task is to run exactly at scheduled time or any time after the Scheduled time. 

.PARAMETER bNotifyUserWhenTaskAvailable
    True if the option for notifying the user when task is available is checked, else False. 

.PARAMETER bWarnUserBeforeRunning
    True if the option for warning the user before running the Task is checked, else False. 

.PARAMETER deferTime
    Defer time in minutes after the warning before running task is given. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExRunOptions(advertisementObject.Guid, true, true,true, true,true,10);
CopyVBScript
result = advertisementManagement.SetAdvertisementExRunOptions(advertisementObject.Guid, true, true,true, true,true,10)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExRunOptions "sAdvertisementExGuid:%AdvertisementExGuid%" "bIndependentExecution:%IndependentExecution%" "bScheduleRetry:%ScheduleRetry%" "bNotifyUserWhenTaskAvailable:%NotifyUserWhenTaskAvailable%" "bWarnUserBeforeRunning:%WarnUserBeforeRunning%" "DeferTime:%DeferTime%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bIndependentExecution,
			[Parameter(Mandatory=$true)]
			[bool]$bScheduleRetry,
			[Parameter(Mandatory=$true)]
			[bool]$bNotifyUserWhenTaskAvailable,
			[Parameter(Mandatory=$true)]
			[bool]$bWarnUserBeforeRunning,
			[Parameter(Mandatory=$true)]
			[int]$deferTime,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bIndependentExecution = $bIndependentExecution
 			bScheduleRetry = $bScheduleRetry
 			bNotifyUserWhenTaskAvailable = $bNotifyUserWhenTaskAvailable
 			bWarnUserBeforeRunning = $bWarnUserBeforeRunning
 			deferTime = $deferTime

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExRunOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetAdvertisementExScheduleRunASAP {

<#
.SYNOPSIS
    Toggles RunASAP 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose RunASAP option is to be toggled. 

.PARAMETER bRunAsap
    True if Run ASAP option is checked, otherwise False. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExScheduleRunASAP( advertisementObject.Guid, true);
CopyVBScript
result = advertisementManagement.SetAdvertisementExScheduleRunASAP( advertisementObject.Guid, true)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExScheduleRunASAP "sAdvertisementExGuid:%AdvertisementExGuid%" "bRunASAP:%RunASAP%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bRunAsap,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bRunAsap = $bRunAsap

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleRunASAP"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetAdvertisementExScheduleRunAt {

<#
.SYNOPSIS
    Defines a schedule to run task (non-recurring). A Time of 0, removes the scheduled time. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement whose schedule is to be define. 

.PARAMETER sRunAt
    The String representing the Date and time for the. Task to Run. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExScheduleRunAt(advertisementObject.Guid, "2006-01-01 10:10:10");
CopyVBScript
result = advertisementManagement.SetAdvertisementExScheduleRunAt(advertisementObject.Guid, "2006-01-01 10:10:10")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExScheduleRunAt "sAdvertisementExGuid:%AdvertisementExGuid%" "sRunAt:%RunAt%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sRunAt,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sRunAt = $sRunAt

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleRunAt"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetAdvertisementExScheduleScheduleXML {

<#
.SYNOPSIS
    For advanced scheduling. An empty string removes the schedule. 

.PARAMETER sAdvertisementExGuid
    Guid of the Advertisement Item whose schedule options are to be set. 

.PARAMETER sScheduleXML
    Schedule information text as shown on the Task UI. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAdvertisementExScheduleScheduleXML(advertisementObject.Guid, "<Schedule IndependentExecution='true'><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every 1 days, starting Friday, February 10, 2006'><BeginDate>2006-02-10 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></Schedule>");
CopyVBScript
result = advertisementManagement.SetAdvertisementExScheduleScheduleXML(advertisementObject.Guid, "<Schedule IndependentExecution='true'><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every 1 days, starting Friday, February 10, 2006'><BeginDate>2006-02-10 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></Schedule>")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetAdvertisementExScheduleScheduleXML "sAdvertisementExGuid:%AdvertisementExGuid%" "sScheduleXML:%ScheduleXML%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[string]$sScheduleXML,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			sScheduleXML = $sScheduleXML

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAdvertisementExScheduleScheduleXML"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetAvailabilityRemovalOptions {

<#
.SYNOPSIS
    This ASDKMethod will set the Availability and Removal options for a task. 

.PARAMETER sAdvertisementExGuid
    Guid of the advertisement to be modified. 

.PARAMETER bRemoveAfterSuccessfulRun
    True if task is to be remove after successful run otherwise false. 

.PARAMETER sAvailableFrom
    Date when advertisement will becomes valid. 

.PARAMETER bExpires
    True if the Item is set to Expire after some duration, else False. 

.PARAMETER sAvaliableTo
    Date when advertisement will cease to valid. 

.PARAMETER bUseServersTime
    True if the item has to run according to the server's time, else false. 

.EXAMPLE 
    CopyC#
// See SWDSolnAdvertisementManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetAvailabilityRemovalOptions(advertisementObject.Guid, true, "2006-01-01", true, "2006-02-02", true);
CopyVBScript
result = advertisementManagement.SetAvailabilityRemovalOptions(advertisementObject.Guid, true, "2006-01-01", true, "2006-02-02", true)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetAvailabilityRemovalOptions "sAdvertisementExGuid:%AdvertisementExGuid%" "bRemoveAfterSuccessfulRun:%RemoveAfterSuccessfulRun%" "sAvailableFrom:%AvailableFrom%" "bExpires:%Expires%" "sAvaliableTo:%AvaliableTo%" "bUseServersTime:%UseServersTime%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sAdvertisementExGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bRemoveAfterSuccessfulRun,
			[Parameter(Mandatory=$true)]
			[string]$sAvailableFrom,
			[Parameter(Mandatory=$true)]
			[bool]$bExpires,
			[Parameter(Mandatory=$true)]
			[string]$sAvaliableTo,
			[Parameter(Mandatory=$true)]
			[bool]$bUseServersTime,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sAdvertisementExGuid = $sAdvertisementExGuid
 			bRemoveAfterSuccessfulRun = $bRemoveAfterSuccessfulRun
 			sAvailableFrom = $sAvailableFrom
 			bExpires = $bExpires
 			sAvaliableTo = $sAvaliableTo
 			bUseServersTime = $bUseServersTime

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnAdvertisementManagementService.asmx/SetAvailabilityRemovalOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddProgramToPackage {

<#
.SYNOPSIS
    Adds a Program Item to a Package. 

.PARAMETER sPackageGuid
    The Package to assign a program to. 

.PARAMETER sProgramGuid
    The Program to assign. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.AddProgramToPackage(packageObject.Guid, programObject.Guid);
CopyVBScript
result = packageManagement.AddProgramToPackage(packageObject.Guid, programObject.Guid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:AddProgramToPackage "sPackageGuid:%PackageGuid%" "sProgramGuid:%ProgramGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/AddProgramToPackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreatePackageExBasic {

<#
.SYNOPSIS
    This ASDK method will create a basic PackageEx item. Like ItemDetails struct used in ItemManagementLib, PackageExDetails would be a struct which would be specific to PackageExDetails and would give the details about the same. 

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package. 

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL. 

.PARAMETER sParentFolderGuid
    Parent folder guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
SWDSolnPackageDetails packageObject = m_proxy.CreatePackageExBasic( "Package Basic",  @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
set packageObject = packageManagement.CreatePackageExBasic( "Package Basic", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", SWDWindowsFolderGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:CreatePackageExBasic "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%" "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/CreatePackageExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreatePackageExDetail {

<#
.SYNOPSIS
    This ASDK method will be used to set detailed options of a PackageEx item. Like ItemDetails struct used in ItemManagementLib, PackageExDetails would be a struct which would be specific to PackageExDetails and would give the details about the same. 

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package.  

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL. 

.PARAMETER sPackageDescription
    Description of the package.  

.PARAMETER sPackagePublisher
    Publisher of the package. 

.PARAMETER sPackageVersion
    Version of the Package. 

.PARAMETER sPackageLanguage
    Language for which the package is designed.  

.PARAMETER purgeAfterDurationInMinutes
    Number in minutes before package files to be deleted from the client computer, if they are not referenced by an active advertisement. 

.PARAMETER sParentFolderGuid
    Parent folder Guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
SWDSolnPackageDetails packageObject = m_proxy.CreatePackageExDetail("Package Detail",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK", "publisher joe", "1.2.3.4.5.6", "English",10,SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
set packageObject = packageManagement.CreatePackageExDetail("Package Detail","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK", "publisher joe", "1.2.3.4.5.6", "English",10,SWDWindowsFolderGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:CreatePackageExDetail "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%" "sPackageDescription:%PackageDescription%" "sPackagePublisher:%PackagePublisher%" "sPackageVersion:%PackageVersion%" "sPackageLanguage:%PackageLanguage%" "PurgeAfterDurationInMinutes:%PurgeAfterDurationInMinutes%" "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sPackageDescription = $sPackageDescription
 			sPackagePublisher = $sPackagePublisher
 			sPackageVersion = $sPackageVersion
 			sPackageLanguage = $sPackageLanguage
 			purgeAfterDurationInMinutes = $purgeAfterDurationInMinutes
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/CreatePackageExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetPackageExByGuid {

<#
.SYNOPSIS
    This ASDKMethod will give the details about a PackageEx filtered out by Guid. 

.PARAMETER sPackageGuid
    Guid of the package whose details are to be fetched. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
SWDSolnPackageDetails packageObject = m_proxy.GetPackageExByGuid(packageObject.Guid);
CopyVBScript
set packageObject = packageManagement.GetPackageExByGuid(packageObject.Guid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetPackageExByGuid "sPackageGuid:%PackageGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/GetPackageExByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyPackageExBasic {

<#
.SYNOPSIS
    This ASDK method will be modify the options of a PackageEx item. 

.PARAMETER sPackageGuid
    Guid of the Package to be Modified.  

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package. 

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL 

.PARAMETER sParentFolderGuid
    Parent folder guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
bool result = m_proxy.ModifyPackageExBasic(packageObject.Guid,"New Name from ModifyPackageExBasic", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
result = packageManagement.ModifyPackageExBasic(packageObject.Guid, "New Name from ModifyPackageExBasic", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",SWDWindowsFolderGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:ModifyPackageExBasic "sPackageGuid:%PackageGuid%" "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%"  "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/ModifyPackageExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyPackageExDetail {

<#
.SYNOPSIS
    This ASDK method will be modify the detailed options of a PackageEx item. 

.PARAMETER sPackageGuid
    Guid of the Package to be Modified. 

.PARAMETER sPackageName
    Name of the package. 

.PARAMETER sPackageLocation
    Location of the package.  

.PARAMETER sPackageDirectory
    The alternate UNC package location when the Package source is Access Package from a URL. 

.PARAMETER sPackageDescription
    Description of the package.  

.PARAMETER sPackagePublisher
    Publisher of the package. 

.PARAMETER sPackageVersion
    Version of the Package 

.PARAMETER sPackageLanguage
    Language for which the package is designed. 

.PARAMETER purgeAfterDurationInMinutes
    Number in minutes before package files to be deleted from the client computer, if they are not referenced by an active advertisement. 

.PARAMETER sParentFolderGuid
    Parent folder Guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
string SWDWindowsFolderGuid=  "{73032b0a-2047-42db-82bb-34ff24910911}";
bool result = m_proxy.ModifyPackageExDetail(packageObject.Guid,"New Name from ModifyPackageExDetail",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK","publisher joe","1.2.3.4.5.6", "English",10, SWDWindowsFolderGuid);
CopyVBScript
SWDWindowsFolderGuid = "{73032b0a-2047-42db-82bb-34ff24910911}"
result = packageManagement.ModifyPackageExDetail(packageObject.Guid,"New Name from ModifyPackageExDetail","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld", "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld","Package Description made with ASDK","publisher joe","1.2.3.4.5.6", "English",10, SWDWindowsFolderGuid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:ModifyPackageExDetail "sPackageGuid:%PackageGuid%" "sPackageName:%PackageName%" "sPackageLocation:%PackageLocation%" "sPackageDirectory:%PackageDirectory%" "sPackageDescription:%PackageDescription%" "sPackagePublisher:%PackagePublisher%" "sPackageVersion:%PackageVersion%" "sPackageLanguage:%PackageLanguage%" "PurgeAfterDurationInMinutes:%PurgeAfterDurationInMinutes%" "sParentFolderGuid:%ParentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPackageName,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sPackageDescription,
			[Parameter(Mandatory=$true)]
			[string]$sPackagePublisher,
			[Parameter(Mandatory=$true)]
			[string]$sPackageVersion,
			[Parameter(Mandatory=$true)]
			[string]$sPackageLanguage,
			[Parameter(Mandatory=$true)]
			[int]$purgeAfterDurationInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sParentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sPackageName = $sPackageName
 			sPackageLocation = $sPackageLocation
 			sPackageDirectory = $sPackageDirectory
 			sPackageDescription = $sPackageDescription
 			sPackagePublisher = $sPackagePublisher
 			sPackageVersion = $sPackageVersion
 			sPackageLanguage = $sPackageLanguage
 			purgeAfterDurationInMinutes = $purgeAfterDurationInMinutes
 			sParentFolderGuid = $sParentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/ModifyPackageExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPackageExAdvancedOptions {

<#
.SYNOPSIS
    This ASDKMethod will set the Advanced Agent options for PackageEx. 

.PARAMETER sPackageGuid
    Guid of the package whose advanced agent options are to be modified. 

.PARAMETER sAgentDisplayName
    Display name of the Agent. 

.PARAMETER sAgentDisplayDescription
    Description of the Agent. 

.PARAMETER bEnableVerboseEvents
    True if package will send message to notification server else false. 

.PARAMETER sAlternateDownloadDestinationLocation
    Location where files should be downloaded on client computer.Leave blank for default location. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetPackageExAdvancedOptions(packageObject.Guid, "Agent Display Name", "Agent Display Description", true, @"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld");
CopyVBScript
result = packageManagement.SetPackageExAdvancedOptions(packageObject.Guid, "Agent Display Name", "Agent Display Description", true, "C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetPackageExAdvancedOptions "sPackageGuid:%PackageGuid%" "sAgentDisplayName:%AgentDisplayName%" "sAgentDisplayDescription:%AgentDisplayDescription%" "bEnableVerboseEvents:%EnableVerboseEvents%" "sAlternateDownloadDestinationLocation:%AlternateDownloadDestinationLocation%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayName,
			[Parameter(Mandatory=$true)]
			[string]$sAgentDisplayDescription,
			[Parameter(Mandatory=$true)]
			[bool]$bEnableVerboseEvents,
			[Parameter(Mandatory=$true)]
			[string]$sAlternateDownloadDestinationLocation,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sAgentDisplayName = $sAgentDisplayName
 			sAgentDisplayDescription = $sAgentDisplayDescription
 			bEnableVerboseEvents = $bEnableVerboseEvents
 			sAlternateDownloadDestinationLocation = $sAlternateDownloadDestinationLocation

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/SetPackageExAdvancedOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPackageExPackageServerOptions {

<#
.SYNOPSIS
    This ASDKMethod will set the Package Server options for PackageEx. 

.PARAMETER sPackageGuid
    Guid of the package whose package server options are to modified. 

.PARAMETER bAllOrSpecificPackageServers
    True if package files are to be replicated to all package servers else false. 

.PARAMETER sPackageServerGuids
    Comma seperated list of package server guids. 

.PARAMETER sLocationOnPackageServer
    Location of the item on the Package server. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetPackageExPackageServerOptions( packageObject.Guid, true, PackageServerGuids, @"C:\Program Files\Altiris\Altiris Agent\Package Server Agent");
CopyVBScript
result = packageManagement.SetPackageExPackageServerOptions( packageObject.Guid, true, PackageServerGuids, "C:\Program Files\Altiris\Altiris Agent\Package Server Agent")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetPackageExPackageServerOptions "sPackageGuid:%PackageGuid%"         "bAllOrSpecificPackageServers:%AllOrSpecificPackageServers%" "sPackageServerGuids:%PackageServerGuids%" "sLocationOnPackageServer:%LocationOnPackageServer%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[bool]$bAllOrSpecificPackageServers,
			[Parameter(Mandatory=$true)]
			[string]$sPackageServerGuids,
			[Parameter(Mandatory=$true)]
			[string]$sLocationOnPackageServer,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			bAllOrSpecificPackageServers = $bAllOrSpecificPackageServers
 			sPackageServerGuids = $sPackageServerGuids
 			sLocationOnPackageServer = $sLocationOnPackageServer

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/SetPackageExPackageServerOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateDistributionPoints {

<#
.SYNOPSIS
    This ASDKMethod will update the distribution points for PackageEx. 

.PARAMETER sPackageGuid
    Guid of the package whose distribution points are to be updated. 

.EXAMPLE 
    CopyC#
// See SWDSolnPackageManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.UpdateDistributionPoints(packageObject.Guid);
CopyVBScript
result = packageManagement.UpdateDistributionPoints(packageObject.Guid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:UpdateDistributionPoints "sPackageGuid:%PackageGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnPackageManagementService.asmx/UpdateDistributionPoints"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignSoftwarePortalSecurity {

<#
.SYNOPSIS
    This ASDK Method assigns the software Portal security settings on a ProgramEx. Action would be either Remove or Add. 

.PARAMETER sProgramGuid
    Guid of the program whose software portal security is to be modified. 

.PARAMETER sPermissionGuid
    Permission guid. 

.PARAMETER sUserName
    User Name(Domain/UserName). 

.PARAMETER sAction
    Action. User "add" or "remove". 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
string installSoftwarePermissionGuid = "A56F6866-B362-4EFC-BFFA-A29E7C9D2F2F";
bool result = m_proxy.AssignSoftwarePortalSecurity(programObject.Guid, installSoftwarePermissionGuid, "Domain\Username", "add");
CopyVBScript
installSoftwarePermissionGuid = "A56F6866-B362-4EFC-BFFA-A29E7C9D2F2F"
result = programManagement.AssignSoftwarePortalSecurity(programObject.Guid, installSoftwarePermissionGuid,"Domain\Username", "add")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:AssignSoftwarePortalSecurity  "sProgramGuid:%ProgramGuid%" "sPermissionGuid:%PermissionGuid%" "sUserName:%UserName%" "sAction:%Action%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Software delivery permission guids. Read - 983A2D22-7A82-4DB0-A707-52C7D6B1441E, Write - AC296DF1-EB40-4592-899F-25D5C07D45F6, Change Permissions - 819DAE1E-B1A5-4643-81A1-26EF95FEB8A8, Delete - ECA6254F-5017-4730-9B3F-5ADD230829B7, Read Permissions - 4DDC04C3-F0A5-4E88-84AA-C44C8C5EBCC4, Clone - 726B1C09-7108-450D-AE24-5F8E93135ED6 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sPermissionGuid,
			[Parameter(Mandatory=$true)]
			[string]$sUserName,
			[Parameter(Mandatory=$true)]
			[string]$sAction,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sPermissionGuid = $sPermissionGuid
 			sUserName = $sUserName
 			sAction = $sAction

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/AssignSoftwarePortalSecurity"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateProgramExBasic {

<#
.SYNOPSIS
    This ASDK method will create a basic ProgramEx item. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails programObject = m_proxy.CreateProgramExBasic("Program Basic", "notepad.exe");
CopyVBScript
set programObject = programManagement.CreateProgramExBasic("Program Basic", "notepad.exe")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:CreateProgramExBasic "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/CreateProgramExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateProgramExDetail {

<#
.SYNOPSIS
    This ASDK method will create a detailed ProgramEx item. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched. 

.PARAMETER sProgramDescription
    Description of the program. 

.PARAMETER sProgramWorkingDirectory
    Working directory of the program. 

.PARAMETER sEstimatedDiskSpace
    Estimated Disk Space required in KBytes. 

.PARAMETER sEstimatedRunTime
    Estimated Run Time required in minutes. 

.PARAMETER sTerminateAfter
    Time in minutes required to terminate. 

.PARAMETER sSuccessCodes
    Program Success Code. 

.PARAMETER sFailureCodes
    Program Failure Code. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails programObject = m_proxy.CreateProgramExDetail("Program Detail", "notepad.exe","Program Description made with ASDK",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
"1","10","360", "1", "0");
CopyVBScript
set programObject = programManagement.CreateProgramExDetail("Program Detail", "notepad.exe","Program Description made with ASDK","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
            "1","10","360", "1", "0")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:CreateProgramExDetail "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%" "sProgramDescription:%ProgramDescription%" "sProgramWorkingDirectory:%ProgramWorkingDirectory%" "sEstimatedDiskSpace:%EstimatedDiskSpace%" "sEstimatedRunTime:%EstimatedRunTime%" "sTerminateAfter:%TerminateAfter%" "sSuccessCodes:%SuccessCodes%" "sFailureCodes:%FailureCodes%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
			[Parameter(Mandatory=$true)]
			[string]$sProgramDescription,
			[Parameter(Mandatory=$true)]
			[string]$sProgramWorkingDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedDiskSpace,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedRunTime,
			[Parameter(Mandatory=$true)]
			[string]$sTerminateAfter,
			[Parameter(Mandatory=$true)]
			[string]$sSuccessCodes,
			[Parameter(Mandatory=$true)]
			[string]$sFailureCodes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine
 			sProgramDescription = $sProgramDescription
 			sProgramWorkingDirectory = $sProgramWorkingDirectory
 			sEstimatedDiskSpace = $sEstimatedDiskSpace
 			sEstimatedRunTime = $sEstimatedRunTime
 			sTerminateAfter = $sTerminateAfter
 			sSuccessCodes = $sSuccessCodes
 			sFailureCodes = $sFailureCodes

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/CreateProgramExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetProgramExByGuid {

<#
.SYNOPSIS
    This ASDKMethod gives the details about a ProgramEx filtered out by Guid. 

.PARAMETER sProgramGuid
    Guid of the program whose details are to be fetched. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails programObject = m_proxy.GetProgramExByGuid(programObject.Guid);
CopyVBScript
set programObject = programManagement.GetProgramExByGuid(programObject.Guid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetProgramExByGuid  "sProgramGuid:%ProgramGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/GetProgramExByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetProgramsFromPackage {

<#
.SYNOPSIS
    This method returns the array of Programs for a given package guid as input 

.PARAMETER sPackageGuid
    Guid of the package. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
SWDSolnProgramDetails[] programObject = m_proxy.GetProgramsFromPackage(packageObject.Guid);
CopyVBScript
programArray = programManagement.GetProgramsFromPackage(packageObject.Guid)
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:GetProgramsFromPackage "sPackageGuid:%PackageGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/GetProgramsFromPackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyProgramExBasic {

<#
.SYNOPSIS
    This ASDK method will be modify the options of a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyProgramExBasic(programObject.Guid,"New Name from ModifyProgramExBasic", "notepad.exe");
CopyVBScript
result = programManagement.ModifyProgramExBasic(programObject.Guid, "New Name from ModifyProgramExBasic", "notepad.exe")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:ModifyProgramExBasic  "sProgramGuid:%ProgramGuid%" "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/ModifyProgramExBasic"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ModifyProgramExDetail {

<#
.SYNOPSIS
    This ASDK method will be modify the detailed options of a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified. 

.PARAMETER sProgramName
    Name of the program. 

.PARAMETER sCommandLine
    Command line of the executable that will be launched 

.PARAMETER sProgramDescription
    Description of the program. 

.PARAMETER sProgramWorkingDirectory
    Working directory of the program. 

.PARAMETER sEstimatedDiskSpace
    Estimated Disk Space required in KBytes. 

.PARAMETER sEstimatedRunTime
    Estimated Run Time required in minutes. 

.PARAMETER sTerminateAfter
    Time in minutes required to terminate. 

.PARAMETER sSuccessCodes
    Program Success Code. 

.PARAMETER sFailureCodes
    Program Failure Code. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.ModifyProgramExDetail(programObject.Guid,"New Name from ModifyProgramExDetail", "notepad.exe","Program Description made with ASDK",@"C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
"1","10","360", "1", "0");
CopyVBScript
result = programManagement.ModifyProgramExDetail(programObject.Guid,"New Name from ModifyProgramExDetail", "notepad.exe","Program Description made with ASDK","C:\Program Files\Altiris\Notification Server\NSCap\Bin\Win32\X86\HelloWorld",
           "1","10","360", "1", "0")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:ModifyProgramExDetail  "sProgramGuid:%ProgramGuid%" "sProgramName:%ProgramName%" "sCommandLine:%CommandLine%" "sProgramDescription:%ProgramDescription%" "sProgramWorkingDirectory:%ProgramWorkingDirectory%" "sEstimatedDiskSpace:%EstimatedDiskSpace%" "sEstimatedRunTime:%EstimatedRunTime%" "sTerminateAfter:%TerminateAfter%" "sSuccessCodes:%SuccessCodes%" "sFailureCodes:%FailureCodes%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramName,
			[Parameter(Mandatory=$true)]
			[string]$sCommandLine,
			[Parameter(Mandatory=$true)]
			[string]$sProgramDescription,
			[Parameter(Mandatory=$true)]
			[string]$sProgramWorkingDirectory,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedDiskSpace,
			[Parameter(Mandatory=$true)]
			[string]$sEstimatedRunTime,
			[Parameter(Mandatory=$true)]
			[string]$sTerminateAfter,
			[Parameter(Mandatory=$true)]
			[string]$sSuccessCodes,
			[Parameter(Mandatory=$true)]
			[string]$sFailureCodes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sProgramName = $sProgramName
 			sCommandLine = $sCommandLine
 			sProgramDescription = $sProgramDescription
 			sProgramWorkingDirectory = $sProgramWorkingDirectory
 			sEstimatedDiskSpace = $sEstimatedDiskSpace
 			sEstimatedRunTime = $sEstimatedRunTime
 			sTerminateAfter = $sTerminateAfter
 			sSuccessCodes = $sSuccessCodes
 			sFailureCodes = $sFailureCodes

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/ModifyProgramExDetail"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramExecutionOptions {

<#
.SYNOPSIS
    This ASDK method will set the Execution Environment Options for a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified.. 

.PARAMETER sStartingWindow
    Starting Window option. Use "StartingWindow.Normal", "StartingWindow.Hidden", "StartingWindow.Minimized", "StartingWindow.Maximized". 

.PARAMETER sRunWithRights
    Run with Right option. Use "RunWithRights.SystemAccount", "RunWithRights.LoggedInUser", "RunWithRights.SpecifiedUser". 

.PARAMETER sUserDomain
    User Domain to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sUserName
    User Name to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sUserPassword
    User Password to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sUserConfirmPassword
    User Confirm Password to be used with "RunWithRights.SpecifiedUser" otherwise should be left blank. 

.PARAMETER sProgramCanRun
    Program can run option, use "ProgramCanRunOption.WhetherOrNotAUserIsLoggedOn", "ProgramCanRunOption.OnlyWhenAUserIsLoggedOn" this option must be used when the "RunWithRights.LoggedInUser" option is used otherwise an error will be thrown, "ProgramCanRunOption.OnlyWhenNoUserIsLoggedOn". 

.PARAMETER sUserInputRequired
    Specify if user input is required should be "true" or "false" when "ProgramCanRunOption.OnlyWhenNoUserIsLoggedOn" is used this value is forced to be false. 

.PARAMETER sRunOnceForEachLoggedOnUser
    Specify if program should run once for each logged in user should be "true" or "false" when "ProgramCanRunOption.OnlyWhenNoUserIsLoggedOn" is used this value is forced to be false. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramExecutionOptions(programObject.Guid, "StartingWindow.Normal",
"RunWithRights.SystemAccount", "UserDomain", "UserName", "UserPassword", "UserConfirmPassword", "ProgramCanRunOption.WhetherOrNotAUserIsLoggedOn", "true",                                                                                                                  
"true");
CopyVBScript
result = programManagement.SetProgramExecutionOptions(programObject.Guid, "StartingWindow.Normal",
           "RunWithRights.SystemAccount", "UserDomain", "UserName", "UserPassword", "UserConfirmPassword", "ProgramCanRunOption.WhetherOrNotAUserIsLoggedOn", "true",                                                                                                                  
           "true")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramExecutionOptions  "sProgramGuid:%ProgramGuid%" "sStartingWindow:%StartingWindow%" "sRunWithRights:%RunWithRights%" "sUserDomain:%UserDomain%" "sUserName:%UserName%" "sUserPassword:%UserPassword%" "sUserConfirmPassword:%UserConfirmPassword%" "sProgramCanRun:%ProgramCanRun%" "sUserInputRequired:%UserInputRequired%" "sRunOnceForEachLoggedOnUser:%RunOnceForEachLoggedOnUser%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sStartingWindow,
			[Parameter(Mandatory=$true)]
			[string]$sRunWithRights,
			[Parameter(Mandatory=$true)]
			[string]$sUserDomain,
			[Parameter(Mandatory=$true)]
			[string]$sUserName,
			[Parameter(Mandatory=$true)]
			[string]$sUserPassword,
			[Parameter(Mandatory=$true)]
			[string]$sUserConfirmPassword,
			[Parameter(Mandatory=$true)]
			[string]$sProgramCanRun,
			[Parameter(Mandatory=$true)]
			[string]$sUserInputRequired,
			[Parameter(Mandatory=$true)]
			[string]$sRunOnceForEachLoggedOnUser,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sStartingWindow = $sStartingWindow
 			sRunWithRights = $sRunWithRights
 			sUserDomain = $sUserDomain
 			sUserName = $sUserName
 			sUserPassword = $sUserPassword
 			sUserConfirmPassword = $sUserConfirmPassword
 			sProgramCanRun = $sProgramCanRun
 			sUserInputRequired = $sUserInputRequired
 			sRunOnceForEachLoggedOnUser = $sRunOnceForEachLoggedOnUser

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramExecutionOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramNetworkOptions {

<#
.SYNOPSIS
    This ASDK method will set the Network Options for a ProgramEx item. 

.PARAMETER sProgramGuid
    Guid of the program to be modified. 

.PARAMETER sProgramRequiresNWConnection
    True if program requires N/W connection else false. 

.PARAMETER sMinimumSpeedOptions
    Minimum speed required in KBytes / second. Use "1","2","5","10","50","100","256","512" and "1024" 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramNetworkOptions(programObject.Guid, "true", 
"10");
CopyVBScript
result = programManagement.SetProgramNetworkOptions(programObject.Guid, "true", 
           "10")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramNetworkOptions  "sProgramGuid:%ProgramGuid%" "sProgramRequiresNWConnection:%ProgramRequiresNWConnection%" "sMinimumSpeedOptions:%MinimumSpeedOptions%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramRequiresNWConnection,
			[Parameter(Mandatory=$true)]
			[string]$sMinimumSpeedOptions,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sProgramRequiresNWConnection = $sProgramRequiresNWConnection
 			sMinimumSpeedOptions = $sMinimumSpeedOptions

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramNetworkOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramPackageMapping {

<#
.SYNOPSIS
    This ASDKMethod map the Program to package 

.PARAMETER sPackageGuid
    Guid of package to be mapped to program. 

.PARAMETER sProgramGuid
    Guid of program to be mapped to package. 

.PARAMETER sAction
    Action Required. Use "add" and "remove". 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramPackageMapping(packageObject.Guid, programObject.Guid, "add");
CopyVBScript
result = programManagement.SetProgramPackageMapping(packageObject.Guid, programObject.Guid, "add")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramPackageMapping "sPackageGuid:%PackageGuid%" "sProgramGuid:%ProgramGuid%"  "sAction:%Action%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sPackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sAction,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sPackageGuid = $sPackageGuid
 			sProgramGuid = $sProgramGuid
 			sAction = $sAction

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramPackageMapping"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProgramRunOptions {

<#
.SYNOPSIS
    This ASDK method will set the Run Options for a ProgramEx item. 

.PARAMETER sProgramGuid
    Program GUID. 

.PARAMETER sActionAfterRunning
    Action to be taken after program has finished execution. Possible values are ActionAfterRunning.NoActionRequired, ActionAfterRunning.RestartComputer and ActionAfterRunning.LogOffUser  

.PARAMETER sDeferTimeforRestartInMinutes
    Time required for restarting machine in minutes. 

.PARAMETER sForceRunningApplicationToCloseOnRestart
    True if restart is forced else false. 

.EXAMPLE 
    CopyC#
// See SWDSolnProgramManagementLib Overview for an example of setting up m_proxy.
bool result = m_proxy.SetProgramRunOptions(programObject.Guid, "ActionAfterRunning.RestartComputer",
"10", "true");
CopyVBScript
result = programManagement.SetProgramRunOptions(programObject.Guid, "ActionAfterRunning.RestartComputer",
           "10", "true")
CopyÂ 
AltirisASDKSoftwareDelivery.exe cmd:SetProgramRunOptions  "sProgramGuid:%ProgramGuid%" "sActionAfterRunning:%ActionAfterRunning%" "sDeferTimeforRestartInMinutes:%DeferTimeforRestartInMinutes%" "sForceRunningApplicationToCloseOnRestart:%ForceRunningApplicationToCloseOnRestart%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sProgramGuid,
			[Parameter(Mandatory=$true)]
			[string]$sActionAfterRunning,
			[Parameter(Mandatory=$true)]
			[string]$sDeferTimeforRestartInMinutes,
			[Parameter(Mandatory=$true)]
			[string]$sForceRunningApplicationToCloseOnRestart,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sProgramGuid = $sProgramGuid
 			sActionAfterRunning = $sActionAfterRunning
 			sDeferTimeforRestartInMinutes = $sDeferTimeforRestartInMinutes
 			sForceRunningApplicationToCloseOnRestart = $sForceRunningApplicationToCloseOnRestart

        }


    $WebServiceUrl = "altiris/ASDK.NS.SoftwareDelivery/SWDSolnProgramManagementService.asmx/SetProgramRunOptions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CloneItem {

<#
.SYNOPSIS
    Clones an item and names the new item. 

.PARAMETER itemGuid
    Guid of the item to clone 

.PARAMETER newItemName
    Name to be given to the new item 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid AltirisCompanyResourceGuid = new Guid("{e2fea34c-adbb-47bd-9d7a-1092c5078245}");
ItemDetails clonedObject = m_proxy.CloneItem(AltirisCompanyResourceGuid, "Cloned Item");
CopyVBScript
symantecCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
set clonedObject = itemManagement.CloneItem(symantecCompanyResourceGuid, "Cloned Item")
CopyÂ 
AltirisASDKNS.exe cmd:CloneItem "itemGuid:%agentUpgradePolicyGuid%" "newItemName:%clonedPolicyName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$newItemName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			newItemName = $newItemName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/CloneItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateFolder {

<#
.SYNOPSIS
    Creates a folder item 

.PARAMETER folderName
    Name of the new folder 

.PARAMETER parentFolderGuid
    Guid of an existing folder that the new folder will be created under 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails folderObject = m_proxy.CreateFolder("NewfolderName", myCollectionFolderGuid );
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
set folderObject = itemManagement.CreateFolder("NewfolderName", myCollectionFolderGuid )
CopyÂ 
AltirisASDKNS.exe cmd:CreateFolder "folderName:%newfolderName%" "parentFolderGuid:%parentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$folderName,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			folderName = $folderName
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/CreateFolder"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteItem {

<#
.SYNOPSIS
    Deletes an item from the NS database 

.PARAMETER itemGuid
    Guid of the item to specify 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.DeleteItem(clonedObject.Guid);
CopyVBScript
call itemManagement.DeleteItem(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:DeleteItem "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/DeleteItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DisablePolicyItem {

<#
.SYNOPSIS
    Disables a policy 

.PARAMETER policyItemGuid
    Guid of the item to disable 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.DisablePolicyItem(clonedObject.Guid);
CopyVBScript
call itemManagement.DisablePolicyItem(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:DisablePolicyItem "policyItemGuid:%clonedPolicyGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/DisablePolicyItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnablePolicyItem {

<#
.SYNOPSIS
    Enables a policy 

.PARAMETER policyItemGuid
    Guid of the item to enable 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnablePolicyItem(clonedPolicyObject.Guid);
CopyVBScript
call itemManagement.EnablePolicyItem(clonedPolicyObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:EnablePolicyItem "policyItemGuid:%clonedPolicyGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/EnablePolicyItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExecuteSchedulableItem {

<#
.SYNOPSIS
    Calls the schedule execution method on a schedulable item. The produces the same effect as if the item has been scheduled to execute immediately 

.PARAMETER itemGuid
    Guid of the schedulable item to be executed 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.ExecuteSchedulableItem(reportObject.Guid);
CopyVBScript
itemManagement.ExecuteSchedulableItem(reportObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:ExecuteSchedulableItem "itemGuid:%newReportGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExecuteSchedulableItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportItemProfileXmlString {

<#
.SYNOPSIS
    Exports an item profile's Xml definition. 

.PARAMETER itemGuid
    Guid of the item to export. 

.PARAMETER legacyExport
    Helper to control profile export mode. Set to true to export profile in 7.6 compatible format. 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xml = m_proxy.ExportItemProfileXmlString(guid, false);
CopyVBScript
xml = itemManagement.ExportItemProfileXmlString(guid, false)
CopyÂ 
AltirisASDKNS.exe cmd:ExportItemProfileXmlString "itemGuid:%itemGuid%" "legacyExport:false"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[bool]$legacyExport,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			legacyExport = $legacyExport

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemProfileXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportItemXml {

<#
.SYNOPSIS
    Exports an item's Xml definition. 

.PARAMETER itemGuid
    Guid of the item to export 

.PARAMETER outputFile
    Full name of the file to write the xml to. If the file already exists it is overwritten 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xmlDir = @"C:\Items\";
string xmlFileName = xmlDir + "exportedItem.xml";
m_proxy.ExportItemXml(clonedObject.Guid, xmlFileName);
CopyVBScript
xmlDir = "C:\Items\"
xmlFileName = xmlDir & "exportedItem.xml"
call itemManagement.ExportItemXml(clonedObject.Guid, xmlFileName)
CopyÂ 
AltirisASDKNS.exe cmd:ExportItemXml "itemGuid:%itemGuid%" "outputFile:%xmlFileName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$outputFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			outputFile = $outputFile

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemXml"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExportItemXmlString {

<#
.SYNOPSIS
    Exports an item's Xml definition. 

.PARAMETER itemGuid
    Guid of the item to export. 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xml = m_proxy.ExportItemXmlString(clonedObject.Guid);
CopyVBScript
xml = itemManagement.ExportItemXmlString(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:ExportItemXmlString "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ExportItemXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemByGuid {

<#
.SYNOPSIS
    Returns the details of an item 

.PARAMETER itemGuid
    Guid of the item to retrieve 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails itemObject = m_proxy.GetItemByGuid(myCollectionFolderGuid);
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
set itemObject = itemManagement.GetItemByGuid(myCollectionFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:GetItemByGuid "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemByGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsByName {

<#
.SYNOPSIS
    Returns the details of an item 

.PARAMETER itemName
    Name of the item to retrieve 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
ItemDetails[] itemsList = m_proxy.GetItemsByName(itemName);
ItemDetails itemObject = null;
foreach( ItemDetails obj in itemsList )
{
    // if there are more than one items with this name then you need to pick which one you want
    // Here we just pick the one that is a report.
    if( obj.TypeName == "Report" )
        itemObject = obj;
}
CopyVBScript
itemsList = itemManagement.GetItemsByName(itemName)
for each obj in itemsList
' if there are more than one items with this name then you need to pick which one you want
' Here we just pick the one that is a report.
    if obj.TypeName = "Report" Then
        set itemObject = obj
    End if
next
CopyÂ 
AltirisASDKNS.exe cmd:GetItemsByName "itemName:%itemName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This method does a strict comparison on itemName. The name must match exactly and wild cards are not acknowledged. To use wildcards, see the method GetItemsByNameAndType(String, String). 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemName = $itemName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsByNameAndType {

<#
.SYNOPSIS
    Find an item by its name and/or type. 

.PARAMETER name
    The item's name. Wildcards (%) are permitted. 

.PARAMETER type
    The item's type. Wildcards (%) are permitted. 

.EXAMPLE 
    CopyC#
// find the collection All Computers
Guid[] guidList = m_proxy.GetItemsByNameAndType( "All Computers", "%collection" );
// find the report Computers
Guid[] guidList = m_proxy.GetItemsByNameAndType( "Computers", "%report" );
// find all collections
Guid[] guidList = m_proxy.GetItemsByNameAndType( null, "%collection" );
// find all things named Computers
Guid[] guidList = m_proxy.GetItemsByNameAndType( "All Computers", null );
CopyVBScript
guidList = itemManagement.GetItemsByNameAndType( "All Computers", "%collection" )
strGuids = ""
for each guid in guidList
  strGuids = strGuids & guid & ", "
next
wscript.Echo strGuids
CopyÂ 
AltirisASDKNS.exe cmd:GetItemsByNameAndType name:"All Computers" type:%collection
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    A null value is permitted for either name or type, but not both. This method does a like comparison on name and type so that wild cards can be used. To make a strict comparison, see the methods GetItemsByName(String) and GetItemsByType(String). If you do not use wildcards, you must use the fully- qualified name of the type. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$type,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByNameAndType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsByType {

<#
.SYNOPSIS
    Returns all items of the given type in the NS 

.PARAMETER typeName
    Type of item to be returned 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string collectionTypeName = "Collection";
ItemDetails[] items = m_proxy.GetItemsByType(collectionTypeName);
string allItemNames = "";
foreach( ItemDetails NSItemDetails in items )
{
  allItemNames += ", " + NSItemDetails.Name;
}
CopyVBScript
collectionTypeName = "Collection"
items = itemManagement.GetItemsByType(collectionTypeName)
allItemNames = ""
for each NSItemDetails in items
  allItemNames = allItemNames & ", " & NSItemDetails.Name
next
wscript.Echo "All items: " & allItemNames
CopyÂ 
AltirisASDKNS.exe cmd:GetItemsByType "typeName:Collection"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This method does a strict comparison on typeName. The name must match exactly and wild cards are not acknowledged. To use wildcards, see the method GetItemsByNameAndType(String, String).
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$typeName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			typeName = $typeName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsByType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetItemsInFolder {

<#
.SYNOPSIS
    Gets the details of the items in the given folder. 

.PARAMETER folderGuid
    Guid of the folder to search 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails[] items = m_proxy.GetItemsInFolder(myCollectionFolderGuid);
string allItemNames = "";
foreach( ItemDetails NSItemDetails in items )
{
  allItemNames += ", " + NSItemDetails.Name;
}
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
items = itemManagement.GetItemsInFolder(myCollectionFolderGuid)
allItemNames = ""
for each NSItemDetails in items
  allItemNames = allItemNames & ", " & NSItemDetails.Name
next
wscript.Echo "All items in folder: " & allItemNames
CopyÂ 
AltirisASDKNS.exe cmd:GetItemsInFolder "folderGuid:%parentFolderGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$folderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			folderGuid = $folderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/GetItemsInFolder"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportItemXmlFile {

<#
.SYNOPSIS
    Imports an item definition Xml file into the NS 

.PARAMETER sourceFile
    The full name of the file to import 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xmlDir = @"C:\Items\";
string xmlFileName = xmlDir + "exportedItem.xml";
m_proxy.ImportItemXmlFile(xmlFileName);
CopyVBScript
xmlDir = "C:\Items\"
xmlFileName = xmlDir & "exportedItem.xml"
call itemManagement.ImportItemXmlFile(xmlFileName)
CopyÂ 
AltirisASDKNS.exe cmd:ImportItemXmlFile "sourceFile:%xmlFileName%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sourceFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sourceFile = $sourceFile

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportItemXmlFiles {

<#
.SYNOPSIS
    Imports all xml files within the a directory. Each of these xml files must contain valid xml item(s) defintions 

.PARAMETER sourceDirectory
    Directory to seach for xml files 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string xmlDir = @"C:\Items\";
m_proxy.ImportItemXmlFiles(xmlDir);
CopyVBScript
xmlDir = "C:\Items\"
call itemManagement.ImportItemXmlFiles(xmlDir)
CopyÂ 
AltirisASDKNS.exe cmd:ImportItemXmlFiles "sourceDirectory:%xmlDirectory%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$sourceDirectory,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			sourceDirectory = $sourceDirectory

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlFiles"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportItemXmlString {

<#
.SYNOPSIS
    Imports an item definition into the NS. 

.PARAMETER xml
    The xml string defining the item to import. 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.ImportItemXmlString(xml);
CopyVBScript
call itemManagement.ImportItemXmlString(xml)
CopyÂ 
AltirisASDKNS.exe cmd:ImportItemXmlString "xml:%xmlString%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
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


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ImportItemXmlString"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ItemExists {

<#
.SYNOPSIS
    Imports an item definition into the NS. 

.PARAMETER itemGuid
    Guid of the item to check. 

.EXAMPLE 
    CopyC#
bool isItem = m_proxy.ItemExists(item.Guid);
CopyVBScript
itemGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
isItem = itemManagement.ItemExists(itemGuid)
CopyÂ 
AltirisASDKNS.exe cmd:ItemExists itemGuid:%itemGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/ItemExists"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MoveItem {

<#
.SYNOPSIS
    Moves an item to a different folder 

.PARAMETER itemGuid
    Guid of the item to move 

.PARAMETER destinationFolderGuid
    Guid of an existing folder to move the item into 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
Guid userResourceFolderGuid = new Guid("{4f169065-6b1e-4959-8658-60797be58b18}");
m_proxy.MoveItem(clonedObject.Guid, userResourceFolderGuid);
CopyVBScript
userResourceFolderGuid = "{4f169065-6b1e-4959-8658-60797be58b18}"
call itemManagement.MoveItem(clonedObject.Guid, userResourceFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:MoveItem itemGuid:%clonedPolicyGuid% destinationFolderGuid:%newFolderGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[guid]$destinationFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			destinationFolderGuid = $destinationFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/MoveItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RenameItem {

<#
.SYNOPSIS
    Renames an item 

.PARAMETER itemGuid
    Guid of the item to rename 

.PARAMETER newName
    New name to be given to the item 

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
m_proxy.RenameItem(clonedObject.Guid, "new Cloned Item Name");
CopyVBScript
call itemManagement.RenameItem(clonedObject.Guid, "new Cloned Item Name")
CopyÂ 
AltirisASDKNS.exe cmd:RenameItem itemGuid:%itemGuid% newName:"new Cloned Item Name"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$newName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			newName = $newName

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/RenameItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunAutomationPolicyTask {

<#
.SYNOPSIS
    Run an automation policy task 

.PARAMETER policyItemGuid
    Guid of the automation policy to run 

.EXAMPLE 
    CopyC#
m_proxy.RunAutomationPolicyTask(clonedObject.Guid);
CopyVBScript
itemManagement.RunAutomationPolicyTask(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:RunAutomationPolicyTask policyItemGuid:c31b7f82-2f96-4657-a5c0-c4fb5ab9ee86
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/RunAutomationPolicyTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetItemsSchedule {

<#
.SYNOPSIS
    Set an items schedule 

.PARAMETER itemGuid
    Guid of the item to set the schedule of 

.PARAMETER scheduleXml
    Schedule definition xml. If set to null then the schedule on the item is disabled. 

.EXAMPLE 
    CopyC#
string scheduleXml = "<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>";
m_proxy.SetItemsSchedule( itemGuid, scheduleXml );
CopyVBScript
scheduleXml = "<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>"
call itemManagement.SetItemsSchedule( itemGuid, scheduleXml );
CopyÂ 
AltirisASDKNS.exe cmd:SetItemsSchedule itemGuid:%itemGuid% scheduleXml:"<schedule><Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger></schedule>"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$scheduleXml,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			scheduleXml = $scheduleXml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ItemManagementService.asmx/SetItemsSchedule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddExclusions {

<#
.SYNOPSIS
    Add collections and/or resources to the set of excluded items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to add exclusions to. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to add to the collection's exclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.AddExclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.AddExclusions( collectionObject.Guid, guidList )
CopyÂ 
AltirisASDKNS.exe cmd:AddExclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/AddExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddInclusions {

<#
.SYNOPSIS
    Add collections and/or resources to the set of included items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to add inclusions to. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to add to the collection's inclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.AddInclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.AddInclusions( collectionObject.Guid, guidList )
CopyÂ 
AltirisASDKNS.exe cmd:AddInclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/AddInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceCollection {

<#
.SYNOPSIS
    Creates a resource collection for use as a filter on a TargetResource item. 

.PARAMETER name
    Name of the new resource collection. 

.PARAMETER description
    Description of the new resource collection. May be null. 

.PARAMETER folderGuid
    Guid of an existing folder that the new collection will be created under. 

.PARAMETER autoUpdate
    True if the collection should be automatically updated. False if the collection should be manually updated. 

.EXAMPLE 
    CopyC#
Guid myCollectionFolderGuid = new Guid("{7070fb1c-cf5c-49f9-8764-593124e78c1d}");
ItemDetails collectionObject = m_proxy.CreateResourceCollection("newCollectionName", "This is my new collection", myCollectionFolderGuid, true);
CopyVBScript
myCollectionFolderGuid = "{7070fb1c-cf5c-49f9-8764-593124e78c1d}"
set collectionObject = collectionManagement.CreateResourceCollection("newCollectionName", "This is my new collection", myCollectionFolderGuid, true)
CopyÂ 
AltirisASDKNS.exe cmd:CreateResourceCollection name:newCollectionName description:"This is my new collection" folderGuid:"{7070fb1c-cf5c-49f9-8764-593124e78c1d}" autoUpdate:true
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[guid]$folderGuid,
			[Parameter(Mandatory=$true)]
			[bool]$autoUpdate,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			folderGuid = $folderGuid
 			autoUpdate = $autoUpdate

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/CreateResourceCollection"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetCollectionMembership {

<#
.SYNOPSIS
    Gets the resource memebrship of the collection 

.PARAMETER collectionItemGuid
    Guid of the collection to return the membership of 

.EXAMPLE 
    CopyC#
// See CollectionManagementLib Overview for an example of setting up m_proxy.
Guid[] guidList = m_proxy.GetCollectionMembership(collectionObject.Guid);
string strGuid = "";
foreach( Guid guid in guidList )
{
    strGuids += guid.ToString() + ", ";
}
CopyVBScript
guidList = collectionManagement.GetCollectionMembership(collectionObject.Guid)
strGuids = ""
for each guid in guidList
  strGuids = strGuids & guid & ", "
next
wscript.Echo strGuids
CopyÂ 
AltirisASDKNS.exe cmd:GetCollectionMembership "collectionItemGuid:%clonedCollectionGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This API will not update the collection before returning the collection members. To update the collection, please use UpdateCollections(String)
The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetCollectionMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetExclusions {

<#
.SYNOPSIS
    Gets the collections and/or resources that are excluded from this collection. 

.PARAMETER collectionItemGuid
    The guid of the collection for which to retrieve excluded members. 

.PARAMETER type
    Specify "collection" to only get excluded collections. Specify "resource" to only get excluded resources. Use null to get both collections and resources. 

.EXAMPLE 
    CopyC#
Guid allComputersCollectionGuid = new Guid("{eb3a1a12-e1c7-4431-b060-f0333e4e488c}");
// Get all excluded members
ItemDetails[] members = m_proxy.GetExclusions( allComputersCollectionGuid, null );
// Get only excluded collections
members = m_proxy.GetExclusions( allComputersCollectionGuid, "collection");
// Get only excluded resources
members = m_proxy.GetExclusions( allComputersCollectionGuid, "resource" );
CopyVBScript
Guid allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
' Get all excluded members
members = collectionManagement.GetExclusions( allComputersCollectionGuid, null )
' Get only excluded collections
members = collectionManagement.GetExclusions( allComputersCollectionGuid, "collection")
' Get only excluded resources
members = collectionManagement.GetExclusions( allComputersCollectionGuid, "resource" )
CopyÂ 
AltirisASDKNS.exe cmd:GetExclusions collectionItemGuid:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c}" type:"null"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$type,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetInclusions {

<#
.SYNOPSIS
    Gets the collections and/or resources that are included in this collection. 

.PARAMETER collectionItemGuid
    The guid of the collection for which to retrieve included members. 

.PARAMETER type
    Specify "collection" to only get included collections. Specify "resource" to only get included resources. Use null to get both collections and resources. 

.EXAMPLE 
    CopyC#
Guid allComputersCollectionGuid = new Guid("{eb3a1a12-e1c7-4431-b060-f0333e4e488c}");
// Get all included members
ItemDetails[] members = m_proxy.GetInclusions( allComputersCollectionGuid, null );
// Get only included collections
members = m_proxy.GetInclusions( allComputersCollectionGuid, "collection");
// Get only included resources
members = m_proxy.GetInclusions( allComputersCollectionGuid, "resource" );
CopyVBScript
Guid allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
' Get all included members
members = collectionManagement.GetInclusions( allComputersCollectionGuid, null )
' Get only included collections
members = collectionManagement.GetInclusions( allComputersCollectionGuid, "collection")
' Get only included resources
members = collectionManagement.GetInclusions( allComputersCollectionGuid, "resource" )
CopyÂ 
AltirisASDKNS.exe cmd:GetInclusions collectionItemGuid:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c}" type:"null"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$type,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			type = $type

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/GetInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveExclusions {

<#
.SYNOPSIS
    Remove collections and/or resources from the set of excluded items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to removed exclusions from. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to remove from the collection's exclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.RemoveExclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.RemoveExclusions( collectionObject.Guid, guidList )
CopyÂ 
AltirisASDKNS.exe cmd:RemoveExclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/RemoveExclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveInclusions {

<#
.SYNOPSIS
    Remove collections and/or resources from the set of included items for a collection. 

.PARAMETER collectionItemGuid
    The guid of the collection to removed inclusions from. 

.PARAMETER itemGuids
    Guid or guids of collections and/or resources to remove from the collection's inclusion list. 

.EXAMPLE 
    CopyC#
string allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
string AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}";
string MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}";
string guidList = allComputersCollectionGuid + "," + AltirisCompanyResourceGuid + "," + MicrosoftCompanyResourceGuid;
// assume collectionObject was previously created by the CreateCollection2 API
m_proxy.RemoveInclusions( collectionObject.Guid, guidList );
CopyVBScript
allComputersCollectionGuid = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
MicrosoftCompanyResourceGuid = "{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
guidList = allComputersCollectionGuid & "," & AltirisCompanyResourceGuid & "," & MicrosoftCompanyResourceGuid
' assume collectionObject was previously created by the CreateCollection2 API
call collectionManagement.RemoveInclusions( collectionObject.Guid, guidList )
CopyÂ 
AltirisASDKNS.exe cmd:RemoveInclusions collectionItemGuid:%newCollectionGuid% itemGuids:"{eb3a1a12-e1c7-4431-b060-f0333e4e488c},{e2fea34c-adbb-47bd-9d7a-1092c5078245},{9d5f6bb8-8adf-49d1-9d84-2932ca46ce1e}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			itemGuids = $itemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/RemoveInclusions"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetCollectionDataSourceToRawSqlQuery {

<#
.SYNOPSIS
    Set the Data Source of a resource collection to a raw SQL Query. 

.PARAMETER collectionItemGuid
    The guid of a collection. 

.PARAMETER sqlQuery
    The raw SQL query to assign to the DataSource property of the resource collection. Null to clear the current Data Source. 

.EXAMPLE 
    CopyC#
// assume collectionObject was previously created by the CreateResourceCollection API
// get all resources of type computer
string query = "ResourceTypeGuid in (select ResourceTypeGuid from ResourceTypeHierarchy where BaseResourceTypeGuid='493435f7-3b17-4c4c-b07f-c23e7ab7781f')";
m_proxy.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, query );
// clear the sql query just added
m_proxy.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, null );
CopyVBScript
' assume collectionObject was previously created by the CreateResourceCollection API
' get all resources of type computer
query = "ResourceTypeGuid in (select ResourceTypeGuid from ResourceTypeHierarchy where BaseResourceTypeGuid='493435f7-3b17-4c4c-b07f-c23e7ab7781f')"
call collectionManagement.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, query )
' clear the sql query just added
call collectionManagement.SetCollectionDataSourceToRawSqlQuery( collectionObject.Guid, null )
CopyÂ 
AltirisASDKNS.exe cmd:SetCollectionDataSourceToRawSqlQuery collectionItemGuid:%newCollectionGuid% sqlQuery:"ResourceTypeGuid in (select ResourceTypeGuid from ResourceTypeHierarchy where BaseResourceTypeGuid='493435f7-3b17-4c4c-b07f-c23e7ab7781f')"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    SetCollectionDataSourceToRawSqlQuery will overwrite the current DataSource of the collection (whether it be a raw SQL query or a Resource Query abstraction) and replace it with the new raw SQL query. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$collectionItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$sqlQuery,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuid = $collectionItemGuid
 			sqlQuery = $sqlQuery

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/SetCollectionDataSourceToRawSqlQuery"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateCollections {

<#
.SYNOPSIS
    Updates the collection for each collection GUID given. 

.PARAMETER collectionItemGuids
    Comma seperated list of collection item Guids. 

.EXAMPLE 
    CopyC#
m_proxy.UpdateCollections( null );
string allComputersCollectionGuid = "eb3a1a12-e1c7-4431-b060-f0333e4e488c";
m_proxy.UpdateCollections( allComputersCollectionGuid );
CopyVBScript
collectionManagement.UpdateCollections(null)
allComputersCollectionGuid = "eb3a1a12-e1c7-4431-b060-f0333e4e488c"
collectionManagement.UpdateCollections(allComputersCollectionGuid)
CopyÂ 
AltirisASDKNS.exe cmd:UpdateCollections collectionItemGuids:null
AltirisASDKNS.exe cmd:UpdateCollections collectionItemGuids:"eb3a1a12-e1c7-4431-b060-f0333e4e488c"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    To update all collections, use null for collectionItemGuids. This operation may take a while to complete if there are a lot of collections in the database.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			collectionItemGuids = $collectionItemGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/CollectionManagementService.asmx/UpdateCollections"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomEventHierarchyRule {

<#
.SYNOPSIS
    Create a custom Hierarchy event replication rule 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER replicationType
    Specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent resource types or resource targets. More specifically, the GUID item must be of class type "ResourceTypeItem" or "ResourceTarget." 

.PARAMETER eventClassGuids
    specifies the event classes to be replicated 

.PARAMETER rowCount
    the maximum number of rows this rule will send upon replication 

.PARAMETER resend
    if true, replication will resend all entities, regardless of their timestamp 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string resourceIdGuids = "597ab6b8-1057-4a7d-b6f1-2665f07987cc";
string eventClassGuids = "{974FA2FB-C797-41b1-BCA7-0A285D0745D0}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateCustomEventHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
resourceIdGuids = "597ab6b8-1057-4a7d-b6f1-2665f07987cc"
eventClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateCustomEventHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateCustomEventHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%customScheduleXml%" "resourceType:%resType%" "resourceIdentificationGuids:%resourceIdGuids%" "eventClassGuids:%eventClassGuids%" "rowCount:%rowCount%" "resend:%resend%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$eventClassGuids,
			[Parameter(Mandatory=$true)]
			[int]$rowCount,
			[Parameter(Mandatory=$true)]
			[bool]$resend,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			eventClassGuids = $eventClassGuids
 			rowCount = $rowCount
 			resend = $resend
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomEventHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomItemHierarchyRule {

<#
.SYNOPSIS
    Create a custom Hierarchy item replication rule 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Currently, the only acceptable input value is "Item." 

.PARAMETER collectionItemGuids
    the Item collection(s) this rule applies to. "Collection" in this context means the NS7 concept that is called a "filter" in the NS Console. 

.PARAMETER parentFolderGuid
    parent folder GUID of the rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateCustomItemHierarchyRule("myRule", "myRule description", true, scheduleXml, "Item", collectionGuids, parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateCustomItemHierarchyRule("myRule", "myRule description", true, scheduleXml, "Item", collectionGuids, parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateCustomItemHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%customScheduleXml%" "ruleType:Item" "collectionItemGuids:%collectionGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			ruleType = $ruleType
 			collectionItemGuids = $collectionItemGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomItemHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomResourceHierarchyRule {

<#
.SYNOPSIS
    Create a Hierarchy resource replication rule for well-known objects and data running on a custom schedule. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER replicationType
    Specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent Resource Types or Resource Targets. 

.PARAMETER dataClassGuids
    comma-delimited list of the data classes to be replicated with the resources 

.PARAMETER verificationEnabled
    true to enabled verification 

.PARAMETER verificationLevel
    verification level 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string resourceIdGuids = "{493435f7-3b17-4c4c-b07f-c23e7ab7781f}";
string dataClassGuids = "{9e6f402a-6a45-4cba-9299-c2323f73a506}, {8ee53180-630e-438e-ad50-113610d2de13}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateCustomResourceHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, dataClassGuids, false, 0, "Up", parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
resourceIdGuids = "{493435f7-3b17-4c4c-b07f-c23e7ab7781f}";
dataClassGuids = "{9e6f402a-6a45-4cba-9299-c2323f73a506}, {8ee53180-630e-438e-ad50-113610d2de13}";
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateCustomResourceHierarchyRule("myRule", "myRule description", true, scheduleXml, "ResourceType", resourceIdGuids, dataClassGuids, false, 0, "Up", parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateCustomResourceHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%scheduleXml%" "replicationType:%replicationType%" "resourceIdentificationGuids:%resourceIdGuids%" "dataClassGuids:%dataClassGuids%" "verificationEnabled:%verificationEnabled%" "verificationLevel:%verificationLevel%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$dataClassGuids,
			[Parameter(Mandatory=$true)]
			[bool]$verificationEnabled,
			[Parameter(Mandatory=$true)]
			[int]$verificationLevel,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			dataClassGuids = $dataClassGuids
 			verificationEnabled = $verificationEnabled
 			verificationLevel = $verificationLevel
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomResourceHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateCustomSecurityHierarchyRule {

<#
.SYNOPSIS
    Create a custom Hierarchy security replication rule 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER customScheduleXml
    XML fragment defining a custom schedule for the rule. This XML's outer element must be "<Trigger/>"; see the remarks section, below. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Acceptable input values are "Privilege" or "Role." 

.PARAMETER securityGuids
    The GUIDs of the security entities (i.e., Roles or Privileges) that this rule applies to. An example might be the GUID for the "Altiris Administrator" role, if the "ruleType" is set to "Role." If the "ruleType" is set to "Privilege," an example might be the GUID of the "ImportXML" privilege. 

.PARAMETER parentFolderGuid
    parent folder GUID 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
string scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>";
string securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}";
Guid parentFolderGuid = new Guid("{312323a3-b714-4779-bc88-e64dcb942558}");
m_proxy.CreateCustomSecurityHierarchyRule("myRule", "myRule description", true, scheduleXml, "Role", securityGuids, parentFolderGuid);
CopyVBScript
scheduleXml = "<Trigger Type='1' Duration='0' Interval='0' KillAtEnd='0' Disabled='0' Description='At 9:00 AM every day, starting Wednesday, 1 January 2003'><BeginDate>2003-01-01 09:00:00</BeginDate><DaysInterval>1</DaysInterval></Trigger>"
securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}");
ruleGuid = hierarchyManagement.CreateCustomSecurityHierarchyRule("myRule", "myRule description", true, scheduleXml, "Role", securityGuids, parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateCustomSecurityHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "customScheduleXml:%customScheduleXml%" "ruleType:%ruleType%" "securityGuids:%securityGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Here is one example of the schedule xml: 
CopyXML
<Trigger Type="1" Duration="0" Interval="0" KillAtEnd="0" Disabled="0" Description="At 9:00 AM every day, starting Wednesday, 1 January 2003">
     <BeginDate>2003-01-01 09:00:00</BeginDate>
     <DaysInterval>1</DaysInterval>
</Trigger>
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$securityGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			customScheduleXml = $customScheduleXml
 			ruleType = $ruleType
 			securityGuids = $securityGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateCustomSecurityHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardEventHierarchyRule {

<#
.SYNOPSIS
    Create a standard Hierarchy event replication rule for well-known objects and data. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER replicationType
    specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent resource types or resource targets. More specifically, the GUID item must be of class type "ResourceTypeItem" or "ResourceTarget." 

.PARAMETER eventClassGuids
    specifies the event classes to be replicated 

.PARAMETER rowCount
    the maximum number of rows this rule will send upon replication 

.PARAMETER resend
    if true, replication will resend all entities, regardless of their timestamp 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the new rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}";
string eventClassGuids = "{974FA2FB-C797-41b1-BCA7-0A285D0745D0}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateStandardEventHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}"
eventClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateStandardEventHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, eventClassGuids, 10000, false, "Up", parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateStandardEventHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "resourceType:%resType%" "resourceIdentificationGuids:%resourceIdGuids%" "eventClassGuids:%eventClassGuids%" "rowCount:%rowCount%" "resend:%resend%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$eventClassGuids,
			[Parameter(Mandatory=$true)]
			[int]$rowCount,
			[Parameter(Mandatory=$true)]
			[bool]$resend,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			eventClassGuids = $eventClassGuids
 			rowCount = $rowCount
 			resend = $resend
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardEventHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardItemHierarchyRule {

<#
.SYNOPSIS
    Create a standard Hierarchy item replication rule. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Currently, the only acceptable input value is "Item." 

.PARAMETER collectionItemGuids
    the Item collection(s) this rule applies to. "Collection" in this context means the NS7 concept that is called a "filter" in the NS Console. 

.PARAMETER parentFolderGuid
    parent folder GUID of the new rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}";
Guid parentFolderGuid = new Guid("312323a3-b714-4779-bc88-e64dcb942558");
m_proxy.CreateStandardItemHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Item", collectionGuids, parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
collectionGuids = "{eb3a1a12-e1c7-4431-b060-f0333e4e488c}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateStandardItemHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Item", collectionGuids, parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateStandardItemHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "ruleType:Item" "collectionItemGuids:%collectionGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$collectionItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			ruleType = $ruleType
 			collectionItemGuids = $collectionItemGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardItemHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardResourceHierarchyRule {

<#
.SYNOPSIS
    Create a standard Hierarchy resource replication rule. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER replicationType
    Specifies whether to identify the resources to replicate by ResourceType or by ResourceTarget. Permitted input values are, respectively, "ResourceType" or "ResourceTarget" 

.PARAMETER resourceIdentificationGuids
    comma-delimited list of GUIDs that together define the resources subject to this rule. These Guids must represent Resource Types or Resource Targets. 

.PARAMETER dataClassGuids
    comma-delimited list of the data classes to be replicated with the resources 

.PARAMETER verificationEnabled
    true to enabled verification 

.PARAMETER verificationLevel
    verification level 

.PARAMETER direction
    direction of replication, either Up or Down the hierarchy 

.PARAMETER parentFolderGuid
    parent folder GUID of the new rule 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}";
string dataClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}";
Guid parentFolderGuid = new Guid("{312323a3-b714-4779-bc88-e64dcb942558}");
m_proxy.CreateStandardResourceHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, dataClassGuids, true, 0, "Up", parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
resourceIdGuids = "{597ab6b8-1057-4a7d-b6f1-2665f07987cc}"
dataClassGuids = "{3622ff1d-9684-4883-909c-d7d4cdb85100}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}"
ruleGuid = hierarchyManagement.CreateStandardResourceHierarchyRule("myRule", "myRule description", true, scheduleGuid, "ResourceType", resourceIdGuids, dataClassGuids, true, 0, "Up", parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateStandardResourceHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "replicationType:%replicationType%" "resourceIdentificationGuids:%resourceIdGuids%" "dataClassGuids:%dataClassGuids%" "verificationEnabled:%verificationEnabled%" "verificationLevel:%verificationLevel%" "direction:%direction%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$replicationType,
			[Parameter(Mandatory=$true)]
			[string]$resourceIdentificationGuids,
			[Parameter(Mandatory=$true)]
			[string]$dataClassGuids,
			[Parameter(Mandatory=$true)]
			[bool]$verificationEnabled,
			[Parameter(Mandatory=$true)]
			[int]$verificationLevel,
			[Parameter(Mandatory=$true)]
			[string]$direction,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			replicationType = $replicationType
 			resourceIdentificationGuids = $resourceIdentificationGuids
 			dataClassGuids = $dataClassGuids
 			verificationEnabled = $verificationEnabled
 			verificationLevel = $verificationLevel
 			direction = $direction
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardResourceHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateStandardSecurityHierarchyRule {

<#
.SYNOPSIS
    Create a standard Hierarchy security replication rule for security objects and data. 

.PARAMETER name
    the name of the rule 

.PARAMETER description
    rule description 

.PARAMETER enabled
    whether rule is enabled 

.PARAMETER sharedScheduleGuid
    GUID of the schared schedule the rule will follow. Note that, although the rule takes a schedule, the schedule is not enabled. 

.PARAMETER ruleType
    Specifies the type of entity this rule will replicate. Acceptable input values are "Privilege" or "Role." 

.PARAMETER securityGuids
    The GUIDs of the security entities (i.e., Roles or Privileges) that this rule applies to. An example might be the GUID for the "Altiris Administrator" role, if the "ruleType" is set to "Role." If the "ruleType" is set to "Privilege," an example might be the GUID of the "ImportXML" privilege. 

.PARAMETER parentFolderGuid
    parent folder GUID 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
Guid scheduleGuid = new Guid("{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}");
string securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}";
Guid parentFolderGuid = new Guid("{312323a3-b714-4779-bc88-e64dcb942558}");
m_proxy.CreateStandardSecurityHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Role", securityGuids, parentFolderGuid);
CopyVBScript
scheduleGuid = "{77b1616a-9ce7-415e-8ba5-7b789ecbe45f}"
securityGuids = "{2E1F478A-4986-4223-9D1E-B5920A63AB41}"
parentFolderGuid = "{312323a3-b714-4779-bc88-e64dcb942558}");
ruleGuid = hierarchyManagement.CreateStandardSecurityHierarchyRule("myRule", "myRule description", true, scheduleGuid, "Role", securityGuids, parentFolderGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateStandardSecurityHierarchyRule "name:%ruleName%" "description:%ruleDescription%" "enabled:%enabled%" "sharedScheduleGuid:%scheduleGuid%" "ruleType:Role" "securityGuids:%securityGuids%" "parentFolderGuid:%parentFolder%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$ruleType,
			[Parameter(Mandatory=$true)]
			[string]$securityGuids,
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			enabled = $enabled
 			sharedScheduleGuid = $sharedScheduleGuid
 			ruleType = $ruleType
 			securityGuids = $securityGuids
 			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/CreateStandardSecurityHierarchyRule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnableHierarchyEditableProperty {

<#
.SYNOPSIS
    Enables or disables a Hierarchy-editable property 

.PARAMETER itemGuid
    GUID of the Item containing the property 

.PARAMETER propertyName
    name of the property to enable 

.PARAMETER enable
    set to true to enable, set to false to disable 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnableHierarchyEditableProperty(clonedObject.Guid, "Sample", true);
CopyVBScript
call hierarchyManagement.EnableHierarchyEditableProperty(clonedObject.Guid, "Sample", true)
CopyÂ 
AltirisASDKNS.exe cmd:EnableHierarchyEditableProperty "itemGuid:%itemGuid%" "propertyName:%propName%" "enable:true"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$propertyName,
			[Parameter(Mandatory=$true)]
			[bool]$enable,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			propertyName = $propertyName
 			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableHierarchyEditableProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnableHierarchyReplication {

<#
.SYNOPSIS
    Enable or disable whether the local Notification Server participates in a hierarchy environment. 

.PARAMETER enable
    Pass in true to enable replication for the local NS, false to disable replication. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnableHierarchyReplication(true);
CopyVBScript
call hierarchyManagement.EnableHierarchyReplication(true)
CopyÂ 
AltirisASDKNS.exe cmd:EnableHierarchyReplication "enable:true"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[bool]$enable,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableHierarchyReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnableReplicationForItemInstance {

<#
.SYNOPSIS
    Enables or disables replication for the given Item instance 

.PARAMETER itemGuid
    GUID of the Item instance to be enabled or disabled 

.PARAMETER enable
    if true, instance replication is enabled; if false, instance replication is disabled 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.EnableReplicationForItemInstance(clonedObject.Guid, true);
CopyVBScript
call hierarchyManagement.EnableReplicationForItemInstance(clonedObject.Guid, true)
CopyÂ 
AltirisASDKNS.exe cmd:EnableReplicationForItemInstance "itemGuid:%itemGuid%" "enable:true"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
			[Parameter(Mandatory=$true)]
			[bool]$enable,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			enable = $enable

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/EnableReplicationForItemInstance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetEnabledHierarchyEditableProperties {

<#
.SYNOPSIS
    Get the names of the Hierarchy-editable properties on the given Item that are currently enabled 

.PARAMETER itemGuid
    the Item whose properties are examined 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.GetEnabledHierarchyEditableProperties(clonedObject.Guid);
CopyVBScript
properties = hierarchyManagement.GetEnabledHierarchyEditableProperties(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:GetEnabledHierarchyEditableProperties "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/GetEnabledHierarchyEditableProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetHierarchyEditableProperties {

<#
.SYNOPSIS
    Get the names of the Hierarchy-editable properties on the given Item 

.PARAMETER itemGuid
    the Item whose properties are examined 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.GetHierarchyEditableProperties(clonedObject.Guid);
CopyVBScript
properties = hierarchyManagement.GetHierarchyEditableProperties(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:GetHierarchyEditableProperties "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/GetHierarchyEditableProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsHierarchyManaged {

<#
.SYNOPSIS
    Determines if an item is Hierarchy-managed, that is, has been replicated from another server as part of Hierarchy replication. 

.PARAMETER itemGuid
    GUID of the item 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.IsHierarchyManaged(clonedObject.Guid);
CopyVBScript
isManaged = hierarchyManagement.IsHierarchyManaged(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:IsHierarchyManaged "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyManaged"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsHierarchyMember {

<#
.SYNOPSIS
    Returns true if the current Notification Server is a member of a hierarchy, returns false if the current NS is not a member of a hierarchy. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.IsHierarchyMember();
CopyVBScript
isMember = hierarchyManagement.IsHierarchyMember()
CopyÂ 
AltirisASDKNS.exe cmd:IsHierarchyMember
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


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyMember"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsHierarchyPublished {

<#
.SYNOPSIS
    Determines if an item is Hierarchy-published, that is, has been enabled for replication throughout a Hierarchy. 

.PARAMETER itemGuid
    GUID of the item 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.IsHierarchyPublished(clonedObject.Guid);
CopyVBScript
isPublished = hierarchyManagement.IsHierarchyPublished(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:IsHierarchyPublished "itemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/IsHierarchyPublished"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunCompleteReplication {

<#
.SYNOPSIS
    Run complete replication on the given Hierarcy Node item. 

.PARAMETER nodeGuid
    Guid of the Altiris.NS.Replication.Hierarchy.HierarchyNodeItem instance that represents the server you want to run replication for. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.RunCompleteReplication(clonedObject.Guid);
CopyVBScript
call hierarchyManagement.RunCompleteReplication(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:RunCompleteReplication "nodeGuid:%nodeGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$nodeGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			nodeGuid = $nodeGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/RunCompleteReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunDifferentialReplication {

<#
.SYNOPSIS
    Run differential replication on the given Hierarcy Node item. 

.PARAMETER nodeGuid
    Guid of the HierarchyNodeItem instance that replication is to be run for. 

.EXAMPLE 
    CopyC#
// See HierarchyManagementLib Overview for an example of setting up m_proxy.
m_proxy.RunDifferentialReplication(clonedObject.Guid);
CopyVBScript
call hierarchyManagement.RunDifferentialReplication(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:RunDifferentialReplication "nodeGuid:%nodeGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$nodeGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			nodeGuid = $nodeGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/HierarchyManagementService.asmx/RunDifferentialReplication"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateReportUsingRawSqlQuery {

<#
.SYNOPSIS
    Create a new report using a raw SQL query as the data source. 

.PARAMETER reportName
    Name of the report item 

.PARAMETER reportDescription
    Description of the report item 

.PARAMETER dataSourceName
    Name used to describe the results of the SQL query used as the data source for this report 

.PARAMETER folderGuid
    parent folder GUID of the report 

.PARAMETER sqlQuery
    SQL query to retrieve data for the report 

.EXAMPLE 
    CopyC#
string query = "SELECT DISTINCT [OS Name] FROM Inv_AeX_AC_Identification";
ItemDetails itemDetails = m_proxy.CreateReportUsingRawSqlQuery("Sample Report", "a sample report", "All client operating systems", folderObject.Guid, query);
CopyVBScript
folderGuid = "{5078D04B-8A50-4783-95DA-8B44667C3CD1}"
query = "SELECT DISTINCT [OS Name] FROM Inv_AeX_AC_Identification"
set results = reportManagement.RunLegacyReportWithParameters("Sample Report", "a sample report", "All client operating systems", folderGuid, query)
CopyÂ 
SET query = "SELECT DISTINCT [OS Name] FROM Inv_AeX_AC_Identification"
AltirisASDKNS.exe cmd:CreateReportUsingRawSqlQuery reportName:"Sample Report", reportDescription:"a sample report", dataSourceName:"All client operating systems", folderGuid:"{5078D04B-8A50-4783-95DA-8B44667C3CD1}" query:%query%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$reportName,
			[Parameter(Mandatory=$true)]
			[string]$reportDescription,
			[Parameter(Mandatory=$true)]
			[string]$dataSourceName,
			[Parameter(Mandatory=$true)]
			[guid]$folderGuid,
			[Parameter(Mandatory=$true)]
			[string]$sqlQuery,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportName = $reportName
 			reportDescription = $reportDescription
 			dataSourceName = $dataSourceName
 			folderGuid = $folderGuid
 			sqlQuery = $sqlQuery

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/CreateReportUsingRawSqlQuery"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetReportParameters {

<#
.SYNOPSIS
    Get the user-settable parameters for a given report 

.PARAMETER reportItemGuid
    Guid of the report for which to retrieve parameters. For an NS 7 report, the GUID must be an item of type Alitiris.Reporting.ReportManagementItem.  

.EXAMPLE 
    CopyC#
string reportGuid = "4e76962d-1232-433b-8a65-a853edb052b4"; // Agent Installation Status report
XmlNode results = m_proxy.GetReportParameters(reportItemGuid);
CopyVBScript
reportGuid = "4e76962d-1232-433b-8a65-a853edb052b4" 'Agent Installation Status report
set results = reportManagement.GetReportParameters(reportItemGuid)
params = ""
results.MoveFirst()
while not results.EOF
  params = params & "Name: " & results.Fields.Item( "Name" ).Value & VbCrLf
  params = params & "Description: " & results.Fields.Item( "Description" ).Value & VbCrLf
  params = params & "Required: " & results.Fields.Item( "Required" ).Value & VbCrLf
  params = params & "Nullable: " & results.Fields.Item( "Nullable" ).Value & VbCrLf
  params = params & "ParameterTypeGuid: " & results.Fields.Item( "ParameterTypeGuid" ).Value & VbCrLf
  params = params & "ParameterTypeAlias: " & results.Fields.Item( "ParameterTypeAlias" ).Value & VbCrLf
  params = params & "DefaultValue: " & results.Fields.Item( "DefaultValue" ).Value & VbCrLf
  params = params & VbCrLf
  results.MoveNext()
wend
CopyÂ 
AltirisASDKNS.exe cmd:GetReportParameters reportItemGuid:"4e76962d-1232-433b-8a65-a853edb052b4"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Fields report include "Name," "Description," "Required," "Nullable," "ParameterTypeGuid," "ParameterTypeAlias" and "DefaultValue." 
The web service layer translates the DataTable into an XmlDocument. When programming in C#, the return type is an XmlNode.
The COM layer translates the XmlNode into a Recordset. When programming in VBS, the return type is an ADODB Recordset.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$reportItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/GetReportParameters"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunReport {

<#
.SYNOPSIS
    Runs a report that does not take parameters and returns the results. 

.PARAMETER reportItemGuid
    GUID of the report to be run. The GUID must be an item of type Alitiris.Reporting.ReportManagementItem.  

.EXAMPLE 
    CopyC#
// See ItemManagementLib Overview for an example of setting up m_proxy.
string reportGuid = "1f382791-b2cf-4b39-afd3-28348693c44e"; // All Assets report
XmlNode results = m_proxy.RunReport(reportGuid);
CopyVBScript
reportGuid = "1f382791-b2cf-4b39-afd3-28348693c44e" 'All Assets report
set results = reportManagement.RunReport(reportGuid)
CopyÂ 
AltirisASDKNS.exe cmd:RunReport reportItemGuid:"1f382791-b2cf-4b39-afd3-28348693c44e"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$reportItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/RunReport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunReportWithParameters {

<#
.SYNOPSIS
    Runs a report that takes parameters and returns the results. 

.PARAMETER reportItemGuid
    GUID of the report to be run. The GUID must be an item of type Alitiris.Reporting.ReportManagementItem.  

.PARAMETER nameValuePairs
    Parameter names and values to use in running the report.  

.EXAMPLE 
    CopyC#
string reportGuid = "9c6b41ac-6138-4fdd-a90b-21eb2214fc46"; // Server Load by Start and End Date report
string params = "Time Unit=Day";
XmlNode results = m_proxy.RunReportWithParameters(reportGuid, params);
CopyVBScript
reportGuid = "9c6b41ac-6138-4fdd-a90b-21eb2214fc46" 'Server Load by Start and End Date report
params = "Time Unit=Day"
set results = reportManagement.RunReportWithParameters(reportGuid, params)
CopyÂ 
AltirisASDKNS.exe cmd:RunReportWithParameters reportItemGuid:"9c6b41ac-6138-4fdd-a90b-21eb2214fc46" nameValuePairs:"Time Unit=Day"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    All user-settable parameters and their default values for a given report may be viewed on the report's page in the NS Console. Parameters should be supplied in the following format: "paramName1=paramValue1, paramName2=paramValue2, paramName3=paramValue3" All values are treated as strings and translated into the appropriate SQL type. If a value cannot be translated into the appropriate SQL type an exception is thrown. Do not use double quotes (") or single quotes (') when defining parameters unless these are literally part of the parameter name or value. Do not user a comma (",") within a parameter name or value; use commas only to delimit one parameter name-value pair from another. All parameter names must retain any white spacing as displayed on the report page in the Console. 
In general, values given for date-time parameters (such as "To," "From," etc.) must be in a format representing an actual date. For example, a date of November 8, 2008 may be represented as "11/8/2008," "8-Nov-08," "11-8-2008," etc. However, do not insert a comma (",") into your date value (such as "November 8, 2008"), as the comma will be interpreted as a parameter delimeter and the method will fail. You may also add a time component following the date value in the format "HH:MM:SS," as in "11/8/2008 12:30:00." You may also give a date-time value by using the convention of "Today" to represent today's date, and "Now" to represent today's date with the current time. You may also subtract a positive integer representing a number of calendar days from either such word; for example, "Today-7" would be interpreted as the date seven days ago, while "Now-1" would be interpreted as yesterday's date with the current time (i.e., exactly 24 hours ago). 
You may pass in all, or just some, of the user-settable parameters. Any parameter(s) for which you do not pass in a value will use the default value for that parameter. However, if a parameter does not have a default value, you MUST pass in a value. If a given parameter name does not match any parameters in the report, an exception is thrown. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$reportItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$nameValuePairs,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			reportItemGuid = $reportItemGuid
 			nameValuePairs = $nameValuePairs

        }


    $WebServiceUrl = "altiris/ASDK.NS/ReportManagementService.asmx/RunReportWithParameters"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceAssociation {

<#
.SYNOPSIS
    Creates a resource association between two resources 

.PARAMETER resourceAssociationTypeGuid
    the Resource Association Type 

.PARAMETER parentResourceGuid
    a GUID representing the parent resource in the association 

.PARAMETER childResourceGuid
    a child resource to be associated to the parent resource 

.EXAMPLE 
    CopyC#
// the GUID of the "Location" ResourceAssociationType item, which
// associates a parent asset with a child location 
Guid resourceAssociationTypeGuid = new Guid( "05de450f-39ea-4aae-8c5f-77817889c27c");
// the GUID of the previously-defined parent resource (a computer, for example)
Guid parentResourceGuid = new Guid( "3C640E2B-3008-4d8a-8F7E-CE54BF6669BA");
// the GUID of the child resource (a previously-defined location, such as "Headquarters")
Guid childResourceGuid = new Guid( "0432878C-BF6D-4e14-94CF-A9CEEB36DC41");
// See AssetManagementLib Overview for an example of setting up m_proxy.
m_proxy.CreateResourceAssociation( resourceAssociationTypeGuid, parentResourceGuid, childResourceGuid);
CopyVBScript
resAssocType = "05de450f-39ea-4aae-8c5f-77817889c27c"
parentRes = "3C640E2B-3008-4d8a-8F7E-CE54BF6669BA"
childRes = "0432878C-BF6D-4e14-94CF-A9CEEB36DC41"
call itemManagement.CreateResourceAssociation( resAssocType, parentRes, childRes)
CopyÂ 
AltirisASDKNS.exe cmd:CreateResourceAssociation resourceAssociationTypeGuid:05de450f-39ea-4aae-8c5f-77817889c27c parentResourceGuid:3C640E2B-3008-4d8a-8F7E-CE54BF6669BA childResourceGuid:0432878C-BF6D-4e14-94CF-A9CEEB36DC41
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    A resource association links a parent resource item of a certain resource type to a child resource item of a certain resource type. The association flows "from" the parent "to" the child. A ResourceAssociationType item contains properties that define the minimum and maximum number of child resource items of the given type that can be associated with the parent resource. (These properties are named "MinimumCardinality" and "MaximumCardinality", respectively.)
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceAssociationTypeGuid,
			[Parameter(Mandatory=$true)]
			[guid]$parentResourceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$childResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceAssociationTypeGuid = $resourceAssociationTypeGuid
 			parentResourceGuid = $parentResourceGuid
 			childResourceGuid = $childResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/CreateResourceAssociation"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetComputerByNameAndDomain {

<#
.SYNOPSIS
    Gets a computer guid given its name and domain 

.PARAMETER name
    Computer's Name 

.PARAMETER domain
    Computer's Domain 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
string machineName = "computer5";
string machineDomain = "WORKGROUP";
Guid computerGuid = m_proxy.GetComputerByNameAndDomain(machineName, machineDomain);
CopyVBScript
machineName = "computer5"
machineDomain = "WORKGROUP"
computerGuid = resourceManagement.GetComputerByNameAndDomain(machineName, machineDomain)
CopyÂ 
AltirisASDKNS.exe cmd:GetComputerByNameAndDomain name:%name% domain:%domain%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings. If you have a case sensitive database you must set an environment variable ASDK_CASE_INSENSITIVE_SEARCH. This will indicate that the system should do name queries in a case insensitive manor. This is done with the use of the SQL COLLATE command. This does not change or modify your database in any way from its current collation sequence, it will only perform the current search in a case insensitive fashion. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$domain,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			domain = $domain

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetComputerByNameAndDomain"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDataClassData {

<#
.SYNOPSIS
    Returns the inventory data in a data class for a given resource 

.PARAMETER dataClass
    Guid or name of the data class to get the data from 

.PARAMETER resourceGuid
    Guid of the resource to return the data for 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
string companyDetailsDataClassName = "Company Details";
Guid AltirisCompanyResourceGuid = new Guid("{e2fea34c-adbb-47bd-9d7a-1092c5078245}");
System.Data.DataTable objRS = m_proxy.GetDataClassData(companyDetailsDataClassName, AltirisCompanyResourceGuid);
string data = "";
foreach( System.Data.DataRow row in objRS )
{
    data += "ROW: ";
    for( int i=0; i < objRS.Rows.Count; i++ )
    {
        data += row[i].ToString() + ", ";
    }
    data += @"\r\n";
 }
CopyVBScript
companyDetailsDataClassName = "Company Details"
AltirisCompanyResourceGuid = "{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
set objRS = resourceManagement.GetDataClassData(companyDetailsDataClassName, AltirisCompanyResourceGuid)
data = ""
while NOT objRS.EOF
    data = data + "ROW: "
    for i=0 to objRS.Fields.Count-1
        data = data & objRS.Fields.Item(i).Value & ", "
        next
        data = data + vbCrLf
        objRS.MoveNext()
wend
Wscript.Echo "Query results: " & data
CopyÂ 
AltirisASDKNS.exe cmd:GetDataClassData dataClass:"Company Details" resourceGuid:"{e2fea34c-adbb-47bd-9d7a-1092c5078245}"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$dataClass,
			[Parameter(Mandatory=$true)]
			[guid]$resourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			dataClass = $dataClass
 			resourceGuid = $resourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetDataClassData"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceByContext {

<#
.SYNOPSIS
    Find a resource by contextual data known about the resource. 

.PARAMETER parameters
    Comma-separated list of filters. Possible values are: 

.EXAMPLE 
    CopyC#
// Find a computer resource (physical or virtual) using the computer's correct name, domain, ipaddress and serial number
string parameters = "mycomputer, mydomain, 255.255.0.0, 75XYTZ, type:computer";
Guid[] guidList = m_proxy.GetResourceByContext( parameters );
// Find the company altiris
parameters = "type:company, %altiris%";
guidList = m_proxy.GetResourceByContext( parameters );
// Find anything starting with 'altir'
parameters = "altir%";
guidList = m_proxy.GetResourceByContext( parameters );
// Find all computer and virtual machine resources
parameters = "type:computer, %";
guidList = m_proxy.GetResourceByContext( parameters );
// Find only computer resources
parameters = "type:computer, strict:true, %";
guidList = m_proxy.GetResourceByContext( parameters );

CopyVBScript
parameters = "type:computer, %"
guidList = resourceManagement.GetResourceByContext(parameters)
strGuids = ""
for each guid in guidList
  strGuids = strGuids & guid & ", "
next
wscript.Echo strGuids
CopyÂ 
AltirisASDKNS.exe cmd:GetResourceByContext parameters:"type:computer, %%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This API is intended to only search for resources. Items that are not resources, such as collections, reports and tasks, should be searched for using one of the ItemManagement APIs.
To find a resource, you can provide any data you know about that resource, including a type. The API will return the resource you are looking for only if all the data supplied matches something in the database. If any piece of data is incorrect, the resource will not be found. Therefore you may not want to use data you are uncertain about, or use wildcards; however, wildcards will slow the search down - especially if they are used at the beginning of a string.
To find all resources of a given type, you should use the parameters 'type:x, %' where x is the type you are looking for. Using 'type:x' alone is insufficient. The '%' is necessary since the type refers to a class designation and not data about the resource.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$parameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parameters = $parameters

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetResourceByContext"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceByName {

<#
.SYNOPSIS
    Gets a resource guid given its name and type 

.PARAMETER name
    Name of the resource to fetch 

.PARAMETER resourceType
    Resource type name or guid of the resource to fetch 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
Guid resourceGuid = m_proxy.GetResourceByName(machineName, "Computer");
CopyVBScript
resourceGuid = resourceManagement.GetResourceByName(machineName, "Computer")
CopyÂ 
AltirisASDKNS.exe cmd:GetResourceByName "name:%name%" "resourceType:%resourceType%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings. If you have a case sensitive database you must set an environment variable ASDK_CASE_INSENSITIVE_SEARCH. This will indicate that the system should do name queries in a case insensitive manor. This is done with the use of the SQL COLLATE command. This does not change or modify your database in any way from its current collation sequence, it will only perform the current search in a case insensitive fashion. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$resourceType,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			resourceType = $resourceType

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetResourceByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetUserByUserIdAndDomain {

<#
.SYNOPSIS
    Gets a user guid given its userId and domain 

.PARAMETER userId
    User's Id 

.PARAMETER domain
    User's Domain 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
Guid userGuid = m_proxy.GetUserByUserIdAndDomain(userId, userDomain);
CopyVBScript
userGuid = resourceManagement.GetUserByUserIdAndDomain(userId, userDomain)
CopyÂ 
AltirisASDKNS.exe cmd:GetUserByUserIdAndDomain userId:%userId% domain:%domain%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The COM and CLI layers take and return guids represented as strings.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$userId,
			[Parameter(Mandatory=$true)]
			[string]$domain,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			userId = $userId
 			domain = $domain

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/GetUserByUserIdAndDomain"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MergeResource {

<#
.SYNOPSIS
    Merges two resources into a single resource. 

.PARAMETER fromGuid
    The guid of the resource to merge from. 

.PARAMETER toGuid
    The guid of the resource to merge to. 

.EXAMPLE 
    CopyC#
string fromGuid = "fe94974e-6c97-4a15-914d-761aed470199";
string toGuid = "0eb6763c-1457-4105-82ec-f6f85ad7bbb3";
ItemDetails item = m_proxy.MergeResource(fromGuid, toGuid);
CopyVBScript
fromGuid = "fe94974e-6c97-4a15-914d-761aed470199"
toGuid = "0eb6763c-1457-4105-82ec-f6f85ad7bbb3"
set item = resourceManagementLib.MergeResource(fromGuid, toGuid);
CopyÂ 
AltirisASDKNS.exe cmd:MergeResource fromGuid:"fe94974e-6c97-4a15-914d-761aed470199" toGuid:"0eb6763c-1457-4105-82ec-f6f85ad7bbb3"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The name and guid of the toGuid are retained. All other data is selected based on timestamp. The most recent data is retained. The resources being merged must be of the same resource type.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$fromGuid,
			[Parameter(Mandatory=$true)]
			[guid]$toGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			fromGuid = $fromGuid
 			toGuid = $toGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/MergeResource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PushAltirisAgentToComputers {

<#
.SYNOPSIS
    Pushes the Altiris NS Agent to a set of client computers 

.PARAMETER computerNames
    Comma separated list of computer names or IP addresses 

.PARAMETER showInStartMenu
    Controls if the NS Agent appears in the Start Menu on the client machine 

.PARAMETER showInSysTray
    Controls if the NS Agent appears in the SysTray on the client machine 

.PARAMETER useProxy
    Control if a proxy will be used by the client to commicate with the NS Server 

.PARAMETER showInAddRemove
    Control if the NS Agent install will appear in Add/Remove programs 

.PARAMETER overrideInstallPath
    If not null overrides the default path where the Agent will be installed on the client machine 

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
m_proxy.PushAltirisAgentToComputers("192.168.202.1", true, true, false, true, @"c:\tmp\clientAgentInstall");
CopyVBScript
call resourceManagement.PushAltirisAgentToComputers("192.168.202.1", true, true, false, true, "c:\tmp\clientAgentInstall")
CopyÂ 
AltirisASDKNS.exe cmd:PushAltirisAgentToComputers "computerNames:%targetComputers%" "showInStartMenu:true" "showInSysTray:true" "useProxy:false" "showInAddRemove:true" "overrideInstallPath:null"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This function only works if your NS network has been properly configured to execute push agent functions. To determine if your NS network is properly configured please refer to the documentation you received with your NS. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$computerNames,
			[Parameter(Mandatory=$true)]
			[bool]$showInStartMenu,
			[Parameter(Mandatory=$true)]
			[bool]$showInSysTray,
			[Parameter(Mandatory=$true)]
			[bool]$useProxy,
			[Parameter(Mandatory=$true)]
			[bool]$showInAddRemove,
			[Parameter(Mandatory=$true)]
			[string]$overrideInstallPath,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			computerNames = $computerNames
 			showInStartMenu = $showInStartMenu
 			showInSysTray = $showInSysTray
 			useProxy = $useProxy
 			showInAddRemove = $showInAddRemove
 			overrideInstallPath = $overrideInstallPath

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/PushAltirisAgentToComputers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PushAltirisAgentToComputersStrict {

<#
.SYNOPSIS
    Pushes the Altiris NS Agent to a set of client computers 

.PARAMETER computerNames
    Comma separated list of computer names or IP addresses 

.PARAMETER showInStartMenu
    Controls if the NS Agent appears in the Start Menu on the client machine 

.PARAMETER showInSysTray
    Controls if the NS Agent appears in the SysTray on the client machine 

.PARAMETER useProxy
    Control if a proxy will be used by the client to commicate with the NS Server 

.PARAMETER showInAddRemove
    Control if the NS Agent install will appear in Add/Remove programs 

.PARAMETER overrideInstallPath
    If not null overrides the default path where the Agent will be installed on the client machine 

.PARAMETER userName
     

.PARAMETER password
     

.EXAMPLE 
    CopyC#
// See ResourceManagementLib Overview for an example of setting up m_proxy.
m_proxy.PushAltirisAgentToComputersStrict("192.168.202.1", true, true, false, true, @"c:\tmp\clientAgentInstall", %userName%, %password%);
CopyVBScript
call resourceManagement.PushAltirisAgentToComputersStrict("192.168.202.1", true, true, false, true, "c:\tmp\clientAgentInstall", %userName%, %password%)
CopyÂ 
AltirisASDKNS.exe cmd:PushAltirisAgentToComputersStrict "computerNames:%targetComputers%" "showInStartMenu:true" "showInSysTray:true" "useProxy:false" "showInAddRemove:true" "overrideInstallPath:null" "userName:%userName%" "password:%password%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    This function only works if your NS network has been properly configured to execute push agent functions. To determine if your NS network is properly configured please refer to the documentation you received with your NS. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$computerNames,
			[Parameter(Mandatory=$true)]
			[bool]$showInStartMenu,
			[Parameter(Mandatory=$true)]
			[bool]$showInSysTray,
			[Parameter(Mandatory=$true)]
			[bool]$useProxy,
			[Parameter(Mandatory=$true)]
			[bool]$showInAddRemove,
			[Parameter(Mandatory=$true)]
			[string]$overrideInstallPath,
			[Parameter(Mandatory=$true)]
			[string]$userName,
			[Parameter(Mandatory=$true)]
			[string]$password,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			computerNames = $computerNames
 			showInStartMenu = $showInStartMenu
 			showInSysTray = $showInSysTray
 			useProxy = $useProxy
 			showInAddRemove = $showInAddRemove
 			overrideInstallPath = $overrideInstallPath
 			userName = $userName
 			password = $password

        }


    $WebServiceUrl = "altiris/ASDK.NS/ResourceManagementService.asmx/PushAltirisAgentToComputersStrict"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignResourcesToOrganizationalGroup {

<#
.SYNOPSIS
    Assign one or more resource items to a Organizational Group 

.PARAMETER resourceItemGuids
    a comma-delimited string of GUIDs representing the resource items to be added 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
string resItemGuids = "{95e7f04d-a5e5-4d0c-afa8-0f0f329e976f}, {a4aefa28-db5b-492f-a848-65107ec46b7b}";
Guid organizationalGroupGuid = new Guid("{6c8cc2fa-b802-45b1-be61-e2aa1480f254}");
m_proxy.AssignResourcesToOrganizationalGroup(resItemGuids, organizationalGroupGuid);
CopyVBScript
resItemGuids = "{95e7f04d-a5e5-4d0c-afa8-0f0f329e976f}, {a4aefa28-db5b-492f-a848-65107ec46b7b}"
organizationalGroupGuid = "{6c8cc2fa-b802-45b1-be61-e2aa1480f254}"
call scopingManagement.AssignResourcesToOrganizationalGroup(resItemGuids, organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:AssignResourcesToOrganizationalGroup "resourceItemGuids:%resItemGuids%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$resourceItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuids = $resourceItemGuids
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignResourcesToOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignResourceTargetsToPolicy {

<#
.SYNOPSIS
    Associate a set of resource targets with a policy that will target the resources in the resource targets. 

.PARAMETER policyItemGuid
    GUID of the policy that will consume the resource targets. 

.PARAMETER resourceTargetsGuids
    A comma-delimited list of GUIDs representing Resource Target items. Provided Resource Target items list replaces existing targets list. If no Resource Targets are passed in (i.e., resourceTargetsGuids is the Empty String), all existing targets are removed from the policy. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid policyGuid = new Guid("{5b402270-3757-4852-9ad4-9c5b67db1060}");
string resTargetGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}";
m_proxy.AssignResourceTargetsToPolicy(policyGuid, resTargetGuids, false);
CopyVBScript
policyGuid = "{5b402270-3757-4852-9ad4-9c5b67db1060}"
resTargetGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}"
call scopingManagement.AssignResourceTargetsToPolicy(policyGuid, resTargetGuids, false)
CopyÂ 
AltirisASDKNS.exe cmd:AssignResourceTargetsToPolicy "policyItemGuid:%policyGuid%" "resourceTargetsGuids:%resTargetGuids%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$resourceTargetsGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid
 			resourceTargetsGuids = $resourceTargetsGuids

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignResourceTargetsToPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignRoleToOrganizationalGroup {

<#
.SYNOPSIS
    Assign a Role as owner to an Organization Group. 

.PARAMETER roleGuid
    Guid of the existing role. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to which the Role will be assigned.  

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid roleGuid = new Guid("{a9535582-73bb-4dc9-8fb2-743666afa550}");
Guid organizationalViewGuid = new Guid("{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}");
bool success = m_proxy.AssignRoleToOrganizationalGroup(roleGuid, organizationalGroupGuid);
CopyVBScript
roleGuid = "{a9535582-73bb-4dc9-8fb2-743666afa550}"
organizationalGroupGuid = "{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}"
success = scopingManagement.AssignRoleToOrganizationalGroup(roleGuid, organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:AssignRoleToOrganizationalGroup "roleGuid:a9535582-73bb-4dc9-8fb2-743666afa550" "organizationalGroupGuid:1d2402e7-3d2d-415e-bd6a-be14dba4e75e"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/AssignRoleToOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateOrganizationalGroup {

<#
.SYNOPSIS
    Create a Organizational Group and assign it to a Organizational View 

.PARAMETER name
    name of the group 

.PARAMETER description
    description of the group 

.PARAMETER organizationalViewGuid
    GUID of the scope set (Organizational View) this group will belong to 

.PARAMETER parentGuid
    GUID of the parent of the newly-created Organizational Group. The parent may be either an existing Organizational Group, or the same Organizational View that was given as the "OrganizationalViewGuid" parameter value. If the parent is to be the Organizational View itself, you can pass in either the GUID of the resource view or the Empty GUID ("00000000-0000-0000-0000-000000000000"). 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewGuid = new Guid("{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}");
Guid organizationalGroupGuid = m_proxy.CreateOrganizationalGroup("First Floor Computers", "Computers on first floor", organizationalViewGuid, organizationalViewGuid);
CopyVBScript
organizationalViewGuid = "{1d2402e7-3d2d-415e-bd6a-be14dba4e75e}"
set organizationalGroupGuid = scopingManagement.CreateOrganizationalGroup("First Floor Computers", "Computers on first floor", organizationalViewGuid, organizationalViewGuid)
CopyÂ 
AltirisASDKNS.exe cmd:CreateOrganizationalGroup "name:First Floor Computers" "description:Computers on first floor" "organizationalViewGuid:%resViewGuid%" "parentGuid:%resViewGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalViewGuid,
			[Parameter(Mandatory=$true)]
			[guid]$parentGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description
 			organizationalViewGuid = $organizationalViewGuid
 			parentGuid = $parentGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateOrganizationalView {

<#
.SYNOPSIS
    Create a new Organizational View 

.PARAMETER name
    the name of the view 

.PARAMETER description
    description of the view 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewGuid = m_proxy.CreateOrganizationalView("My Computers", "Computers I manage");
CopyVBScript
set organizationalViewGuid = scopingManagement.CreateOrganizationalView("My Computers", "Computers I manage")
CopyÂ 
AltirisASDKNS.exe cmd:CreateOrganizationalView "name:My Computers" "description:Computers I manage"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateResourceTarget {

<#
.SYNOPSIS
    Create a new ResourceTarget item. 

.PARAMETER configXml
    XML containing the information needed to set up the resource target. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
// See the Remarks section for a sample of the XML format to set the "xml" variable
Guid resourceTargetGuid = m_proxy.CreateResourceTarget(xml);
CopyVBScript
' See the Remarks section for a sample of the XML format to set the "xml" variable
set resourceTargetGuid = scopingManagement.CreateResourceTarget(xml)
CopyÂ 
AltirisASDKNS.exe cmd:CreateResourceTarget "configXml:%xml%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    Note that XML format used in the configXml parameter is NOT identical to the Item XML that would be used to create a new ResourceTarget Item via an NS configuration file. Rather, it is an XML format unique to this method, that provides only the elements needed to programatically create a new ResourceTarget item.
The following is a sample XML format for the "configXml" parameter (empty GUIDs should be replaced with the appropriate actual GUIDs):
CopyXML
<resourceTarget>
  <name>Sample Resource Target</name>
  <description>This is a Sample Resource Target</description>
  <mode>Computers</mode>
  <baseOrganizationalGroupGuid>00000000-0000-0000-0000-000000000000</baseOrganizationalGroupGuid>
  <targetFilters>
    <targetFilter>
      <type>Organizational Group</type>
      <operation>Intersect</operation>
      <organizationalGroupGuid>00000000-0000-0000-0000-000000000000</organizationalGroupGuid>
    </targetFilter>
    <targetFilter>
      <type>Resource Collection</type>
      <operation>Union</operation>
      <resourceCollectionGuid>00000000-0000-0000-0000-000000000000</resourceCollectionGuid>
    </targetFilter>
    <targetFilter>
      <type>Individual Resources</type>
      <operation>Except</operation>
      <resourceGuids>
        <resourceGuid>00000000-0000-0000-0000-000000000000</resourceGuid>
        <resourceGuid>00000000-0000-0000-0000-000000000000</resourceGuid>
        <resourceGuid>00000000-0000-0000-0000-000000000000</resourceGuid>
      </resourceGuids>
    </targetFilter>
  </targetFilters>
</resourceTarget>
The "name" value is the name of the new Resource Target. The "description" contains a description of the Resource Target (this "description" element is optional). The "mode" contains a type of the Resource Target. Computers - this Computers Resource Target, Automatically added filter "All Computers". Users - this Users Resource Target, Automatically added filter "All Userss". (This "mode" element is optional). The "baseOrganizationalGroupGuid" value should be given the value of the GUID of the Organizational Group item that defines the base or beginning set of resources against which any filters will be applied. If no value is given for the "baseOrganizationalGroupGuid" element, the base organizational group will be set to "All Discovered Resources." (NOTE: Some policies may impose an additional restriction on the starting Group to apply only to Computer or User resources.)
Zero or more filters may be added under the "targetFilters" element. Each "targetFilter" element defines a different filter to apply. The "type" of the filter must be one of "Organizational Group," "Resource Collection," or "Individual Resources." If the type is given as "Organizational Group," then there must be a sibling element "organizationalGroupGuid" whose value is the GUID of the existing Organizational Group item to be used as the filter. If the type is "Resource Collection," there must be a sibling element "resourceCollectionGuid" with the value the Guid of an NS 7 Resource Collection, containing the resources to be used as the filter. (Note: An NS 7 Resource Collection is referred to as a "filter" in the NS Console.) If the type is given as "Individual Resources," there must be a sibling element "resourceGuids" which in turn contains one or more "resourceGuid" elements, each of which contains the GUID of an individual resource to be included in that filter. 
There can be zero or more of each of the three types of filters, in any combination. NOTE: The order in which you place the filters in the XML is important. When the Resource Target is created, each filter will be evaluated in the order it appears in the XML, starting at the topmost filter element and moving downward.
The "operation" element in each Target Filter defines the logical operation that will be performed between the resources contained in the the filter and base organizational group (in the case of the first filter), or between the filter's resources and the resource set derived from the previous filter opertation (in the case of the second and subsequent filters). Only three values are allowed: "Intersect," "Union," and "Except."
For more information, see the NS7 documentation regarding Resource Targets and Target Filters.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$configXml,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			configXml = $configXml

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/CreateResourceTarget"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteOrganizationalGroup {

<#
.SYNOPSIS
    Delete an organizational group. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group item 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{58541982-7d1d-451f-aaf7-63ba6421c5ee}");
m_proxy.DeleteOrganizationalGroup(organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{58541982-7d1d-451f-aaf7-63ba6421c5ee}"
call scopingManagement.DeleteOrganizationalGroup(organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:DeleteOrganizationalGroup "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/DeleteOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteOrganizationalView {

<#
.SYNOPSIS
    Delete a Organizational View. 

.PARAMETER organizationalViewGuid
    GUID of the Organizational View item 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
m_proxy.DeleteOrganizationalView(clonedObject.Guid);
CopyVBScript
call scopingManagement.DeleteOrganizationalView(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:DeleteOrganizationalView "organizationalViewGuid:%organizationalViewGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalViewGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalViewGuid = $organizationalViewGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/DeleteOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupDirectMembership {

<#
.SYNOPSIS
    Returns the GUIDs of all direct members of the given Organizational Group. This includes both: (1) resource items that are direct children of the given Organization Group (i.e., are at the root level of the Organizational Group); and (2) any Organizational Group items that are direct children of the given Organizational Group. Items returned include any such items that are visible in the Console, as well as any such items that are hidden from view in the Console. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group whose membership is returned 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{acde3562-2f26-42e3-80b1-8e34c74159b3}");
Guid[] resources = m_proxy.GetOrganizationalGroupDirectMembership(organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{acde3562-2f26-42e3-80b1-8e34c74159b3}"
set resources = scopingManagement.GetOrganizationalGroupDirectMembership(organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:GetOrganizationalGroupDirectMembership "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupDirectMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupMembership {

<#
.SYNOPSIS
    Returns the GUIDs of all members of the given Organizational Group. This includes: (1) resource items that are direct children of the given Organization Group as well resource items that are contained in other Organizational Groups in the given Group's sub-tree; (2) any child Organizational Group items found anywhere in the given Organizational Group's subtree; and (3) items visible in the Console, as well as any items that exist in the given Organizational Group's sub-tree but are hidden from view in the Console. 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group whose membership is returned 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{acde3562-2f26-42e3-80b1-8e34c74159b3}");
Guid[] resources = m_proxy.GetOrganizationalGroupMembership(organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{acde3562-2f26-42e3-80b1-8e34c74159b3}"
set resources = scopingManagement.GetOrganizationalGroupMembership(organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:GetOrganizationalGroupMembership "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalGroupsFromOrganizationalView {

<#
.SYNOPSIS
    Returns the GUIDs for all Organizational Groups for which the current user has read permission, that are members of the given Organizational View. These include: (1) Organizational Groups that are direct children or are found at any level of the given Organizational Group's sub-tree; and (2) any such Organizational Groups that are hidden in the Console as well as those that are visible. The user must have Read permission on the given Organizational Group. 

.PARAMETER organizationalViewGuid
    GUID of the Organizational View containing the Organizational Groups 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewGuid = new Guid("{fbee9440-0033-4489-b69d-5aecf6475da4}");
Guid[] resGroups = m_proxy.GetOrganizationalGroupsFromOrganizationalView(organizationalViewGuid);
CopyVBScript
organizationalViewGuid = "{fbee9440-0033-4489-b69d-5aecf6475da4}"
set resGroups = scopingManagement.GetOrganizationalGroupsFromOrganizationalView(organizationalViewGuid)
CopyÂ 
AltirisASDKNS.exe cmd:GetOrganizationalGroupsFromOrganizationalView "OrganizationalViewGuid:%organizationalViewGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalViewGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalViewGuid = $organizationalViewGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalGroupsFromOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalViews {

<#
.SYNOPSIS
    Get the GUIDs of all active Organizational Views on the system. The current user must have Read permissions on the "Organizational Views" folder. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid[] organizationalViews = m_proxy.GetOrganizationalViews();
CopyVBScript
set organizationalViews = scopingManagement.GetOrganizationalViews()
CopyÂ 
AltirisASDKNS.exe cmd:GetOrganizationalViews
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


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalViews"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetOrganizationalViewsFolderGuid {

<#
.SYNOPSIS
    Returns the well-known GUID of the one-and-only "Organizational Views" folder that is the parent folder to all OrganizationalView objects. 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalViewFolderGuid = m_proxy.GetOrganizationalViewsFolderGuid();
CopyVBScript
set organizationalViewFolderGuid = scopingManagement.GetOrganizationalViewsFolderGuid()
CopyÂ 
AltirisASDKNS.exe cmd:GetOrganizationalViewsFolderGuid
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


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetOrganizationalViewsFolderGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourcesTargetedByPolicy {

<#
.SYNOPSIS
    Returns a list of the resources that the given policy currently targets. 

.PARAMETER policyItemGuid
    Guid of the policy item 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid policyGuid = new Guid("{1c046531-f62c-4e05-bdce-5c4c17a023c2}");
Guid[] resources = m_proxy.GetResourcesTargetedByPolicy(policyGuid);
CopyVBScript
policyGuid = "{1c046531-f62c-4e05-bdce-5c4c17a023c2}"
set resources = scopingManagement.GetResourcesTargetedByPolicy(policyGuid)
CopyÂ 
AltirisASDKNS.exe cmd:GetResourcesTargetedByPolicy "policyItemGuid:%policyGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourcesTargetedByPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceTargetMembership {

<#
.SYNOPSIS
    Returns the list of resource items in a resource target. The Guid must be of type ResourceTarget. 

.PARAMETER resourceTargetGuid
    GUID of the resource target to be evaluated 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid resTargetGuid = new Guid("{09af2f95-6281-444d-a410-30b58fb57aec}");
Guid[] resourceTargetMemberGuids = m_proxy.GetResourceTargetMembership(resTargetGuid);
CopyVBScript
resTargetGuid = "{09af2f95-6281-444d-a410-30b58fb57aec}"
set resourceTargetMemberGuids = scopingManagement.GetResourceTargetMembership(resTargetGuid)
CopyÂ 
AltirisASDKNS.exe cmd:GetResourceTargetMembership "resourceTargetGuid:%resTargetGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceTargetGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceTargetGuid = $resourceTargetGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourceTargetMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetResourceTargets {

<#
.SYNOPSIS
    Returns a list of the Resource Target items that currently apply to the given Client Config Policy. 

.PARAMETER policyItemGuid
    GUID of the policy item to which the Resource Targets apply 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid[] resourceTargetGuids = m_proxy.GetResourceTargets(clonedObject.Guid);
CopyVBScript
// See ScopingManagementLib Overview for an example of setting up m_proxy.
set resourceTargetGuids = scopingManagement.GetResourceTargets(clonedObject.Guid)
CopyÂ 
AltirisASDKNS.exe cmd:GetResourceTargets "policyItemGuid:%itemGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyItemGuid = $policyItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/GetResourceTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsInOrganizationalGroup {

<#
.SYNOPSIS
    Tells whether a given resource item is a member of the given Organizational Group, either directly or as a member of a child Organizational Group 

.PARAMETER resourceItemGuid
    GUID of the resource item to be checked 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to be queried 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}");
bool isInGroup = m_proxy.IsInOrganizationalGroup(clonedObject.Guid, organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}"
isInGroup = scopingManagement.IsInOrganizationalGroup(clonedObject.Guid, organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:IsInOrganizationalGroup "resourceItemGuid:%resourceGuid%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceItemGuid,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuid = $resourceItemGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/IsInOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsInOrganizationalGroupDirectMembership {

<#
.SYNOPSIS
    Tells whether a given resource item is a direct member of the given Organizational Group (members of any child Organizational Groups are ignored) 

.PARAMETER resourceItemGuid
    GUID of the resource item to be checked 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to be queried 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}");
bool isInGroup = m_proxy.IsInOrganizationalGroupDirectMembership(clonedObject.Guid, organizationalGroupGuid);
CopyVBScript
organizationalGroupGuid = "{1131d5c6-071c-4252-a2f7-a8d9a0ad4d51}"
isInGroup = scopingManagement.IsInOrganizationalGroupDirectMembership(clonedObject.Guid, organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:IsInOrganizationalGroupDirectMembership "resourceItemGuid:%resourceGuid%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$resourceItemGuid,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuid = $resourceItemGuid
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/IsInOrganizationalGroupDirectMembership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MoveOrganizationalGroupWithinOrganizationalView {

<#
.SYNOPSIS
    Moves an existing Organizational Group to a different position in the Organizational View hierarchy containing that group 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group to be moved 

.PARAMETER parentGroupGuid
    GUID of the Organizational Group that will be the parent of the moved Organizational Group after the move is completed. If the Organizational Group is to be moved to the root level (i.e., its parent is to be a Organizational View rather than another Organizational Group), this parameter's value must be the Empty GUID (i.e., "00000000-0000-0000-0000-000000000000"). 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
Guid organizationalGroupGuid = new Guid("{da404f3a-1452-469d-8e04-baa592f1d50d}");
Guid parentGuid = new Guid("{6f76e30b-b124-4434-811c-c0d137bcf7cb}");
m_proxy.MoveOrganizationalGroupWithinOrganizationalView(organizationalGroupGuid, parentGuid);
CopyVBScript
orgGroupGuid = "{da404f3a-1452-469d-8e04-baa592f1d50d}"
parentGuid = "{6f76e30b-b124-4434-811c-c0d137bcf7cb}"
call scopingManagement.MoveOrganizationalGroupWithinOrganizationalView(organizationalGroupGuid, parentGuid)
CopyÂ 
AltirisASDKNS.exe cmd:MoveOrganizationalGroupWithinOrganizationalView "organizationalGroupGuid:%orgGroupGuid%"  "parentGroupGuid:%parentGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
			[Parameter(Mandatory=$true)]
			[guid]$parentGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			organizationalGroupGuid = $organizationalGroupGuid
 			parentGroupGuid = $parentGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/MoveOrganizationalGroupWithinOrganizationalView"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveResourcesFromOrganizationalGroup {

<#
.SYNOPSIS
    Remove a list of resource items from the Organizational Group that contains them 

.PARAMETER resourceItemGuids
    comma-delimiated list of the GUIDs of the resource items to be removed 

.PARAMETER organizationalGroupGuid
    GUID of the Organizational Group containing the resource items 

.EXAMPLE 
    CopyC#
// See ScopingManagementLib Overview for an example of setting up m_proxy.
string resItemGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}";
Guid organizationalGroupGuid = new Guid("{6c8cc2fa-b802-45b1-be61-e2aa1480f254}");
m_proxy.RemoveResourcesFromOrganizationalGroup(resItemGuids, organizationalGroupGuid);
CopyVBScript
resItemGuids = "{e506ee1a-fa1b-4c86-a885-99e16636381f}, {95102da7-5f13-4016-893d-eea162250146}"
organizationalGroupGuid = "{6c8cc2fa-b802-45b1-be61-e2aa1480f254}"
call scopingManagement.RemoveResourcesFromOrganizationalGroup(resItemGuids, organizationalGroupGuid)
CopyÂ 
AltirisASDKNS.exe cmd:RemoveResourcesFromOrganizationalGroup "resourceItemGuids:%resItemGuids%" "organizationalGroupGuid:%organizationalGroupGuid%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$resourceItemGuids,
			[Parameter(Mandatory=$true)]
			[guid]$organizationalGroupGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			resourceItemGuids = $resourceItemGuids
 			organizationalGroupGuid = $organizationalGroupGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/ScopingManagementService.asmx/RemoveResourcesFromOrganizationalGroup"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddRoleMembers {

<#
.SYNOPSIS
    Add members to a security role. 

.PARAMETER roleGuid
    The guid of the role to add to. 

.PARAMETER memberNames
    A comma-seperated list of names to be added to the role. A name may be either (1) a fully qualified Windows credential name including both the domain and user name, such as DOMAIN\User, OR (2) an SMP User name. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167";
string names = "DOMAIN\User1, DOMAIN\User2";
bool success = m_proxy.AddRoleMembers(roleGuid, names);
CopyVBScript
roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167"
names = "DOMAIN\User1, SomeSmpUser"
success = securityManagement.AddRoleMembers(roleGuid, names)
CopyÂ 
AltirisASDKNS.exe cmd:AddRoleMembers roleGuid:"7644e630-27ab-4d5e-9ce3-f2b3fff6a167" memberNames:"DOMAIN\User1, "
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    IMPORTANT: A Windows credential can only be added to a role if that credential has previously been associated with an SMP User account. Make sure that each Windows credential has an associated SMP User account before attempting to add it to a role. (This can be done in the SMP Console through the "Add Credentials" button for the SMP User.)
If any name in the list is not found in the database, the name is not added to the role. Remaining names may still be added. To find out if a name was not added, check the return value of the API - false indicates one or more names failed. Then check the log (Warning level) to see which names failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$memberNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			memberNames = $memberNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AddRoleMembers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddRolePrivileges {

<#
.SYNOPSIS
    Add privileges to a security role. 

.PARAMETER roleGuid
    Guid of the security role. 

.PARAMETER privilegeNames
    A comma-seperated list of privilege names to add to the role. The privilegeNames parameter takes those privileges as they are seen in the console under the role management. They are not case sensitive. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317";
string names = "Create Reports, Import XML";
bool success = m_proxy.AddRolePrivileges(roleGuid, names);
CopyVBScript
roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317"
names = "Create Reports, Import XML"
success = securityManagement.AddRolePrivileges(roleGuid, names)
CopyÂ 
AltirisASDKNS.exe cmd:AddRolePrivileges roleGuid:"c1a02088-b36a-4e32-8b86-2a22a947d2317" privilegeNames:"Create Reports, Import XML"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    If any privileges in the list is not found in the database, the privileges is not added to the role. Remaining privileges may still be added. To find out if a privilege was not added, check the return value of the API - false indicates one or more privileges failed. Then check the log (Warning level) to see which privileges failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$privilegeNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			privilegeNames = $privilegeNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AddRolePrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AssignItemOwnership {

<#
.SYNOPSIS
    Sets the ownership of the item to the requested user. 

.PARAMETER itemGuid
    Guid of the item to set. 

.PARAMETER userName
    Name of the SMP User to assign ownership of the item to. This name must be an SMP User, not a Windows credential. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string itemGuid = "65bb6c45-b013-4599-96dd-32a955404ed5";
string name = @"My SMP Account";
bool success = m_proxy.AssignItemOwnership(itemGuid, name);
CopyVBScript
itemGuid = "65bb6c45-b013-4599-96dd-32a955404ed5"
name = "My SMP Account"
success = securityManagement.AssignItemOwnership(itemGuid, name)
CopyÂ 
AltirisASDKNS.exe cmd:AssignItemOwnership itemGuid:"65bb6c45-b013-4599-96dd-32a955404ed5" userName:"My SMP Account"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    The calling user must have permissions to make change security changes. The requested user must have permissions to take ownership of items.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			userName = $userName

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/AssignItemOwnership"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateNewRole {

<#
.SYNOPSIS
    Creates a new security role in the NS database. 

.PARAMETER roleName
    The name of the role. 

.PARAMETER roleDescription
    A description of the role. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = m_proxy.CreateNewRole("New Role", "New Role description");
CopyVBScript
roleGuid = securityManagement.CreateNewRole("New Role", "New Role description")
CopyÂ 
AltirisASDKNS.exe cmd:CreateNewRole roleName:"New Role" roleDescription:"New Role description"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleName,
			[Parameter(Mandatory=$true)]
			[string]$roleDescription,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleName = $roleName
 			roleDescription = $roleDescription

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/CreateNewRole"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteRole {

<#
.SYNOPSIS
    Removes a security role in the NS database. 

.PARAMETER roleGuid
    The guid of the role. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
m_proxy.DeleteRole(roleGuid);
CopyVBScript
call securityManagement.DeleteRole(roleGuid)
CopyÂ 
rem This must be an existing role guid.
set roleGuid="30a14442-3070-484d-ab97-1b6df7aa040a"
AltirisASDKNS.exe cmd:DeleteRole roleGuid:%roleGuid%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$roleGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/DeleteRole"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DisablePermissionInheritance {

<#
.SYNOPSIS
    Set the item to not inherit permissions from its parent object. 

.PARAMETER itemGuid
    The guid of the item to set. 

.PARAMETER actionFlag
    The action to take when removing inheritance. 1=Remove inherited permissions, 2=Copy inherited permissions. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2";
bool success = m_proxy.DisablePermissionInheritance(itemGuid, 1);
CopyVBScript
itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2"
success = itemManagement.DisablePermissionInheritance(itemGuid, 1)
CopyÂ 
AltirisASDKNS.exe cmd:DisablePermissionInheritance itemGuid:"e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2" actionFlag:1
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuid,
			[Parameter(Mandatory=$true)]
			[int]$actionFlag,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid
 			actionFlag = $actionFlag

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/DisablePermissionInheritance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnablePermissionInheritance {

<#
.SYNOPSIS
    Set the item to inherit permissions from its parent object. 

.PARAMETER itemGuid
    The guid of the item to set. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2";
bool success = m_proxy.EnablePermissionInheritance(itemGuid);
CopyVBScript
itemGuid = "e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2"
success = itemManagement.EnablePermissionInheritance(itemGuid)
CopyÂ 
AltirisASDKNS.exe cmd:EnablePermissionInheritance itemGuid:"e0b1fe6c-b0c2-448f-adfa-4cb975ad8bc2"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuid = $itemGuid

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/EnablePermissionInheritance"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function FindRoleByName {

<#
.SYNOPSIS
    This method will allow you to find a role by its name. 

.PARAMETER roleName
    The name of the role. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = m_proxy.FindRoleByName("Existing Role Name");
CopyVBScript
roleGuid = securityManagement.FindRoleByName("Existing Role Name")
CopyÂ 
AltirisASDKNS.exe cmd:FindRoleByName roleName:"Existing Role Name"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleName = $roleName

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/FindRoleByName"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveRoleMembers {

<#
.SYNOPSIS
    Remove members from a security role. 

.PARAMETER roleGuid
    The guid of the role to remove from. 

.PARAMETER memberNames
    A comma-seperated list of names to be removed from the role. A name may be either (1) a fully qualified Windows credential name including both the domain and user name, such as DOMAIN\User, OR (2) an SMP User name. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167";
string names = "DOMAIN\User1, SomeSmpUser";
bool success = m_proxy.RemoveRoleMembers(roleGuid, names);
CopyVBScript
roleGuid = "7644e630-27ab-4d5e-9ce3-f2b3fff6a167"
names = "DOMAIN\User1, SomeSmpUser"
success = securityManagement.RemoveRoleMembers(roleGuid, names)
CopyÂ 
AltirisASDKNS.exe cmd:RemoveRoleMembers roleGuid:"7644e630-27ab-4d5e-9ce3-f2b3fff6a167" memberNames:"DOMAIN\User1, SomeSmpUser"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    NOTE: A Windows credential can only be removed from a role if that credential has previously been associated with an SMP User account. Make sure that each Windows credential has an associated SMP User account before attempting to remove it from a role. (This can be verified in the SMP Console under the "Credentials" heading for the SMP User.)
If any name in the list is not found in the database, the name is not removed from the role. Remaining names may still be removed. To find out if a name was not removed, check the return value of the API - false indicates one or more names failed. Then check the log (Warning level) to see which names failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$memberNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			memberNames = $memberNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/RemoveRoleMembers"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveRolePrivileges {

<#
.SYNOPSIS
    Remove privileges from a security role. 

.PARAMETER roleGuid
    Guid of the security role. 

.PARAMETER privilegeNames
    A comma-seperated list of privilege names to remove from the role. The privilegeNames parameter takes those privileges as they are seen in the console under the role management. They are not case sensitive. 

.EXAMPLE 
    CopyC#
// See SecurityManagementLib Overview for an example of setting up m_proxy.
string roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317";
string names = "Create Reports, Import XML";
bool success = m_proxy.RemoveRolePrivileges(roleGuid, names);
CopyVBScript
roleGuid = "c1a02088-b36a-4e32-8b86-2a22a947d2317"
names = "Create Reports, Import XML"
success = securityManagement.RemoveRolePrivileges(roleGuid, names)
CopyÂ 
AltirisASDKNS.exe cmd:RemoveRolePrivileges roleGuid:"c1a02088-b36a-4e32-8b86-2a22a947d2317" privilegeNames:"Create Reports, Import XML"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 

.NOTES
    If any privileges in the list is not found in the database, the privileges is not removed from the role. Remaining privileges may still be removed. To find out if a privilege was not removed, check the return value of the API - false indicates one or more privileges failed. Then check the log (Warning level) to see which privileges failed.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$roleGuid,
			[Parameter(Mandatory=$true)]
			[string]$privilegeNames,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			roleGuid = $roleGuid
 			privilegeNames = $privilegeNames

        }


    $WebServiceUrl = "altiris/ASDK.NS/SecurityManagementService.asmx/RemoveRolePrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddExpression {

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
CopyÂ 
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


Function AddOperatorToExpression {

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
CopyÂ 
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


Function CreateExpression64BitWindowsInstalled {

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
CopyÂ 
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


Function CreateExpressionFileVersion {

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
CopyÂ 
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


Function CreateExpressionMSIProductCode {

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
CopyÂ 
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


Function CreateExpressionMUIInstalled {

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
CopyÂ 
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


Function CreateExpressionProcessorType {

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
CopyÂ 
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


Function CreateExpressionRegistryKeyExits {

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
CopyÂ 
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


Function CreateExpressionRegistryKeyPathToFileVersion {

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
CopyÂ 
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


Function CreateExpressionRegistryKeyPathToProductVersion {

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
CopyÂ 
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


Function CreateExpressionRegistryKeyToFileVersion {

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
CopyÂ 
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


Function CreateExpressionRegistryKeyValue {

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
CopyÂ 
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


Function CreateExpressionRegistryKeyVersion {

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
CopyÂ 
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


Function CreateExpressionSoftwareFile {

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
CopyÂ 
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


Function CreateExpressionSoftwareFileAddFile {

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
CopyÂ 
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


Function CreateExpressionStaticFile {

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
CopyÂ 
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


Function CreateExpressionStaticShortcutTarget {

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
CopyÂ 
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


Function CreateExpressionWindowsLanguage {

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
CopyÂ 
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


Function CreateExpressionWindowsVersion {

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
CopyÂ 
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


Function CreateInventoryRule {

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
CopyÂ 
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


Function CreateInventoryRuleFromExpression {

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
CopyÂ 
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


Function ExportRuleDefinition {

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
CopyÂ 
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


Function ExportRuleDefinitionsFromComponent {

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
CopyÂ 
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


Function GetExpressionsFromRule {

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
CopyÂ 
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


Function GetExpressionsFromRuleFile {

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
CopyÂ 
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


Function RemoveExpression {

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
CopyÂ 
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


Function UpdateInventoryRule {

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
CopyÂ 
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


Function UpdateInventoryRuleFromExpression {

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
CopyÂ 
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


Function CreateCommandLine {

<#
.SYNOPSIS
    Create new command line item 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description (can be empty) 

.PARAMETER SoftwarePackageGuid
    GUID of package if command line requires package (you can use the empty guid {00000000-0000-0000-0000-000000000000} if SoftwareComponentGuid is specified) 

.PARAMETER SoftwareComponentGuid
    GUID of software component which will be associated with command line (you can use the empty guid {00000000-0000-0000-0000-000000000000} if the Package guid is specified) 

.PARAMETER InstallationFileType
    Name of installation file type. Different installation file types have different types of command line. For example "MSI Software Installation File" has command line types Install, Uninstall, Repair, Custom. "EXE Software Installation File" has types Install, Uninstall, Custom, and so forth. If you don't want to specify the installation file type method just pass an empty string. The empty string will be considered as general 'other' type of installation file. Such type of installation file has three command line types: Custom, Install, Uninstall NOTE: Because the list of types can change there are no hardcoded list of available installation file types. To see which type are registered just open Command Line editor dialog in Notification Server console or call GetRegisterInstallationFileTypes method.  

.PARAMETER CommandType
    Command line type. Typical values are: Install Uninstall Repair Upgrade Custom NOTE: The list of available command line types is specific to the specified installation file type. If a command line type is unsupported by the specified installation file type, the method cause an exception. To see the exact command line types which are available for certain installation file types please open Command Line editor dialog in Notification Console or call GetCommandLineTypesByInstallationFileType method.  

.PARAMETER Default
    Set command line as default. Only command line with type different from "Custom" can be set as default. 

.PARAMETER CommandLine
    Command line itself. 

.PARAMETER SuccessCodes
    Comma separated list of success codes. 

.PARAMETER ErrorCodes
    Comma separated list of error codes. 

.EXAMPLE 
    Create a new command line named "Install Orca 3.0" 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
SoftwareCommandLineDetails details = managementLib.CreateCommandLine("Install Orca 3.0", "This command line installs Orca 3.0",
    Guid.Empty, guidSoftwareComponent,
    "MSI Software Installation File", "Custom",
    true, "msiexec -i Orca30.msi",
    "0", "1,2,3" );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
set cmdlineDetails = managementLib.CreateCommandLine("Install Orca 3.0", "This command line installs Orca 3.0", _
    "{00000000-0000-0000-0000-000000000000}", "{D321F91A-50FF-4832-930D-F0849ED75605}", _
    "MSI Software Installation File", "Custom", _
    true, "msiexec -i Orca30.msi", _
    "0", "1,2,3" )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set CMDLINE_NAME=Install Orca 3.0
set CMDLINE_DESC=This command line installs Orca 3.0
set PACKAGE_GUID={00000000-0000-0000-0000-000000000000}
set SOFTWARE_GUID={D321F91A-50FF-4832-930D-F0849ED75605}
set SIF_TYPE=MSI Software Installation File
set CMDLINE_TYPE=Custom
set IS_DEFAULT=true
set COMMAND_LINE=msiexec -i Orca30.msi
set SUCCESS_CODES="0"
set ERROR_CODES="1,2,3"
%SMF% cmd:CreateCommandLine "Name:%CMDLINE_NAME%" "Description:%CMDLINE_DESC%" "SoftwarePackageGuid:%PACKAGE_GUID%" "SoftwareComponentGuid:%SOFTWARE_GUID%" "InstallationFileType:%SIF_TYPE%" "CommandType:%CMDLINE_TYPE%" "Default:%IS_DEFAULT%" "CommandLine:%COMMAND_LINE%" "SuccessCodes:%SUCCESS_CODES%" "ErrorCodes:%ERROR_CODES%"
echo Created Command Line
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[guid]$SoftwarePackageGuid,
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFileType,
			[Parameter(Mandatory=$true)]
			[string]$CommandType,
			[Parameter(Mandatory=$true)]
			[bool]$Default,
			[Parameter(Mandatory=$true)]
			[string]$CommandLine,
			[Parameter(Mandatory=$true)]
			[string]$SuccessCodes,
			[Parameter(Mandatory=$true)]
			[string]$ErrorCodes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			SoftwarePackageGuid = $SoftwarePackageGuid
 			SoftwareComponentGuid = $SoftwareComponentGuid
 			InstallationFileType = $InstallationFileType
 			CommandType = $CommandType
 			Default = $Default
 			CommandLine = $CommandLine
 			SuccessCodes = $SuccessCodes
 			ErrorCodes = $ErrorCodes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/CreateCommandLine"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeleteCommandLine {

<#
.SYNOPSIS
    Delete command line. The method checks whether the command line is used by other software release and/or MD policy and will return the appropriate errors. 

.PARAMETER CommandLineGuid
    Guid of SoftwareCommandLine resource object 

.EXAMPLE 
    Create a new command line named "Install Orca 3.0" 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
bool bResult = managementLib.DeleteCommandLine( guidCommandLine );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
bResult = managementLib.DeleteCommandLine( cmdlineDetails.Guid )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set CMDLINE_GUID={D321F91A-50FF-4832-930D-F0849ED75605}
%SMF% cmd:DeleteCommandLine "CommandLineGuid:%CMDLINE_GUID%"
echo Command Line deleted
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			CommandLineGuid = $CommandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/DeleteCommandLine"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetCommandLine {

<#
.SYNOPSIS
    Method that returns an existing software command line resource. 

.PARAMETER commandLineGuid
    The GUID of the existing software command line resource. 

.EXAMPLE 
    Get software command line with GUID='00cf18d1-95f5-4772-b41f-f6629eb13d32' 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
SoftwareCommandLineDetails cmdDetails = managementLib.GetCommandLine( new Guid("00cf18d1-95f5-4772-b41f-f6629eb13d32") );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
set cmdDetails = managementLib.GetPackage( "{00cf18d1-95f5-4772-b41f-f6629eb13d32}" )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set COMMANDLINE_GUID={00cf18d1-95f5-4772-b41f-f6629eb13d32}
%SMF% cmd:GetCommandLine "commandLineGuid:%COMMANDLINE_GUID%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			commandLineGuid = $commandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/GetCommandLine"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetCommandLineProperty {

<#
.SYNOPSIS
    Set software command line property. 

.PARAMETER CommandLineGuid
    GUID of software command line 

.PARAMETER PropertyName
    name of property. Valid properties are: Name, Description, CommandLine, CommandLineType, IsDefault, SuccessCodes, FailureCodes, PackageGuid  

.PARAMETER PropertyValue
    The property value is passed into the method as a string, appropriate conversion will then be performed on that string. The value CommandLineType should be a Guid, IsDefault is a bool value so it should be "true" or "false", and PackageGuid should be a Guid.  

.EXAMPLE 
    set failure codes for command line 
CopyC#
SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
bool bResult = managementLib.SetCommandLineProperty(cmdLineGuid, "FailureCodes", "1,2,3,4,5");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.SetCommandLineProperty(cmdLineGuid, "FailureCodes", "1,2,3,4,5")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set CMDLINE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
%SMF% cmd:SetCommandLineProperty "CommandLineGuid:%CMDLINE_GUID%" "PropertyName:FailureCodes" "PropertyValue:1,2,3,4,5"
echo Failure Codes changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$PropertyValue,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			CommandLineGuid = $CommandLineGuid
 			PropertyName = $PropertyName
 			PropertyValue = $PropertyValue

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareCommandLineManagementService.asmx/SetCommandLineProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddAssociationToSoftwareComponent {

<#
.SYNOPSIS
    Associate an NS object with a software component. 

.PARAMETER ComponentGuid
    GUID of the software component 

.PARAMETER AssociatedResourceGuid
    GUID of the resource object that is to be associated with the Software Component 

.PARAMETER AssociationType
    Type of association. The following associations are allowed: CONTAINS, DEPENDSON, SUPERCEDES, UPDATES, CONFLICTS, APPLIES_TO_OS, APPLIES_TO_PLATFORM  

.EXAMPLE 
    Add new "Updates" association to Orca 4.5 software update 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddAssociationToSoftwareComponent(updateOrca45.Guid, releaseOrca30.Guid, "Updates");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddAssociationToSoftwareComponent(updateOrca45.Guid, releaseOrca30.Guid, "Updates")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set ORCA45_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA30_GUID={8F0592BB-566F-4a5a-A3E6-4B35B5E6BBD6}
%SMF% cmd:AddAssociationToSoftwareComponent "ComponentGuid:%ORCA45_GUID%" "AssociatedResourceGuid:%ORCA30_GUID%" "AssociationType:Updates"
echo Association added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$AssociatedResourceGuid,
			[Parameter(Mandatory=$true)]
			[string]$AssociationType,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			AssociatedResourceGuid = $AssociatedResourceGuid
 			AssociationType = $AssociationType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddAssociationToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddCommandLineToSoftwareComponent {

<#
.SYNOPSIS
    associate software command line with software component 

.PARAMETER ComponentGuid
    Guid of existing software component resource 

.PARAMETER CommandLineGuid
    Guid of existing software command line resource 

.PARAMETER SetAsDefault
    set this command line as default commind line for specified software component resource 

.EXAMPLE 
    Add new command line to Orca software release 
CopyC#
SoftwareCommandLineManagementLib cmdlLib = new SoftwareCommandLineManagementLib();
SoftwareCommandLineDetails cmdLine = cmdlLib.CreateCommandLine("Install Orca 4.5", "This command line installs Orca 4.5",
    Guid.Empty, releaseOrca.Guid,
    "MSI Software Installation File", "Custom",
    true, "msiexec -i Orca45.msi",
    "0", "1,2,3" );
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddCommandLineToSoftwareComponent(releaseOrca.Guid, cmdLine.Guid, true);
CopyVBScript
set cmdlLib = CreateObject("Altiris.ASDK.SMF.SoftwareCommandLineManagement")
set cmdLine = cmdlLib.CreateCommandLine("Install Orca 4.5", "This command line installs Orca 4.5", _
    "{00000000-0000-0000-0000-000000000000}", "{D321F91A-50FF-4832-930D-F0849ED75605}", _
    "MSI Software Installation File", "Custom", _
    true, "msiexec -i Orca45.msi", _
    "0", "1,2,3" )
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddCommandLineToSoftwareComponent(releaseOrca.Guid, cmdLine.Guid, True)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:AddCommandLineToSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "CommandLineGuid:%ORCA_4_5_GUID%" "SetAsDefault:true"
echo Command line added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
			[Parameter(Mandatory=$true)]
			[bool]$SetAsDefault,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			CommandLineGuid = $CommandLineGuid
 			SetAsDefault = $SetAsDefault

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddCommandLineToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddPackageToSoftwareComponent {

<#
.SYNOPSIS
    associate software package with software component 

.PARAMETER ComponentGuid
    Guid of existing software component resource. 

.PARAMETER PackageGuid
    Guid of existing software package resource. 

.EXAMPLE 
    Add Orca 4.5 package to Orca software release 
CopyC#
SoftwarePackageManagementLib packageLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails detailsOrca45 = packageLib.CreatePackage("Orca 4.5 package", "This package contains Orca 4.5",
    Guid.Empty, 2,
    @"c:\packages\Orca4.5", null,
    "Orca45.msi", true
    );
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddPackageToSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid);
CopyVBScript
set packageLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set detailsOrca45 = packageLib.CreatePackage("Orca 4.5 package", "This package contains Orca 4.5", _
    "{00000000-0000-0000-0000-000000000000}", 2, _
    "c:\packages\Orca4.5", null, _
    "Orca45.msi", true)
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddPackageToSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:AddPackageToSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "PackageGuid:%ORCA_4_5_GUID%"
echo Package added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$PackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddPackageToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddRulesToSoftwareComponent {

<#
.SYNOPSIS
    Add Applicability and Detection rules to software component 

.PARAMETER ComponentGuid
    Guid of existing software component resource. 

.PARAMETER ApplicabilityRuleGuid
    Applicability rule guid (optional). The empty guid {00000000-0000-0000-0000-000000000000} can be specified. 

.PARAMETER DetectionRuleGuid
    Detection rule guid (optional). The empty guid {00000000-0000-0000-0000-000000000000} can be specified. 

.EXAMPLE 
    Add new detection rule 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.AddRulesToSoftwareComponent(releaseOrca.Guid, Guid.Empty, ruleDetection.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.AddRulesToSoftwareComponent(releaseOrca.Guid, "{00000000-0000-0000-0000-000000000000}", ruleDetection.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set APP_RULEGUID={ecd6267c-0b86-4cd3-8eae-82e8502ff2a3}
set RULE_DETECTION={8F0592BB-566F-4a5a-A3E6-4B35B5E6BBD6}
%SMF% cmd:AddRulesToSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "ApplicabilityRuleGuid:%APP_RULEGUID%" "DetectionRuleGuid:%RULE_DETECTION%"
echo Rule added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$ApplicabilityRuleGuid,
			[Parameter(Mandatory=$true)]
			[guid]$DetectionRuleGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			ApplicabilityRuleGuid = $ApplicabilityRuleGuid
 			DetectionRuleGuid = $DetectionRuleGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/AddRulesToSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateServicePack {

<#
.SYNOPSIS
    Create new software component. 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description 

.PARAMETER Version
    Version 

.PARAMETER Company
    Name of company or Guid of Company resource 

.PARAMETER Product
    Name of product or Guid of Product resource 

.PARAMETER ReleaseDate
    Release date of service pack 

.PARAMETER InformationUrl
    Information URL 

.EXAMPLE 
    Create a new service pack "Install Orca 3.0" 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.CreateServicePack("Test Product SP1", "This component contains Test Product SP1",
    "1.1.0", "Test Company", "Test Product",
    "11/08/2011", "http://www.symantec.com/TestProduct/SP1");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.CreateServicePack("Test Product SP1", "This component contains Test Product SP1", _
    "1.1.0", "Test Company", "Test Product", _
    "11/08/2011", "http://www.symantec.com/TestProduct/SP1")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set SP_NAME=Test Product SP1
set SP_DESC=This component contains Test Product SP1
set SP_VER=1.1.0
set COMPANY_NAME=Test Company
set PRODUCT_NAME=Test Product
set INFO_URL=http://www.symantec.com/TestProduct/SP1
%SMF% cmd:CreateServicePack "Name:%SP_NAME%" "Description:%SP_DESC%" "Version:%SP_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%" "ReleaseDate:11/08/2011" "InformationUrl:%INFO_URL%"
echo Service Pack Created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[string]$ReleaseDate,
			[Parameter(Mandatory=$true)]
			[string]$InformationUrl,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			ReleaseDate = $ReleaseDate
 			InformationUrl = $InformationUrl

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/CreateServicePack"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateSoftwareRelease {

<#
.SYNOPSIS
    Create new software release. 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description 

.PARAMETER Version
    version 

.PARAMETER Company
    Name of company or Guid of Company resource 

.PARAMETER Product
    Name of product or Guid of Product resource 

.EXAMPLE 
    Create a new release "Test Product" 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.CreateSoftwareRelease("Test Product", "This component contains Test Product",
    "1.0.0", "Test Company", "Test Product");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.CreateSoftwareRelease("Test Product", "This component contains Test Product", _
    "1.0.0", "Test Company", "Test Product")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set SP_NAME=Test Product Release
set SP_DESC=This component contains Test Product
set SP_VER=1.0.0
set COMPANY_NAME=Test Company
set PRODUCT_NAME=Test Product
%SMF% cmd:CreateSoftwareRelease "Name:%SP_NAME%" "Description:%SP_DESC%" "Version:%SP_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%"
echo Software Releasse Created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/CreateSoftwareRelease"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateSoftwareUpdate {

<#
.SYNOPSIS
    Create new software update. 

.PARAMETER Name
    Name 

.PARAMETER Description
    Description 

.PARAMETER Version
    version 

.PARAMETER Company
    Name of company or Guid of Company resource 

.PARAMETER Product
    Name of product or Guid of Product resource 

.PARAMETER SoftwareToUpdate
    Name of product or Guid of Product resource 

.EXAMPLE 
    Create a new software update "Test Product Update" 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.CreateSoftwareUpdate("Test Product Update", "This component contains update for Test Product",
    "1.1.1", "Test Company", "Test Product", "Test Product Release");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.CreateSoftwareUpdate("Test Product Update", "This component contains update for Test Product", _
    "1.1.1", "Test Company", "Test Product", "Test Product Release")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set SP_NAME=Test Product Update
set SP_DESC=This component contains update for Test Product
set SP_VER=1.1.1
set COMPANY_NAME=Test Company
set PRODUCT_NAME=Test Product
set RELEASE_NAME=Test Product Release
%SMF% cmd:CreateSoftwareUpdate "Name:%SP_NAME%" "Description:%SP_DESC%" "Version:%SP_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%" "SoftwareToUpdate:%RELEASE_NAME%"
echo Software Update Created
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[string]$SoftwareToUpdate,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			SoftwareToUpdate = $SoftwareToUpdate

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/CreateSoftwareUpdate"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DetailedExport {

<#
.SYNOPSIS
    Perform detailed export of software component. 

.PARAMETER ComponentGuid
    GUID of software component. 

.PARAMETER DestinationFileName
    Fully qualified path and file name to the destination file. 

.PARAMETER Options
    Comma separated list of options. The following options are available: ALL, ALL_EXCLUDING_SECURITY, ProductAndManufacturer, PackageInfo, FileInventory, DetectionRule, IncludeDependencies, IncludeDependentSoftware, IncludeUpdatesAndSPs, ExcludeSecurity, ExcludeDependentSoftwareOnly, ExcludeDependenciesOnly, IncludeApplicabilityRule, IncludeSupersededComponents, IncludeConflictWithComponents  

.EXAMPLE 
    Export Orca 3.0 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.DetailedExport(releaseOrca.Guid, @"c:\exports\orca.xml", "ALL");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.DetailedExport(releaseOrca.Guid, "c:\exports\orca.xml", "ALL")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={63208F95-A5B2-4feb-BBB9-4DDF8D7055C3}
set FILE_LOCATION=c:\exports\orca.xml
%SMF% cmd:DetailedExport "ComponentGuid:%RELEASE_GUID%" "DestinationFileName:%FILE_LOCATION%" "Options:ALL"
echo Software exported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$DestinationFileName,
			[Parameter(Mandatory=$true)]
			[string]$Options,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			DestinationFileName = $DestinationFileName
 			Options = $Options

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/DetailedExport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DetailedImport {

<#
.SYNOPSIS
    Perform a detailed import of a software component 

.PARAMETER SourceFile
    Fully qualified path to source file. The source file can be created by a DetailExport through the NS Console or SMF ASDK API 

.EXAMPLE 
    Import Orca 3.0 from xml 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.DetailedImport(@"c:\exports\orca.xml");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.DetailedImport("c:\exports\orca.xml")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set FILE_LOCATION=c:\exports\orca.xml
%SMF% cmd:DetailedImport "SourceFile:%FILE_LOCATION%"
echo Software imported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$SourceFile,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SourceFile = $SourceFile

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/DetailedImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAssociatedResources {

<#
.SYNOPSIS
    return list of resources association with software component 

.PARAMETER ComponentGuid
    guid of existing software component 

.EXAMPLE 
    Get resources associated with a specific component. 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
string resourceString = managementLib.GetAssociatedResources(componentGuid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
resourceString = managementLib.GetAssociatedResources(componentGuid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set COMPONENT_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
%SMF% cmd:GetAssociatedResources "ComponentGuid:%COMPONENT_GUID%"
echo Resource association returned
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/GetAssociatedResources"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareComponent {

<#
.SYNOPSIS
    Method that returns an existing SoftwareComponent or its sub-classes SoftwareRelease and SoftwareUpdate. 

.PARAMETER componentGuid
    The GUID of the existing software component resource. 

.EXAMPLE 
    Get software component with GUID='e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6' 
CopyC#
SoftwareComponentManagementLib mangementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails componentDetails = mangementLib.GetSoftwareComponent( new Guid("e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6") );
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set componentDetails = mangementLib.GetSoftwareComponent( "{e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6}" )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set COMPONENT_GUID={e44b69a3-3e1f-4a93-ba20-a69b6a4d20f6}
%SMF% cmd:GetSoftwareComponent "componentGuid:%COMPONENT_GUID%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$componentGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			componentGuid = $componentGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/GetSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ImportSoftwareRelease {

<#
.SYNOPSIS
    Import new software release based on specified binaries. Related command line, package, inventory rule objects will be created automatically. 

.PARAMETER Name
    Name - if empty will be extracted from package 

.PARAMETER Description
    Description - if empty will be extracted from package 

.PARAMETER SourceType
    Type of package source. Following types are available: 1 - UNC, 2 - Local directory on notification server, 4 - URL (in that case package location should point on URL, and package folder should point on directroy there package located), 5 - Library  

.PARAMETER PackageLocation
    Package location (URL, UNC, local path depends on the type of package source (required)) 

.PARAMETER PackageFolder
    Package source folder if URL type of package source was specified, if different from URL package source was specified you can specify empty string in this parameter 

.PARAMETER InstallationFile
    Installation file, if empty will be selected by internal logic 

.PARAMETER Version
    Version - if empty will be extracted from package 

.PARAMETER Company
    Company name or guid of Company resource - if empty will be extracted from package 

.PARAMETER Product
    Product name or guid of Product resource - if empty will be extracted from package 

.PARAMETER MergeAction
    Merging action the case if SoftwareRelease with same keys is found. The following actions are available: 0 - create new software release 1 - merge with specified (in ReleaseMergeTo parameter) software release  

.PARAMETER ReleaseMergeTo
    Guid of existing software release, if specified, a new software release will merge with the existing software release 

.EXAMPLE 
    Import Orca 3.0 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails details = managementLib.ImportSoftwareRelease("Orca 3.0", "Software releae resource for Orca 3.0",
    2, @"c:\packages\orca", null,
    "Orca30.msi", "3.0.1234",
    "Microsoft", "Orca", 0, Guid.Empty);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set details = managementLib.ImportSoftwareRelease("Orca 3.0", "Software releae resource for Orca 3.0", _
    2, @"c:\packages\orca", null, _
    "Orca30.msi", "3.0.1234", _
    "Microsoft", "Orca", 0, Guid.Empty)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_NAME=Orca 3.0
set RELEASE_DESC=Software release resource for Orca 3.0
set PKG_LOCATION=c:\packages\orca
set PKG_FOLDER=""
set INSTALL_FILE=Orca30.msi
set RELEASE_VER=3.0.1234
set COMPANY_NAME=Microsoft
set PRODUCT_NAME=Orca
set EMPTY_GUID={00000000-0000-0000-0000-000000000000}
%SMF% cmd:ImportSoftwareRelease "Name:%RELEASE_NAME%" "Description:%RELEASE_DESC%" "SourceType:2" "PackageLocation:%PKG_LOCATION%" "PackageFolder:%PKG_FOLDER%" "InstallationFile:%INSTALL_FILE%" "Version:%RELEASE_VER%" "Company:%COMPANY_NAME%" "Product:%PRODUCT_NAME%" "MergeAction:0" "ReleaseMergeTo:%EMPTY_GUID%"
echo Software Release imported
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[int]$SourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFile,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[string]$Company,
			[Parameter(Mandatory=$true)]
			[string]$Product,
			[Parameter(Mandatory=$true)]
			[int]$MergeAction,
			[Parameter(Mandatory=$true)]
			[guid]$ReleaseMergeTo,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			SourceType = $SourceType
 			PackageLocation = $PackageLocation
 			PackageFolder = $PackageFolder
 			InstallationFile = $InstallationFile
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			MergeAction = $MergeAction
 			ReleaseMergeTo = $ReleaseMergeTo

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/ImportSoftwareRelease"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveAssociationFromSoftwareComponent {

<#
.SYNOPSIS
    Remove an association between a resource and a software component. 

.PARAMETER ComponentGuid
    GUID of the software component 

.PARAMETER AssociatedResourceGuid
    GUID of the associated resource 

.EXAMPLE 
    Remove detection rule 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemoveAssociationFromSoftwareComponent(updateOrca45.Guid, orca30.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemoveAssociationFromSoftwareComponent(updateOrca45.Guid, orca30.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set UPDATE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set RELEASE_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemoveAssociationFromSoftwareComponent "ComponentGuid:%UPDATE_GUID%" "AssociatedResourceGuid:%RELEASE_GUID%"
echo Association removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$AssociatedResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			AssociatedResourceGuid = $AssociatedResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemoveAssociationFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveCommandLineFromSoftwareComponent {

<#
.SYNOPSIS
    Remove a command line from a software component. This method checks if the command line is used by any other MD policies. 

.PARAMETER ComponentGuid
    GUID of a software component 

.PARAMETER CommandLineGuid
    GUID of a software command line 

.EXAMPLE 
    Remove command line from Orca software release 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemoveCommandLineFromSoftwareComponent(releaseOrca.Guid, cmdLineOrca45.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemoveCommandLineFromSoftwareComponent(releaseOrca.Guid, cmdLineOrca45.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemoveCommandLineFromSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "CommandLineGuid:%ORCA_4_5_GUID%"
echo Command line removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$CommandLineGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			CommandLineGuid = $CommandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemoveCommandLineFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemovePackageFromSoftwareComponent {

<#
.SYNOPSIS
    Remove package from software component. Method checks if package is used by MD policy. 

.PARAMETER ComponentGuid
    GUID of a software component 

.PARAMETER PackageGuid
    GUID of a software package 

.EXAMPLE 
    Remove Orca 4.5 package from Orca release 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemovePackageFromSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemovePackageFromSoftwareComponent(releaseOrca.Guid, detailsOrca45.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set ORCA_4_5_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemovePackageFromSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "PackageGuid:%ORCA_4_5_GUID%"
echo Package removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemovePackageFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveRulesFromSoftwareComponent {

<#
.SYNOPSIS
    Remove an inventory rule from a software component. This method checks whether the software component is used by other MD policies. 

.PARAMETER ComponentGuid
    GUID of software component 

.PARAMETER RuleGuid
    GUID of inventory rule 

.EXAMPLE 
    Remove detection rule 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.RemoveRulesFromSoftwareComponent(releaseOrca.Guid, detectionRule.Guid);
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.RemoveRulesFromSoftwareComponent(releaseOrca.Guid, detectionRule.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set DETECTION_RULE_GUID={02619187-CCD4-489a-BC08-A16C0E8CFF0E}
%SMF% cmd:RemoveRulesFromSoftwareComponent "ComponentGuid:%RELEASE_GUID%" "RuleGuid:%DETECTION_RULE_GUID%"
echo Detection rule removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[guid]$RuleGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			RuleGuid = $RuleGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/RemoveRulesFromSoftwareComponent"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ResolveDuplicatedSoftware {

<#
.SYNOPSIS
    Resolve duplicate software resources. This method merges two duplicate software resources into single one and deletes the duplicate software component. 

.PARAMETER MergeTo
    GUID of duplicated resource to be merged. This software component will be deleted after merging complete. 

.PARAMETER ToBeMergeTo
    Guid of Software resource to be merged to. 

.PARAMETER Name
    Name of merged software component. If not specified then the name of ToBeMergeTo resource will be used. 

.PARAMETER Description
    Description of merged software component. If not specified then description of ToBeMergeTo resource will be used. 

.PARAMETER Version
    Version of merged software component. If not specifieid then version of ToBeMergeTo resource will be used. 

.PARAMETER Company
    Company associated with resulting software component. If not specified company used by ToBeMergeTo resource will be used. 

.PARAMETER Product
    Product associated with resulting software component. If not specified product used by ToBeMergeTo resource will be used. 

.PARAMETER Packages
    Packages that will be associated with resulting software component. Following options are possible: Comma separated list of package guids. Each guid should be used by ToMerge or ToBeMerge to resource. ALL - packages from both software components will be assigned on resulting software component. MERGE_TO - packages from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - packages from ToBeMergeTo software component will be associated with resulting software component.  

.PARAMETER CmdLines
    Command lines that will be associated with resulting software companent. Following options are possible: Comma separated list of command line guids. Each guid should be used by ToMerge or ToBeMerge to resource. ALL - command lines from both software components will be assigned on resulting software component. MERGE_TO - command lines from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - command lines from ToBeMergeTo software component will be associated with resulting software component.  

.PARAMETER ApplicabilityRule
    Applicability rule that will be assigned on resulting software component. Following options are possible: MERGE_TO - rule used by MergeTo resource will be used for resulting software component TO_MERGE_TO - rule used by ToBeMergeTo resource will be used for resulting software component  

.PARAMETER DetectionRule
    Detection rule that will be assigned on resulting software component. Following options are possible: MERGE_TO - rule used by MergeTo resource will be used for resulting software component TO_MERGE_TO - rule used by ToBeMergeTo resource will be used for resulting software component  

.PARAMETER Associations
    List of associations that will be assigned on resulting software component. Following options are available: ALL - associations from both software components will be assigned on resulting software component. MERGE_TO - associations from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - associations from ToBeMergeTo software component will be associated with resulting software component. XML with list of associations that will be assigned on resulting software component. The format of XML is same as returned by by GetAssociatedResources call. Usually you need to call GetAssociatedResources, remove some "association" nodes from returned XML and pass outer xml string into this parameter.  

.PARAMETER Files
    List of file resources that will be assigned on resulting software component. Following options are possible: ALL - associations from both software components will be assigned on resulting software component. MERGE_TO - associations from MergeTo software component will be associated with resulting software component. TO_MERGE_TO - associations from ToBeMergeTo software component will be associated with resulting software component. Comma separated list of guids of File resources which are associated with software component. The list can be obtained from Files field of SoftwareComponentDetails structure. 

.EXAMPLE 
    Merge duplicated resources into one single resoure. This sample demonstrates merging of two duplicate service packs. 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
SoftwareComponentDetails mergedResourceDetails = managementLib.ResolveDuplicatedSoftware(
    servicePack1Details.Guid, servicePack2Details.Guid,
    releaseName, releaseDescription, releaseVersion,
    Guid.Empty, Guid.Empty,
    "ALL", "ALL", "TO_MERGE_TO", "TO_MERGE_TO",
    "ALL",  "ALL");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
set mergedResourceDetails = managementLib.ResolveDuplicatedSoftware( _
    servicePack1Details.Guid, servicePack2Details.Guid, _
    releaseName, releaseDescription, releaseVersion, _
    emptyGuid, emptyGuid, _
    "ALL", "ALL", "TO_MERGE_TO", "TO_MERGE_TO", _
    "ALL",  "ALL")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set EMPTY_GUID={00000000-0000-0000-0000-000000000000}
set SP1_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
set SP2_GUID={1c878735-6f3c-420b-ac8f-47772298e805}
set REL_NAME=Updated Service Pack
set REL_DESC=This is an updated service pack.
set REL_VERS=5.1.45
%SMF% cmd:ResolveDuplicatedSoftware "MergeTo:%SP1_GUID%" "ToBeMergeTo:%SP2_GUID%" "Name:%REL_NAME%" "Description:%REL_DESC%" "Version:%REL_VERS%" "Company:%EMPTY_GUID%" "Product:%EMPTY_GUID%" "Packages:ALL" "CmdLines:ALL" "ApplicabilityRule:TO_MERGE_TO" "DetectionRule:TO_MERGE_TO" "Associations:ALL" "Files:ALL"
echo Duplicate resources have been merged.
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$MergeTo,
			[Parameter(Mandatory=$true)]
			[guid]$ToBeMergeTo,
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$Version,
			[Parameter(Mandatory=$true)]
			[guid]$Company,
			[Parameter(Mandatory=$true)]
			[guid]$Product,
			[Parameter(Mandatory=$true)]
			[string]$Packages,
			[Parameter(Mandatory=$true)]
			[string]$CmdLines,
			[Parameter(Mandatory=$true)]
			[string]$ApplicabilityRule,
			[Parameter(Mandatory=$true)]
			[string]$DetectionRule,
			[Parameter(Mandatory=$true)]
			[string]$Associations,
			[Parameter(Mandatory=$true)]
			[string]$Files,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			MergeTo = $MergeTo
 			ToBeMergeTo = $ToBeMergeTo
 			Name = $Name
 			Description = $Description
 			Version = $Version
 			Company = $Company
 			Product = $Product
 			Packages = $Packages
 			CmdLines = $CmdLines
 			ApplicabilityRule = $ApplicabilityRule
 			DetectionRule = $DetectionRule
 			Associations = $Associations
 			Files = $Files

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/ResolveDuplicatedSoftware"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwareComponentProperty {

<#
.SYNOPSIS
    Set any software component property. 

.PARAMETER ComponentGuid
    GUID of the software component 

.PARAMETER PropertyName
    name of property. Valid properties are: Name, Description, Version, Company, Product, URL, ReleaseDate  

.PARAMETER PropertyValue
    The PropertyValue is passed as a string, the appropriate conversion will be performed 

.EXAMPLE 
    Change name of Orca 4.5 release 
CopyC#
SoftwareComponentManagementLib managementLib = new SoftwareComponentManagementLib();
bool bResult = managementLib.SetSoftwareComponentProperty(updateOrca45.Guid, "Name", "Orca 4.5 - New");
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
bResult = managementLib.SetSoftwareComponentProperty(updateOrca45.Guid, "Name", "Orca 4.5 - New")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set RELEASE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
%SMF% cmd:SetSoftwareComponentProperty "ComponentGuid:%RELEASE_GUID%" "PropertyName:Name" "PropertyValue:Orca 4.5 - New"
echo Name changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$ComponentGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$PropertyValue,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			ComponentGuid = $ComponentGuid
 			PropertyName = $PropertyName
 			PropertyValue = $PropertyValue

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareComponentManagementService.asmx/SetSoftwareComponentProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddFile {

<#
.SYNOPSIS
    Add file to software package

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER File
    File or folder to be added to package 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Add LicenseAgreement.txt to Orca package 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.AddFile(detailsOrca.Guid, @"c:\packages\LicenseAgreement.txt", "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.AddFile(detailsOrca.Guid, "c:\packages\LicenseAgreement.txt", "false")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set FILE_LOCATION=c:\packages\LicenseAgreement.txt
%SMF% cmd:AddFile "PackageGuid:%PACKAGE_GUID%" "File:%FILE_LOCATION%" "IgnoreAttributes:False"
echo Package type changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$File,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			File = $File
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/AddFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreatePackage {

<#
.SYNOPSIS
    This method creates new SoftwarePackageResource in Notification Server 

.PARAMETER Name
    Package name 

.PARAMETER Description
    Package description (empty string can be specified) 

.PARAMETER SoftwareResourceGuid
    GUID of software resource that will be associated with package. Empty guid (00000000-0000-0000-0000-000000000000) can be specified 

.PARAMETER PackageSourceType
    Type of package source. Available values are: 1-UNC, 2-LOCAL, 4-URL, 5-SOFTWARE LIBRARY  

.PARAMETER PackageLocation
    Package location (URL, UNC, local path depends on the type of package source). 

.PARAMETER PackageFolder
    Package source folder if URL type of package source is specified. If other type of package source is specified this parameter ignored and should be empty. 

.PARAMETER InstallationFile
    File used to generate command line. Can be empty. 

.PARAMETER AutoGenerateCommandLines
    Auto generate command lines for installation file. 

.EXAMPLE 
    Create a new package named "Orca 3.0 package" 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails detailsOrca = mangementLib.CreatePackage("Orca 3.0 package", "This package contains Orca 3.0",
    Guid.Empty, 2,
    @"c:\packages\Orca", null,
    "Orca30.msi", "true"
    );
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set detailsOrca = mangementLib.CreatePackage("Orca 3.0 package", "This package contains Orca 3.0",
    "{00000000-0000-0000-0000-000000000000}", 2
    "c:\packages\Orca", null,
    "Orca30.msi", "true"
    )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_NAME=Orca 3.0 package
set PACKAGE_DESC=This package contains Orca 3.0
set RELEASE_GUID={00000000-0000-0000-0000-000000000000}
set SOURCE_TYPE=2
set LOCATION=c:\packages\Orca
set INSTALL_FILE=msiexec -i Orca30.msi
%SMF% cmd:CreatePackage "Name:%PACKAGE_NAME%" "Description:%PACKAGE_DESC%" "SoftwareResourceGuid:%RELEASE_GUID%" "PackageSourceType:%SOURCE_TYPE%" "PackageLocation:%LOCATION%" "InstallationFile:%INSTALL_FILE%" "AutoGenerateCommandLines:True"
echo Created Package
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[int]$PackageSourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[string]$InstallationFile,
			[Parameter(Mandatory=$true)]
			[bool]$AutoGenerateCommandLines,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			SoftwareResourceGuid = $SoftwareResourceGuid
 			PackageSourceType = $PackageSourceType
 			PackageLocation = $PackageLocation
 			PackageFolder = $PackageFolder
 			InstallationFile = $InstallationFile
 			AutoGenerateCommandLines = $AutoGenerateCommandLines

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/CreatePackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function DeletePackage {

<#
.SYNOPSIS
    Delete package. The method checks if package used by any software release and/or policy and returns appropriate errors. 

.PARAMETER PackageGuid
    guid of existing package 

.EXAMPLE 
    Delete Orca 3.0 pacakge 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.DeletePackage(detailsOrca.Guid);
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.DeletePackage(detailsOrca.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
%SMF% cmd:DeletePackage "PackageGuid:%PACKAGE_GUID%"
echo Package deleted
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
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


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/DeletePackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetPackage {

<#
.SYNOPSIS
    Method that returns an existing software package resource. 

.PARAMETER packageGuid
    The GUID of the existing software package resource. 

.EXAMPLE 
    Get software package with GUID='a0d655b9-809a-4c86-ba9b-c1898fc4f59e' 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails componentDetails = mangementLib.GetPackage( new Guid("a0d655b9-809a-4c86-ba9b-c1898fc4f59e") );
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set packageDetails = mangementLib.GetPackage( "a0d655b9-809a-4c86-ba9b-c1898fc4f59e" )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID="a0d655b9-809a-4c86-ba9b-c1898fc4f59e"
%SMF% cmd:GetPackage "Guid:%PACKAGE_GUID%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$packageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			packageGuid = $packageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/GetPackage"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveFile {

<#
.SYNOPSIS
    Remove file from software package

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER File
    File or folder to be added to package 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Remove LicenseAgreement.txt from Orca 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.RemoveFile(detailsOrca.Guid, @"LicenseAgreement.txt", "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.RemoveFile(detailsOrca.Guid, "LicenseAgreement.txt", "false")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set FILE_LOCATION=LicenseAgreement.txt
%SMF% cmd:RemoveFile "PackageGuid:%PACKAGE_GUID%" "File:%FILE_LOCATION%" "IgnoreAttributes:False"
echo File added
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$File,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			File = $File
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/RemoveFile"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPackageProperty {

<#
.SYNOPSIS
    Set any package property

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER PropertyName
    Propety name. Valid names are: Name, Description, InstallationFile  

.PARAMETER Value
    Propety value, value will be automatically converted from text representation into appropriate type (int, guid, enum, etc...) 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Change package name to "Test Package" 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.SetPackageProperty(detailsOrca.Guid, "Name", "Test Package", "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.SetPackageProperty(detailsOrca.Guid, "Name", "Test Package", "false")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set PACKAGE_NAME=Test Package
%SMF% cmd:SetPackageProperty "PackageGuid:%PACKAGE_GUID%" "PropertyName:Name" "Value:%PACKAGE_NAME%" "IgnoreAttributes:False"
echo Package name changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[string]$PropertyName,
			[Parameter(Mandatory=$true)]
			[string]$Value,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			PropertyName = $PropertyName
 			Value = $Value
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/SetPackageProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPackageServerSettings {

<#
.SYNOPSIS
    Specify package server properties for package

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER AssignmentType
    Type of package server assignment. Available values are: 0-All, 1-Individual, 2-Site  

.PARAMETER AutomaticSiteAssignment
    Automatically assign package to sites as required. Not valid with All and Individual assignment types 

.PARAMETER PackageServers
    Comma separated list of package servers or sites GUIDs. 

.PARAMETER PackageServerLocation
    Location where package files will be downloaded to on Package Servers 

.EXAMPLE 
    Assign package to All site servers 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.SetPackageServerSettings(detailsOrca.Guid, 0, "false", null, null);
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
set details = mangementLib.SetPackageServerSettings(detailsOrca.Guid, 0, "false", null, null)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
%SMF% cmd:SetPackageServerSettings "PackageGuid:%PACKAGE_GUID%" "AssignmentType:0" "AutomaticSiteAssignment:False"
echo Site Server settings changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[int]$AssignmentType,
			[Parameter(Mandatory=$true)]
			[string]$AutomaticSiteAssignment,
			[Parameter(Mandatory=$true)]
			[string]$PackageServers,
			[Parameter(Mandatory=$true)]
			[string]$PackageServerLocation,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			AssignmentType = $AssignmentType
 			AutomaticSiteAssignment = $AutomaticSiteAssignment
 			PackageServers = $PackageServers
 			PackageServerLocation = $PackageServerLocation

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/SetPackageServerSettings"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPackageSource {

<#
.SYNOPSIS
    Set any package source type and location

.PARAMETER PackageGuid
    Guid of Software Package 

.PARAMETER PackageSourceType
    Type of package source. Available values are: 1-UNC, 2-LOCAL, 4-URL, 5-LIBRARY  

.PARAMETER PackageLocation
    Package location (URL, UNC, local path depends on the type of package source) 

.PARAMETER PackageFolder
    Package source folder if URL type of package source is specified. If other type of package source is specified this parameter ignored and should be empty. 

.PARAMETER IgnoreAttributes
    ignore any attributes during save 

.EXAMPLE 
    Set package source type to Software Library 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.SetPackageSource(detailsOrca.Guid, 5, @"c:\packages\Orca", null, "false");
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.SetPackageSource(detailsOrca.Guid, 5, "c:\packages\Orca", "", "false")
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
set PACKAGE_LOCATION=c:\packages\Orca
set PACKAGE_FOLDER=
%SMF% cmd:SetPackageSource "PackageGuid:%PACKAGE_GUID%" "PackageSourceType:5" "PackageLocation:%PACKAGE_LOCATION%" "PackageFolder:%PACKAGE_FOLDER%" "IgnoreAttributes:False"
echo Package type changed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$PackageGuid,
			[Parameter(Mandatory=$true)]
			[int]$PackageSourceType,
			[Parameter(Mandatory=$true)]
			[string]$PackageLocation,
			[Parameter(Mandatory=$true)]
			[string]$PackageFolder,
			[Parameter(Mandatory=$true)]
			[bool]$IgnoreAttributes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid
 			PackageSourceType = $PackageSourceType
 			PackageLocation = $PackageLocation
 			PackageFolder = $PackageFolder
 			IgnoreAttributes = $IgnoreAttributes

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/SetPackageSource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateDistributionPoints {

<#
.SYNOPSIS
    Update package distribution points

.PARAMETER PackageGuid
    guid of existing package 

.EXAMPLE 
    Update distribution points for Orca 3.0 pacakge 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
SoftwarePackageDetails details = mangementLib.UpdateDistributionPoints(detailsOrca.Guid);
CopyVBScript
set mangementLib = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
details = mangementLib.UpdateDistributionPoints(detailsOrca.Guid)
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PACKAGE_GUID={228E32AA-1BE4-498c-96D7-49F22C2638A2}
%SMF% cmd:UpdateDistributionPoints "PackageGuid:%PACKAGE_GUID%"
echo File removed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$PackageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			PackageGuid = $PackageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/UpdateDistributionPoints"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ValidateSoftwareLibrary {

<#
.SYNOPSIS
    Validate Software Library. The method validates a software library configuration and an access to UNC

.EXAMPLE 
    Validate Software Library 
CopyC#
SoftwarePackageManagementLib mangementLib = new SoftwarePackageManagementLib();
string status = mangementLib.ValidateSoftwareLibrary();
CopyVBScript
set packageManagement = CreateObject("Altiris.ASDK.SMF.SoftwarePackageManagement")
packageManagement.CreateLocalInstance()
validateRes = packageManagement.ValidateSoftwareLibrary()
Wscript.Echo validateRes

CopyÂ 
set SMF=AltirisASDKSMF.exe
%SMF% cmd:ValidateSoftwareLibrary
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


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwarePackageManagementService.asmx/ValidateSoftwareLibrary"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateSoftwareProduct {

<#
.SYNOPSIS
    Method that creates a SoftwareProductResource. If an existing product that matches the Name and Company values given is found, a SoftwareProductDetails structure will be returned with the properties of the existing product. 'Description' parameter is ignored during finding existing product. 

.PARAMETER Name
    The name of the software product to create/lookup. 

.PARAMETER Description
    A brief statement that describes the software product. 

.PARAMETER CompanyName
    The name of the company that is associated with this software product. 

.EXAMPLE 
    Create software product named TestProduct010 and company named TestCompany101 
CopyC#
SoftwareProductManagementLib managementLib = new SoftwareProductManagementLib();
SoftwareProductDetails productDetails = managementLib.CreateSoftwareProduct( "TestProduct010", "Description of TestProduct010", "TestCompany101" );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareProductManagement")
set productDetails = managementLib.CreateSoftwareProduct( "TestProduct010", "Description of TestProduct010", "TestCompany101" )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PRODUCT_NAME=TestProduct010
set PRODUCT_DESCRIPTION=Description of TestProduct010
set COMPANY_NAME=TestCompany101
%SMF% cmd:CreateSoftwareProduct "Name:%PRODUCT_NAME%" "Description:%PRODUCT_DESCRIPTION%" "CompanyName:%COMPANY_NAME%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$Description,
			[Parameter(Mandatory=$true)]
			[string]$CompanyName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			Description = $Description
 			CompanyName = $CompanyName

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareProductManagementService.asmx/CreateSoftwareProduct"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareComponents {

<#
.SYNOPSIS
    A collection of all software component resources (releases, service packs, and updates) that the Software Product resource contains. 

.PARAMETER SoftwareProductGuid
    Guid of SoftwareProductsResources 

.PARAMETER ComponentType
    Type of Software Resource one of: ANY, SOFTWARE_COMPONENT, SOFTWARE_RELEASE, SOFTWARE_UPDATE, SERVICE_PACK  

.EXAMPLE 
    Get software product named Orca 3.0 
CopyC#
SoftwareProductManagementLib managementLib = new SoftwareProductManagementLib();
SoftwareComponentDetails [] componentDetails = managementLib.GetSoftwareComponents( productDetails.Guid, "ANY" );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareProductManagement")
componentDetails = managementLib.GetSoftwareComponents( productDetails.Guid, "ANY" )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PRODUCT_GUID={027C7FFE-4F3E-4d3f-8DA1-1CAA48884356}
%SMF% cmd:GetSoftwareComponents "SoftwareProductGuid:%PRODUCT_GUID%" "ComponentType:ANY"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$SoftwareProductGuid,
			[Parameter(Mandatory=$true)]
			[string]$ComponentType,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			SoftwareProductGuid = $SoftwareProductGuid
 			ComponentType = $ComponentType

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareProductManagementService.asmx/GetSoftwareComponents"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareProduct {

<#
.SYNOPSIS
    Method that returns an existing SoftwareProductResource. If an existing product that matches the Name and Company values given is found, a SoftwareProductDetails structure will be returned with the properties of the existing product. 

.PARAMETER Name
    The name of the software product to create/lookup. 

.PARAMETER CompanyNameOrGuid
    The guid or name of the company that is associated with this software product. 

.EXAMPLE 
    Get software product named Orca 3.0 
CopyC#
SoftwareProductManagementLib managementLib = new SoftwareProductManagementLib();
SoftwareProductDetails productDetails = managementLib.GetSoftwareProduct( "Orca 3.0", "Microsoft" );
CopyVBScript
set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareProductManagement")
set productDetails = managementLib.GetSoftwareProduct( "Orca 3.0", "Microsoft" )
CopyÂ 
set SMF=AltirisASDKSMF.exe
set PRODUCT_NAME=Orca 3.0
set COMPANY_NAME=Microsoft
%SMF% cmd:GetSoftwareProduct "Name:%PRODUCT_NAME%" "CompanyNameOrGuid:%COMPANY_NAME%"
echo Command executed
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$Name,
			[Parameter(Mandatory=$true)]
			[string]$CompanyNameOrGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			Name = $Name
 			CompanyNameOrGuid = $CompanyNameOrGuid

        }


    $WebServiceUrl = "altiris/ASDK.SMF/SoftwareProductManagementService.asmx/GetSoftwareProduct"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddDeliveryItem {

<#
.SYNOPSIS
    Add software resource or task to the policy. 

.PARAMETER policyGuid
    Policy Guid (existing or returned by CreatePolicy(String, String) method. 

.PARAMETER softwareOrTaskGuid
    Software resource guid or task guid. 

.EXAMPLE 
    Add new software resource. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
Guid softwareResourceGuid = new Guid("B70D80F2-DF32-41f9-A06F-A9EAA8B7FB0E");
DeliveryItemDetails deliveryItem = policyManagement.AddDeliveryItem(policyGuid, softwareResourceGuid);
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
softwareResourceGuid = "B70D80F2-DF32-41f9-A06F-A9EAA8B7FB0E"
set deliveryItem = policyManagement.AddDeliveryItem(policyGuid, softwareResourceGuid)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SOFTWARE_RESOURCE_GUID=B70D80F2-DF32-41f9-A06F-A9EAA8B7FB0E
%SWM% cmd:AddDeliveryItem "policyGuid:%POLICY_GUID%" "softwareOrTaskGuid:%SOFTWARE_RESOURCE_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Policy can be created using CreatePolicy(String, String) method.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$softwareOrTaskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			softwareOrTaskGuid = $softwareOrTaskGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/AddDeliveryItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreatePolicy {

<#
.SYNOPSIS
    Create empty managed software delivery policy. 

.PARAMETER name
    Policy name. Can't be null or empty. 

.PARAMETER description
    Policy description. If null then policy will have empty description. 

.EXAMPLE 
    Create a new policy named "Software Workspace Virtualization 6.1 SP7" with "This policy installs SWV 6.1.1240 build": 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = policyManagement.CreatePolicy("Software Workspace Virtualization 6.1 SP7",
  "This policy installs SWV 6.1.1240 build");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = policyManagement.CreatePolicy("Software Workspace Virtualization 6.1 SP7", "This policy installs SWV 6.1.1240 build")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_NAME=Software Workspace Virtualization 6.1 SP7
set POLICY_DESC=This policy installs SWV 6.1.1240 build
%SWM% cmd:CreatePolicy "name:%POLICY_NAME%" "description:%POLICY_DESC%"
for /f "tokens=2" %%a in (temp.txt) do @(@set POLICY_GUID=%%a)
echo Created policy %POLICY_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    The default settings for this policy can be changed by SetDefaultPolicySetting(String, String) method.
Policy will be created in the "Policies\Software\Managed Software Delivery" folder. Policy state will be disabled.
Software resources or tasks can be added to the policy using AddDeliveryItem(Guid, Guid) method.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/CreatePolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDefaultPolicySetting {

<#
.SYNOPSIS
    Get default policy setting. This methods allows to find out which settings will be used for policy created by CreatePolicy(String, String) method. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.EXAMPLE 
    Get default policy setting "Prompt user when this policy is available". 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
string flag = policyManagement.GetDefaultPolicySetting("Prompt user when this policy is available");
bool result;
if (Boolean.TryParse(flag, out result))
{
  ...
}
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
flag = policyManagement.GetDefaultPolicySetting("Prompt user when this policy is available")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set SETTING_NAME=Prompt user when this policy is available
%SWM% cmd:GetDefaultPolicySetting "settingName:%SETTING_NAME%"
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Default policy setting %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$settingName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDefaultPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDeliveryItems {

<#
.SYNOPSIS
    Get policy delivery item(s). Type of the delivery item can found by examining Type member of returned DeliveryItemDetails structure. 

.PARAMETER policyGuid
    Policy guid. 

.EXAMPLE 
    Get delivery items. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");        
DeliveryItemDetails[] deliveryItems = policyManagement.GetDeliveryItems(policyGuid);
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItems = policyManagement.GetDeliveryItems(policyGuid)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
%SWM% cmd:GetDeliveryItems "policyGuid:%POLICY_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Delivery item can be added using AddDeliveryItem(Guid, Guid) method.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDeliveryItems"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDeliveryItemSetting {

<#
.SYNOPSIS
    Get delivery item settings. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER deliveryItemGuid
    Delivery item guid. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.EXAMPLE 
    Get delivery item setting "Perform software compliance check". 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
Guid deliveryItemGuid = new Guid("827D9A7C-0764-4af8-AF71-313ED7607C50");    
string flag = policyManagement.GetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItemGuid = "827D9A7C-0764-4af8-AF71-313ED7607C50"
flag = policyManagement.GetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set DELIVERY_ITEM_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Perform software compliance check
%SWM% cmd:GetDeliveryItemSetting "policyGuid:%POLICY_GUID%" "deliveryItemGuid:%DELIVERY_ITEM_GUID%" "settingName:%SETTING_NAME%"
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Delivery Item Setting %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always uses value converted to string using invarian culture.
Software delivery item setting names:
Setting nameSetting value
"Perform software compliance check" or "ComplianceCheck"boolean
"Command line" or "Commandline"Command line Guid
"Package"Package Guid
"Automatically upgrade software that has been superseded by this software" or "UpgradeSuperseded"boolean
"Do not install if a newer version of this software is already installed" or "NoDowngrade"boolean
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int

Task delivery setting names:
Setting nameSetting value
"Override the policy settings for this task" or "OverridePolicy"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$deliveryItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid
 			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetDeliveryItemSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetPolicySetting {

<#
.SYNOPSIS
    Get policy setting value. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.EXAMPLE 
    Get "Prompt user when this policy is available" for Software virtualization agent rollout policy. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid rolloutPolicyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
string flag = policyManagement.GetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available");
bool result;
if (Boolean.TryParse(flag, out result))
{
  ...
}
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
rolloutPolicyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
flag = policyManagement.GetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Prompt user when this policy is available
%SWM% cmd:GetPolicySetting "policyGuid:%POLICY_GUID%" "settingName:%SETTING_NAME%"
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Policy setting value %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"Virtual layer name" or "VirtualLayer"Virtual layer name or "" to disable installation into virtual layer
"Display name" or "DisplayName"The name displayed in the Symantec Management Agent
"Display description" or "DisplayDescription"The description displayed in the Symantec Management Agent 
"Enable verbose reporting" or "EnableVerbose"boolean
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/GetPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveDeliveryItem {

<#
.SYNOPSIS
    Remove delivery item from policy. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER deliveryItemGuid
    Delivery item guid. 

.EXAMPLE 
    Remove delivery item. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");        
Guid deliveryItemGuid = new Guid("827D9A7C-0764-4af8-AF71-313ED7607C50");    
policyManagement.RemoveDeliveryItem(policyGuid, deliveryItemGuid);
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
policyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItemGuid = "827D9A7C-0764-4af8-AF71-313ED7607C50"
call policyManagement.RemoveDeliveryItem(policyGuid, deliveryItemGuid)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set DELIVERY_ITEM_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
%SWM% cmd:RemoveDeliveryItem "policyGuid:%POLICY_GUID%" "deliveryItemGuid:%DELIVERY_ITEM_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    This method only removes reference to the software resource or task from policy. The software resource or task itself are not affected. 
Delivery item can be added using AddDeliveryItem(Guid, Guid) method.
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$deliveryItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/RemoveDeliveryItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetDefaultPolicySetting {

<#
.SYNOPSIS
    Set default policy settings. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set defult policy setting "Prompt user when this policy is available". 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
policyManagement.SetDefaultPolicySetting("Prompt user when this policy is available", "true");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
call policyManagement.SetDefaultPolicySetting("Prompt user when this policy is available", "true")
CopyÂ 
set SWM=AltirisASDKSWM.exe                
set SETTING_NAME=Prompt user when this policy is available
set SETTING_VALUE=true
%SWM% cmd:SetDefaultPolicySetting "settingName:%SETTING_NAME%" "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always uses value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$settingName,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetDefaultPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetDeliveryItemSetting {

<#
.SYNOPSIS
    Set delivery item setting value. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER deliveryItemGuid
    Delivery item guid. 

.PARAMETER settingName
    Setting name. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set "Perform software compliance check" for delivery item. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid policyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
Guid deliveryItemGuid = new Guid("827D9A7C-0764-4af8-AF71-313ED7607C50");    
policyManagement.SetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check", "true");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
rolloutPolicyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
deliveryItemGuid = "827D9A7C-0764-4af8-AF71-313ED7607C50"    
call policyManagement.SetDeliveryItemSetting(policyGuid, deliveryItemGuid, "Perform software compliance check", "true")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set DELIVERY_ITEM_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Perform software compliance check
set SETTING_VALUE=true
%SWM% cmd:SetDeliveryItemSetting "policyGuid:%POLICY_GUID%" "deliveryItemGuid:%DELIVERY_ITEM_GUID%" "settingName:%SETTING_NAME%" "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Policy guid or delivery item guid or setting name is empty. Policy or delivery item does not exist Policy is not Managed Delivery Policy or delivery item is not Software Delivery Item or Task Delivery Item If setting is not implemented If delivery item setting can't be set. Look at inner exception for more details. 
Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Software delivery item setting names:
Setting nameSetting value
"Perform software compliance check" or "ComplianceCheck"boolean
"Command line" or "Commandline"Command line Guid
"Package"Package Guid
"Automatically upgrade software that has been superseded by this software" or "UpgradeSuperseded"boolean
"Do not install if a newer version of this software is already installed" or "NoDowngrade"boolean
"DownloadLocation" or "Destination download location"path or "" for default location
"UseDefaultDownloadSettings" or "Use the default Symantec Management Agent settings to download"boolean
"RunBandwidth" or "Run from the server if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or Always, -1 or Never
"DownloadBandwidth" or "Download and run locally if bandwidth is above"1, 2, 5, 10, 20, 30, 40, 50, 100, 256, 512, 1024, 0 or None, -1 or Never
"AllowMulticasting" or "Allow multicasting for package delivery"boolean
"DeleteIfUnused" or "Delete package from client computer if unused for"integer from 0 to 365, or -1 to disable deletion
"RunAs"SystemAccount, LoggedInAccount, SpecifiedAccount
"UserDomain"string
"UserName"string
"UserPassword"string; Can be only set
"TaskCanRun" or "Task can run"UserIsLoggedOn, UserIsNotLoggedOn, None
"RepeatTask" or "Repeat this task for each logged on user"boolean
"AllowInteraction" or "Allow user to interact with installing software"boolean
"DisplayWindow" or "Display window"Normal, Maximized, Minimized, Hidden
"PromptBeforeRunning" or "Prompt user before running"boolean
"MaxExecutionDeferral" or "Allow user to defer up to a total of"number of minutes up to 79200, 0 to disable deferral
"ActionAfterRun" or "Upon success"Logoff, Restart, NoAction
"MaxActionDeferral" or "Allow user to defer action up to"number of minutes up to 79200, 0 to disable deferral
"CloseApplications" or "Force running applications to close"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int

Task delivery setting names:
Setting nameSetting value
"Override the policy settings for this task" or "OverridePolicy"boolean
"Upon failure the Managed Delivery will" or "ActionUponFailure"Abort | Continue | Repeat
"Terminate after" or "TerminateAfter"int
"Max retries" or "MaxRetries"int
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[guid]$deliveryItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			deliveryItemGuid = $deliveryItemGuid
 			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetDeliveryItemSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPolicySetting {

<#
.SYNOPSIS
    Set policy setting value. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set "Prompt user when this policy is available" for Software virtualization agent rollout policy. 
CopyC#
SoftwareDeliveryPolicyManagement policyManagement = new SoftwareDeliveryPolicyManagement();
Guid rolloutPolicyGuid = new Guid("060A1BDA-7056-4D22-9CA2-78D82CA68F18");
policyManagement.SetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available", "true");
CopyVBScript
set policyManagement = CreateObject("Altiris.ASDK.SWM.SoftwareDeliveryPolicyManagement")
rolloutPolicyGuid = "060A1BDA-7056-4D22-9CA2-78D82CA68F18"
call policyManagement.SetPolicySetting(rolloutPolicyGuid, "Prompt user when this policy is available", "true")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=060A1BDA-7056-4D22-9CA2-78D82CA68F18
set SETTING_NAME=Prompt user when this policy is available
set SETTING_VALUE=true
%SWM% cmd:SetPolicySetting "policyGuid:%POLICY_GUID%" "settingName:%SETTING_NAME%" "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always uses value converted to string using invarian culture.
Setting nameSetting value
"Power on computers if necessary" or "PowerOn"boolean
"Use this profile when connecting to out-of-band technology-enabled computers" or "UseProfile"profile Guid
"Compliance scheduling" or "ComplianceSchedule"schedule XML
"Allow user to turn on policy from the Symantec Management Agent" or "UserCanRun"boolean
"User must turn on from Symantec Management Agent" or "UserMustRun"boolean
"Prompt user when this policy is available" or "PromptUser"boolean
"Install"NoRemediation | ASAP | UseMaintenanceWindow | RegisteredSchedule
"Remediation schedule" or "RemediationSchedule"schedule XML
"Virtual layer name" or "VirtualLayer"Virtual layer name or "" to disable installation into virtual layer
"Display name" or "DisplayName"The name displayed in the Symantec Management Agent
"Display description" or "DisplayDescription"The description displayed in the Symantec Management Agent 
"Enable verbose reporting" or "EnableVerbose"boolean
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[string]$settingName,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareDeliveryPolicyManagementService.asmx/SetPolicySetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function AddUserOrGroupToPublishingItem {

<#
.SYNOPSIS
    Add user/group to publishing item. 

.PARAMETER publishingItemGuid
    Publishing item guid. 

.PARAMETER userOrGroup
    User or group name. 

.PARAMETER preApproved
    True if published software/policy can be request by user without managers approval. 

.PARAMETER recommended
    True, if published software/policy will be visible to user by default. 

.EXAMPLE 
    Add user to publishing item 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid publishingItemGuid = new Guid("4D140F0D-911F-4c57-B4B5-A562BC6DC611");
portalManagement.AddUserOrGroupToPublishingItem(publishingItemGuid, "user1", true, true);
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
publishingItemGuid = "4D140F0D-911F-4c57-B4B5-A562BC6DC611"
call portalManagement.AddUserOrGroupToPublishingItem(publishingItemGuid, "user1", true, true)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set PUBLISHING_ITEM_GUID=4D140F0D-911F-4c57-B4B5-A562BC6DC611                
set USER_NAME=user1
set PRE_APPROVED=true
set RECOMMENDED=true
%SWM% cmd:AddUserOrGroupToPublishingItem "publishingItemGuid:%PUBLISHING_ITEM_GUID%" "userOrGroup:%USER_NAME%" "preApproved:%PRE_APPROVED%" "recommended:%RECOMMENDED%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userOrGroup,
			[Parameter(Mandatory=$true)]
			[bool]$preApproved,
			[Parameter(Mandatory=$true)]
			[bool]$recommended,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup
 			preApproved = $preApproved
 			recommended = $recommended

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/AddUserOrGroupToPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwarePortalSetting {

<#
.SYNOPSIS
    Get software portal setting. 

.PARAMETER settingName
    Setting name. 

.EXAMPLE 
    Get software portal setting "MaxUserRequests" 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
string maxRequests = portalManagement.GetSoftwarePortalSetting("MaxUserRequests");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
maxRequests = portalManagement.GetSoftwarePortalSetting("MaxUserRequests")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set SETTING_NAME=MaxUserRequests
%SWM% cmd:GetSoftwarePortalSetting "settingName:%SETTING_NAME%"        
for /f "tokens=2" %%a in (temp.txt) do @(@set SETTING_VALUE=%%a)
echo Software Portal Setting %SETTING_VALUE%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
This method always returns value converted to string using invarian culture.
Setting nameSetting value
"Maximum number of open requests per user" or "MaxUserRequests"int
"Company logo" or "CompanyLogo"path
"Company name" or "CompanyName"string
"Publish software across all trusted domains" or "PublishAcrossDomains"boolean
"End task after" or "EndTaskAfter"int
"NotificationEmail" or "Notification Email"string
"UseNotificationEmail" or "Use Notification Email"string
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$settingName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForAdmin {

<#
.SYNOPSIS
    Retrieve a list of software requests that needs managers approval. List will include request that are visible for software portal administrator. 

.EXAMPLE 
    Retrieve a list of software requests that needs managers approval and visible for administrator 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();                
SoftwareRequestDetails[] requestDetails = portalManagement.GetSoftwareRequestsForAdmin();
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")                
requestDetails = portalManagement.GetSoftwareRequestsForAdmin()
CopyÂ 
%SWM% cmd:GetSoftwareRequestsForAdmin
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


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForAdmin"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetSoftwareRequestsForManager {

<#
.SYNOPSIS
    Retrieve a list of software requests that needs managers approval. List will include only request that can accept. 

.PARAMETER managerLogin
    manager login. 

.EXAMPLE 
    Retrieve a list of software requests that needs managers approval 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();                
SoftwareRequestDetails[] requestDetails = portalManagement.GetSoftwareRequestsForManager("manager1");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")                
requestDetails = portalManagement.GetSoftwareRequestsForManager("manager1")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set MANAGER_LOGIN=manager1
%SWM% cmd:GetSoftwareRequestsForManager "managerLogin:%MANAGER_LOGIN%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$managerLogin,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			managerLogin = $managerLogin

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetSoftwareRequestsForManager"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetUsersForPublishingItem {

<#
.SYNOPSIS
    Get information about user/groups for publishing item. 

.PARAMETER publishingItemGuid
    Publishing item guid. 

.EXAMPLE 
    Get information about user/groups for publishing item 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid publishingItemGuid = new Guid("4D140F0D-911F-4c57-B4B5-A562BC6DC611");
UserOrGroupDetails[] details = portalManagement.GetUsersForPublishingItem(publishingItemGuid);
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
publishingItemGuid = "4D140F0D-911F-4c57-B4B5-A562BC6DC611"
usersDetails = portalManagement.GetUsersForPublishingItem(publishingItemGuid)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set PUBLISHING_ITEM_GUID=4D140F0D-911F-4c57-B4B5-A562BC6DC611                
%SWM% cmd:GetUsersForPublishingItem "publishingItemGuid:%PUBLISHING_ITEM_GUID%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/GetUsersForPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishPolicy {

<#
.SYNOPSIS
    Create publishing item for managed software delivery policy. Note that user or group should be added to publishing item by using AddUserOrGroupToPublishingItem(Guid, String, Boolean, Boolean) method. 

.PARAMETER policyGuid
    Policy guid. 

.PARAMETER name
    Policy name visible for user in the software portal. 

.PARAMETER description
    Policy description visible for user in the software portal. 

.EXAMPLE 
    Publish policy 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid policyGuid = new Guid("1F64CD48-4205-44de-BA4F-2CDDED84E163");        
Guid itemGuid = portalManagement.PublishPolicy(policyGuid, "Test Policy", "Description");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
policyGuid = "1F64CD48-4205-44de-BA4F-2CDDED84E163"
itemGuid = portalManagement.PublishPolicy(policyGuid, "Test Policy", "Description")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set POLICY_GUID=1F64CD48-4205-44de-BA4F-2CDDED84E163
set NAME=Test Policy
set DESCRIPTION=Description 
%SWM% cmd:PublishPolicy "policyGuid:%POLICY_GUID%" "name:%NAME%" "description:%DESCRIPTION%"        
for /f "tokens=2" %%a in (temp.txt) do @(@set PUBLISHING_ITEM_GUID=%%a)
echo Created publishing item %PUBLISHING_ITEM_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$policyGuid,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuid = $policyGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function PublishSoftwareResource {

<#
.SYNOPSIS
    Create publishing item for software resource command line. Note that user or group should be added to publishing item by using AddUserOrGroupToPublishingItem(Guid, String, Boolean, Boolean) method. 

.PARAMETER softwareResourceGuid
    Software resource guid. 

.PARAMETER commandLineGuid
    Command line guid. 

.PARAMETER name
    Software name visible for user in the software portal. 

.PARAMETER description
    Software description visible for user in the software portal. 

.EXAMPLE 
    Create publishing item for software resource command line 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid commandLineGuid = new Guid("FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3");
Guid itemGuid = portalManagement.PublishSoftwareResource(softwareResourceGuid, commandLineGuid, "Test Software", "Description");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
commandLineGuid = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3"
itemGuid = portalManagement.PublishSoftwareResource(softwareResourceGuid, commandLineGuid, "Test Software", "Description")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
set CMD_GUID=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3
set NAME=Test Software 
set DESCRIPTION=Description 
%SWM% cmd:PublishSoftwareResource "softwareResourceGuid:%RESOURCE_GUID%" "commandLineGuid:%CMD_GUID%" "name:%NAME%"        "description:%DESCRIPTION%"        
for /f "tokens=2" %%a in (temp.txt) do @(@set PUBLISHING_ITEM_GUID=%%a)
echo Created publishing item %PUBLISHING_ITEM_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$description,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			commandLineGuid = $commandLineGuid
 			name = $name
 			description = $description

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/PublishSoftwareResource"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RemoveUserOrGroupFromPublishingItem {

<#
.SYNOPSIS
    Remove user from publishing item. 

.PARAMETER publishingItemGuid
    Publishing item guid. 

.PARAMETER userOrGroup
    User or group name. 

.EXAMPLE 
    Remove user from publishing item 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid publishingItemGuid = new Guid("4D140F0D-911F-4c57-B4B5-A562BC6DC611");
portalManagement.RemoveUserOrGroupFromPublishingItem(publishingItemGuid, "user1");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
publishingItemGuid = "4D140F0D-911F-4c57-B4B5-A562BC6DC611"
call portalManagement.RemoveUserOrGroupFromPublishingItem(publishingItemGuid, "user1")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set PUBLISHING_ITEM_GUID=4D140F0D-911F-4c57-B4B5-A562BC6DC611                
set USER_NAME=user1
%SWM% cmd:RemoveUserOrGroupFromPublishingItem "publishingItemGuid:%PUBLISHING_ITEM_GUID%" "userOrGroup:%USER_NAME%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$publishingItemGuid,
			[Parameter(Mandatory=$true)]
			[string]$userOrGroup,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			publishingItemGuid = $publishingItemGuid
 			userOrGroup = $userOrGroup

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/RemoveUserOrGroupFromPublishingItem"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwarePortalSetting {

<#
.SYNOPSIS
    Set software portal setting. 

.PARAMETER settingName
    Setting name. See remark section for a list of supported setting names. 

.PARAMETER value
    Setting value. 

.EXAMPLE 
    Set software portal setting "MaxUserRequests" 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
portalManagement.SetSoftwarePortalSetting("MaxUserRequests", "50");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
call portalManagement.SetSoftwarePortalSetting("MaxUserRequests", "50")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set SETTING_NAME=MaxUserRequests
set SETTING_VALUE=50
%SWM% cmd:SetSoftwarePortalSetting "settingName:%SETTING_NAME%"        "value:%SETTING_VALUE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide.  

.NOTES
    Setting names are case insensitive.
You can provide only first letters of the setting name that unique identifies setting. For example "perform". There are synonyms for setting name. You can use either name.
Setting nameSetting value
"Maximum number of open requests per user" or "MaxUserRequests"int
"Company logo" or "CompanyLogo"path
"Company name" or "CompanyName"string
"Publish software across all trusted domains" or "PublishAcrossDomains"boolean
"End task after" or "EndTaskAfter"int
"NotificationEmail" or "Notification Email"string
"UseNotificationEmail" or "Use Notification Email"string
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$settingName,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			settingName = $settingName
 			value = $value

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SetSoftwarePortalSetting"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SoftwareRequestAction {

<#
.SYNOPSIS
    Run action for software request. 

.PARAMETER softwareRequestGuid
    Guid of the software request. 

.PARAMETER action
    Action to run. Values: Approve, OnHold, Deny, AddComment 

.PARAMETER comment
    Comment for action 

.EXAMPLE 
    Run action 'OnHold' for software request 
CopyC#
SoftwarePortalManagement portalManagement = new SoftwarePortalManagement();        
Guid softwareRequestGuid = new Guid("54A291FD-AF44-4e64-A68F-7A397B5B230A");        
portalManagement.SoftwareRequestAction(softwareRequestGuid, "OnHold", "Comment");
CopyVBScript
set portalManagement = CreateObject("Altiris.ASDK.SWM.SoftwarePortalManagement")        
softwareRequestGuid = "54A291FD-AF44-4e64-A68F-7A397B5B230A"
call portalManagement.SoftwareRequestAction(softwareRequestGuid, "OnHold", "Comment")
CopyÂ 
set SWM=AltirisASDKSWM.exe
set SOFTWARE_REQUEST_GUID=54A291FD-AF44-4e64-A68F-7A397B5B230A
set ACTION=OnHold
set COMMENT=Comment
%SWM% cmd:SoftwareRequestAction "softwareRequestGuid:%SOFTWARE_REQUEST_GUID%" "action:%ACTION%" "comment:%COMMENT%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareRequestGuid,
			[Parameter(Mandatory=$true)]
			[string]$action,
			[Parameter(Mandatory=$true)]
			[string]$comment,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareRequestGuid = $softwareRequestGuid
 			action = $action
 			comment = $comment

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwarePortalManagementService.asmx/SoftwareRequestAction"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateAssignPackagesToSoftwareResourceTask {

<#
.SYNOPSIS
    Create Assign Packages To Software Resource Task. 

.PARAMETER packagesInfo
    String of "packages info". Package info string should contains GUID of package, company and version information separated by "|" delimetr. GUID string could not be empty or null, Version and Company are optional. You can place a data for few packages, in which case they must be separated by ";" delimiter. 

.PARAMETER overwrite
    If TRUE packages data of Company and Version will replaced by data in packagesInfo parameter. 

.EXAMPLE 
    Create Assign Packages To Software Resource Task. 
CopyC#
SoftwareTasksManagementLib softwareTasksManagementLib = new SoftwareTasksManagementLib();		
String packagesInfo = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3|Microsoft|5.0.0.1;59B2D1E1-31A9-48bd-A504-5C9F02F26087|Mozilla|1.2.1.1"
Guid taskGuid = softwareTasksManagementLib.CreateAssignPackagesToSoftwareResourceTask(packagesInfo, true);
CopyVBScript
set softwareTasksManagementLib = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")		
packagesInfo = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3|Microsoft|5.0.0.1;59B2D1E1-31A9-48bd-A504-5C9F02F26087|Mozilla|1.2.1.1"
taskGuid = softwareTasksManagementLib.CreateAssignPackagesToSoftwareResourceTask(packagesInfo, true)
CopyÂ 
set SWM=AltirisASDKSWM.exe		
set PACKAGES_INFO=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3|Microsoft|5.0.0.1;59B2D1E1-31A9-48bd-A504-5C9F02F26087|Mozilla|1.2.1.1
set OVERWRITE=true
%SWM% cmd:CreateAssignPackagesToSoftwareResourceTask "packagesInfo:%PACKAGES_INFO%" "overwrite:%OVERWRITE%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$packagesInfo,
			[Parameter(Mandatory=$true)]
			[bool]$overwrite,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			packagesInfo = $packagesInfo
 			overwrite = $overwrite

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateAssignPackagesToSoftwareResourceTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreatePackageDeliveryTask {

<#
.SYNOPSIS
    Create package delivery task. 

.PARAMETER packageGuid
    Package guid. 

.PARAMETER commandLineGuid
    Command line guid. 

.EXAMPLE 
    Create package delivery task. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid commandLineGuid = new Guid("FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3");
Guid packageGuid = new Guid("59B2D1E1-31A9-48bd-A504-5C9F02F26087");
Guid taskGuid = softwareTasksManagement.CreatePackageDeliveryTask(packageGuid, commandLineGuid);
CopyVBScript
set softwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
commandLineGuid = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3"
packageGuid = "59B2D1E1-31A9-48bd-A504-5C9F02F26087"
taskGuid = softwareTasksManagement.CreatePackageDeliveryTask(packageGuid, commandLineGuid)
CopyÂ 
set SWM=AltirisASDKSWM.exe                
set CMD_GUID=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3
set PACKAGE_GUID=59B2D1E1-31A9-48bd-A504-5C9F02F26087
%SWM% cmd:CreatePackageDeliveryTask "packageGuid:%PACKAGE_GUID%" "commandLineGuid:%CMD_GUID%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$packageGuid,
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			packageGuid = $packageGuid
 			commandLineGuid = $commandLineGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreatePackageDeliveryTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateQuickDeliveryTask {

<#
.SYNOPSIS
    Create quick delivery task for software resource. 

.PARAMETER softwareResourceGuid
    Software resource guid. 

.PARAMETER commandLineGuid
    Command line guid. 

.PARAMETER packageGuid
    Package guid. 

.EXAMPLE 
    Create quick delivery task for software resource. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();        
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid commandLineGuid = new Guid("FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3");
Guid packageGuid = new Guid("59B2D1E1-31A9-48bd-A504-5C9F02F26087");
Guid taskGuid = softwareTasksManagement.CreateQuickDeliveryTask(softwareResourceGuid, commandLineGuid, packageGuid);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
commandLineGuid = "FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3"
packageGuid = "59B2D1E1-31A9-48bd-A504-5C9F02F26087"
taskGuid = SoftwareTasksManagement.CreateQuickDeliveryTask(softwareResourceGuid, commandLineGuid, packageGuid)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
set CMD_GUID=FD1CFEF7-BC0D-4b89-BA6E-220CCFE4BAD3
set PACKAGE_GUID=59B2D1E1-31A9-48bd-A504-5C9F02F26087
%SWM% cmd:CreateQuickDeliveryTask "softwareResourceGuid:%RESOURCE_GUID%" "commandLineGuid:%CMD_GUID%" "packageGuid:%PACKAGE_GUID%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$commandLineGuid,
			[Parameter(Mandatory=$true)]
			[guid]$packageGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			commandLineGuid = $commandLineGuid
 			packageGuid = $packageGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateQuickDeliveryTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateSourcePathUpdateTask {

<#
.SYNOPSIS
    Create source path update task. 

.PARAMETER softwareResourceGuid
    Software resource guid. If empty guid passed task will be run for all. 

.PARAMETER firstServer
    First server name to check. 

.PARAMETER lastServer
    Last server name to check. 

.PARAMETER maxNumberOfServers
    Maximun number of servers to check. 

.EXAMPLE 
    Create source path update task 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid taskGuid = softwareTasksManagement.CreateSourcePathUpdateTask(softwareResourceGuid, "server1", "server5", 5);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
taskGuid = SoftwareTasksManagement.CreateSourcePathUpdateTask(softwareResourceGuid, "server1", "server5", 5)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
set FIRST_SERVER=server1
set LAST_SERVER=server5
set MAX_NUMBER_SERV=5
%SWM% cmd:CreateSourcePathUpdateTask "softwareResourceGuid:%RESOURCE_GUID%" "firstServer:%FIRST_SERVER%" "lastServer:%LAST_SERVER%" "maxNumberOfServers:%MAX_NUMBER_SERV%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
			[Parameter(Mandatory=$true)]
			[string]$firstServer,
			[Parameter(Mandatory=$true)]
			[string]$lastServer,
			[Parameter(Mandatory=$true)]
			[int]$maxNumberOfServers,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid
 			firstServer = $firstServer
 			lastServer = $lastServer
 			maxNumberOfServers = $maxNumberOfServers

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateSourcePathUpdateTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateVirtualizationTask {

<#
.SYNOPSIS
    Create software virtualization task. 

.PARAMETER command
    Virtualization command. Value: [Activate | Deactivate | DeactivateDelete | Delete | Import | Reset] 

.PARAMETER layerName
    Virtualization layer name. 

.PARAMETER filePath
    File path on the client computer. 

.PARAMETER forceToComplete
    Force operation to complete 

.EXAMPLE 
    Create software virtualization task. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid taskGuid = softwareTasksManagement.CreateVirtualizationTask("Activate", "layer name", @"c:\path\file", false);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")                
taskGuid = SoftwareTasksManagement.CreateVirtualizationTask("Activate", "layer name", "c:\path\file", false)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set COMMAND=Activate
set LAYER_NAME=layer name
set FILE_PATH=c:\path\file
set FORCE=false
%SWM% cmd:CreateVirtualizationTask "command:%COMMAND%" "layerName:%LAYER_NAME%" "filePath:%FILE_PATH%" "forceToComplete:%FORCE%"
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$command,
			[Parameter(Mandatory=$true)]
			[string]$layerName,
			[Parameter(Mandatory=$true)]
			[string]$filePath,
			[Parameter(Mandatory=$true)]
			[bool]$forceToComplete,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			command = $command
 			layerName = $layerName
 			filePath = $filePath
 			forceToComplete = $forceToComplete

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateVirtualizationTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateWindowsInstallerRepairTask {

<#
.SYNOPSIS
    Create windows installer repair task. 

.PARAMETER softwareResourceGuid
    Software resource guid. If empty guid passed task will be run for all. 

.EXAMPLE 
    Create windows installer repair task. 
CopyC#
SoftwareTasksManagement softwareTasksManagement = new SoftwareTasksManagement();
Guid softwareResourceGuid = new Guid("FFBC1F9E-27BB-4842-999B-D1092C87A48B");
Guid taskGuid = softwareTasksManagement.CreateWindowsInstallerRepairTask(softwareResourceGuid);
CopyVBScript
set SoftwareTasksManagement = CreateObject("Altiris.ASDK.SWM.SoftwareTasksManagement")        
softwareResourceGuid = "FFBC1F9E-27BB-4842-999B-D1092C87A48B"
taskGuid = SoftwareTasksManagement.CreateWindowsInstallerRepairTask(softwareResourceGuid)
CopyÂ 
set SWM=AltirisASDKSWM.exe
set RESOURCE_GUID=FFBC1F9E-27BB-4842-999B-D1092C87A48B
%SWM% cmd:CreateWindowsInstallerRepairTask "softwareResourceGuid:%RESOURCE_GUID%"
for /f "tokens=2" %%a in (temp.txt) do @(@set TASK_GUID=%%a)
echo Created task %TASK_GUID%
Remarks
The CLI is being deprecated. Please see the CLI Programming Guide. 
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$softwareResourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareResourceGuid = $softwareResourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/CreateWindowsInstallerRepairTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunAssignPackagesToSoftwareResourceTask {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.SWM/SoftwareTasksManagementService.asmx/RunAssignPackagesToSoftwareResourceTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ExecuteTask {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.PARAMETER executionName
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
			[Parameter(Mandatory=$true)]
			[string]$executionName,
			[Parameter(Mandatory=$true)]
			[string]$inputParameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			executionName = $executionName
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ExecuteTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetExecutedTaskInstances {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetExecutedTaskInstances"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTask {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTaskResourceStatus {

<#
.SYNOPSIS
    

.PARAMETER taskInstanceGuid
     

.PARAMETER resourceGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskInstanceGuid,
			[Parameter(Mandatory=$true)]
			[guid]$resourceGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskInstanceGuid = $taskInstanceGuid
 			resourceGuid = $resourceGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTaskResourceStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTasks {

<#
.SYNOPSIS
    

.PARAMETER parentFolderGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parentFolderGuid = $parentFolderGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTasks"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTasksByType {

<#
.SYNOPSIS
    

.PARAMETER parentFolderGuid
     

.PARAMETER taskTypeGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$parentFolderGuid,
			[Parameter(Mandatory=$true)]
			[guid]$taskTypeGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			parentFolderGuid = $parentFolderGuid
 			taskTypeGuid = $taskTypeGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTasksByType"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTaskStatus {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/GetTaskStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ScheduleTaskCustom {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.PARAMETER scheduleName
     

.PARAMETER description
     

.PARAMETER customScheduleXml
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
			[Parameter(Mandatory=$true)]
			[string]$scheduleName,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[string]$customScheduleXml,
			[Parameter(Mandatory=$true)]
			[string]$inputParameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			scheduleName = $scheduleName
 			description = $description
 			customScheduleXml = $customScheduleXml
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ScheduleTaskCustom"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ScheduleTaskShared {

<#
.SYNOPSIS
    

.PARAMETER taskGuid
     

.PARAMETER scheduleName
     

.PARAMETER description
     

.PARAMETER sharedScheduleGuid
     

.PARAMETER inputParameters
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[guid]$taskGuid,
			[Parameter(Mandatory=$true)]
			[string]$scheduleName,
			[Parameter(Mandatory=$true)]
			[string]$description,
			[Parameter(Mandatory=$true)]
			[guid]$sharedScheduleGuid,
			[Parameter(Mandatory=$true)]
			[string]$inputParameters,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			taskGuid = $taskGuid
 			scheduleName = $scheduleName
 			description = $description
 			sharedScheduleGuid = $sharedScheduleGuid
 			inputParameters = $inputParameters

        }


    $WebServiceUrl = "altiris/ASDK.Task/TaskManagementService.asmx/ScheduleTaskShared"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

Export-ModuleMember -Function *
Function AddGuids {

<#
.SYNOPSIS
    

.PARAMETER guidItem
     

.PARAMETER name
     

.PARAMETER guidList
     

.PARAMETER setback
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidItem,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$guidList,
			[Parameter(Mandatory=$true)]
			[bool]$setback,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidItem = $guidItem
 			name = $name
 			guidList = $guidList
 			setback = $setback

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/AddGuids"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateAgentPluginPolicy {

<#
.SYNOPSIS
    

.PARAMETER strName
     

.PARAMETER productGuid
     

.PARAMETER parentFolderGuid
     

.PARAMETER targetGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$strName,
			[Parameter(Mandatory=$true)]
			[string]$productGuid,
			[Parameter(Mandatory=$true)]
			[string]$parentFolderGuid,
			[Parameter(Mandatory=$true)]
			[string]$targetGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			strName = $strName
 			productGuid = $productGuid
 			parentFolderGuid = $parentFolderGuid
 			targetGuids = $targetGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/CreateAgentPluginPolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function CreateUpdatePolicy {

<#
.SYNOPSIS
    

.PARAMETER name
     

.PARAMETER bulletinGuids
     

.PARAMETER targetGuids
     

.PARAMETER enabled
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
			[Parameter(Mandatory=$true)]
			[string]$targetGuids,
			[Parameter(Mandatory=$true)]
			[bool]$enabled,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			name = $name
 			bulletinGuids = $bulletinGuids
 			targetGuids = $targetGuids
 			enabled = $enabled

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/CreateUpdatePolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function EnsureStaged {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.PARAMETER sync
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
			[Parameter(Mandatory=$true)]
			[bool]$sync,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids
 			sync = $sync

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/EnsureStaged"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetAllStagedUpdates {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetAllStagedUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetCustomSeverities {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetCustomSeverities"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetCustomSeverityLevels {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetCustomSeverityLevels"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetDistributionTaskStatus {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetDistributionTaskStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetNonstagedUpdates {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetNonstagedUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetPackageServerGuid {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetPackageServerGuid"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetPreImportStatus {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetPreImportStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetPreImportStatusVerbose {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetPreImportStatusVerbose"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetProperty {

<#
.SYNOPSIS
    

.PARAMETER guidItem
     

.PARAMETER name
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidItem,
			[Parameter(Mandatory=$true)]
			[string]$name,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidItem = $guidItem
 			name = $name

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetStagedUpdates {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetStagedUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetStagingTaskStatus {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetStagingTaskStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTaskInstanceStatus {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetTaskInstanceStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetTaskRunningInstances {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetTaskRunningInstances"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetWindowsPreImportStatus {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetWindowsPreImportStatus"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function GetWindowsPreImportStatusVerbose {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/GetWindowsPreImportStatusVerbose"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsCleanUpAfterUpgrade71Finished {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsCleanUpAfterUpgrade71Finished"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsSoftwareUpdateDistributionRunning {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsSoftwareUpdateDistributionRunning"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsStaged {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsStaged"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsStagingTaskRunning {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsStagingTaskRunning"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function IsTaskRunning {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/IsTaskRunning"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function MyPrivileges {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/MyPrivileges"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function OperatePatchWorker {

<#
.SYNOPSIS
    

.PARAMETER workerGuid
     

.PARAMETER command
     

.PARAMETER async
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$workerGuid,
			[Parameter(Mandatory=$true)]
			[string]$command,
			[Parameter(Mandatory=$true)]
			[bool]$async,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			workerGuid = $workerGuid
 			command = $command
 			async = $async

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/OperatePatchWorker"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ResolveToPolicies {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/ResolveToPolicies"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function ResolveToUpdates {

<#
.SYNOPSIS
    

.PARAMETER bulletinGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$bulletinGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			bulletinGuids = $bulletinGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/ResolveToUpdates"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunCleanUpAfterUpgrade71 {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunCleanUpAfterUpgrade71"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunPatchWorker {

<#
.SYNOPSIS
    

.PARAMETER workerGuid
     

.PARAMETER async
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$workerGuid,
			[Parameter(Mandatory=$true)]
			[bool]$async,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			workerGuid = $workerGuid
 			async = $async

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunPatchWorker"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunPreImport {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunTask {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.PARAMETER instanceName
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
			[Parameter(Mandatory=$true)]
			[string]$instanceName,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask
 			instanceName = $instanceName

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunTask"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function RunWindowsPreImport {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/RunWindowsPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPluginPolicyMessages {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER turnOnNonEmpty
     

.PARAMETER msgUpdatePending
     

.PARAMETER msgUpdateProgress
     

.PARAMETER msgRebootPending
     

.PARAMETER msgRebootReminder
     

.PARAMETER msgRebootNotification
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[bool]$turnOnNonEmpty,
			[Parameter(Mandatory=$true)]
			[string]$msgUpdatePending,
			[Parameter(Mandatory=$true)]
			[string]$msgUpdateProgress,
			[Parameter(Mandatory=$true)]
			[string]$msgRebootPending,
			[Parameter(Mandatory=$true)]
			[string]$msgRebootReminder,
			[Parameter(Mandatory=$true)]
			[string]$msgRebootNotification,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			turnOnNonEmpty = $turnOnNonEmpty
 			msgUpdatePending = $msgUpdatePending
 			msgUpdateProgress = $msgUpdateProgress
 			msgRebootPending = $msgRebootPending
 			msgRebootReminder = $msgRebootReminder
 			msgRebootNotification = $msgRebootNotification

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetPluginPolicyMessages"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetPluginPolicySchedules {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER clientSoftwareUpdateSchedule
     

.PARAMETER notifySchedule
     

.PARAMETER rebootSchedule
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[string]$clientSoftwareUpdateSchedule,
			[Parameter(Mandatory=$true)]
			[string]$notifySchedule,
			[Parameter(Mandatory=$true)]
			[string]$rebootSchedule,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			clientSoftwareUpdateSchedule = $clientSoftwareUpdateSchedule
 			notifySchedule = $notifySchedule
 			rebootSchedule = $rebootSchedule

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetPluginPolicySchedules"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProperties {

<#
.SYNOPSIS
    

.PARAMETER guidItem
     

.PARAMETER nameValueList
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidItem,
			[Parameter(Mandatory=$true)]
			[string]$nameValueList,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidItem = $guidItem
 			nameValueList = $nameValueList

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetProperties"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetProperty {

<#
.SYNOPSIS
    

.PARAMETER itemGuids
     

.PARAMETER name
     

.PARAMETER value
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
			[Parameter(Mandatory=$true)]
			[string]$name,
			[Parameter(Mandatory=$true)]
			[string]$value,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuids = $itemGuids
 			name = $name
 			value = $value

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetProperty"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSeverityLevel {

<#
.SYNOPSIS
    

.PARAMETER itemGuids
     

.PARAMETER level
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$itemGuids,
			[Parameter(Mandatory=$true)]
			[int]$level,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			itemGuids = $itemGuids
 			level = $level

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetSeverityLevel"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwareUpdatePolicySchedule {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER installSchedule
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[string]$installSchedule,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			installSchedule = $installSchedule

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetSoftwareUpdatePolicySchedule"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetSoftwareUpdatePolicyTargets {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER targetGuids
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[string]$targetGuids,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			targetGuids = $targetGuids

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetSoftwareUpdatePolicyTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetupImport {

<#
.SYNOPSIS
    

.PARAMETER softwareExcludes
     

.PARAMETER localeIncludes
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$softwareExcludes,
			[Parameter(Mandatory=$true)]
			[string]$localeIncludes,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			softwareExcludes = $softwareExcludes
 			localeIncludes = $localeIncludes

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetupImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetupPreImport {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.PARAMETER strMiniCabDownloadUrl
     

.PARAMETER strUserName
     

.PARAMETER strPassword
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
			[Parameter(Mandatory=$true)]
			[string]$strMiniCabDownloadUrl,
			[Parameter(Mandatory=$true)]
			[string]$strUserName,
			[Parameter(Mandatory=$true)]
			[string]$strPassword,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask
 			strMiniCabDownloadUrl = $strMiniCabDownloadUrl
 			strUserName = $strUserName
 			strPassword = $strPassword

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetupPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function SetupWindowsPreImport {

<#
.SYNOPSIS
    

.PARAMETER strMiniCabDownloadUrl
     

.PARAMETER strUserName
     

.PARAMETER strPassword
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$strMiniCabDownloadUrl,
			[Parameter(Mandatory=$true)]
			[string]$strUserName,
			[Parameter(Mandatory=$true)]
			[string]$strPassword,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			strMiniCabDownloadUrl = $strMiniCabDownloadUrl
 			strUserName = $strUserName
 			strPassword = $strPassword

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/SetupWindowsPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function StopPatchWorker {

<#
.SYNOPSIS
    

.PARAMETER workerGuid
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$workerGuid,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			workerGuid = $workerGuid

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/StopPatchWorker"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function StopPreImport {

<#
.SYNOPSIS
    

.PARAMETER guidTask
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidTask,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidTask = $guidTask

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/StopPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function StopWindowsPreImport {

<#
.SYNOPSIS
    

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{


        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/StopWindowsPreImport"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateResourceTargets {

<#
.SYNOPSIS
    

.PARAMETER guidProduct
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$guidProduct,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			guidProduct = $guidProduct

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/UpdateResourceTargets"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}


Function UpdateSoftwareUpdatePolicy {

<#
.SYNOPSIS
    

.PARAMETER policyGuids
     

.PARAMETER enableNewAdverts
     

.EXAMPLE 
     

.NOTES
    
#>
    
    param (
			[Parameter(Mandatory=$true)]
			[string]$policyGuids,
			[Parameter(Mandatory=$true)]
			[bool]$enableNewAdverts,
            [Parameter(Mandatory=$true)]
            [string]$Server,
            [PSCredential]$Credential
        )

    $Body = @{

			policyGuids = $policyGuids
 			enableNewAdverts = $enableNewAdverts

        }


    $WebServiceUrl = "Altiris/PatchManagementCore/PatchWorkflowSvc.asmx/UpdateSoftwareUpdatePolicy"


    if($Credential)
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -Credential $Credential
    }
    else
    {
        Invoke-RestMethod -Uri "https://$Server/$WebServiceUrl" -Method Post -Body $Body -UseDefaultCredentials
    }

}

