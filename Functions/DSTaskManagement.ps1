
Function Invoke-DeploymentSolutionTask {

<#
.SYNOPSIS
    

.PARAMETER xml
     

.EXAMPLE 
     

.NOTES
    
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

