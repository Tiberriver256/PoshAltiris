
Function CreateSoftwareProduct {

<#
.SYNOPSIS
    

.PARAMETER Name
     

.PARAMETER Description
     

.PARAMETER CompanyName
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER SoftwareProductGuid
     

.PARAMETER ComponentType
     

.EXAMPLE 
     

.NOTES
    
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
    

.PARAMETER Name
     

.PARAMETER CompanyNameOrGuid
     

.EXAMPLE 
     

.NOTES
    
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
Copy? 
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
Copy? 
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
Copy? 
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

