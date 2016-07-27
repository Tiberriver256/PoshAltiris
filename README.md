<h2>What is this?</h2>

<p><span>The Administrator Software Development Kit (ASDK) is a set of application programming interfaces (APIs) that access the functionality of&nbsp;Notification Server (NS), Site Servers (previously called Task Servers), and various&nbsp;NS solutions.</span></p>

<p><span>What I have built here is a PowerShell module that maps out the various web services provided by the ASDK for the following purposes:</span></p>

<ul>
	<li><span>Ease of learning</span></li>
	<li><span>Quick prototyping</span></li>
	<li><span>Ease of scripting</span></li>
	<li><span>Community improvement of ASDK documentation and examples</span></li>
</ul>

<p><span>​I am not sure if it is just me or everyone who experiences frustration with the lack of good examples provided in the current ASDK help files and the frustration of needing to have the help file open and cross referencing it while attempting to code up a solution.</span></p>

<p><span>The PowerShell module takes the ASDK documentation and merges it with the web services available making it easy to learn and easy to find the services and API you are looking for.</span></p>

<p>&nbsp;</p>

<h2>Getting Started</h2>

<h3>&nbsp;</h3>

<h3>Installation</h3>

<p>Open PowerShell and run the following:</p>

<pre><code>(new-object Net.WebClient).DownloadString("https://raw.githubusercontent.com/Tiberriver256/PowerShellSymantecAltirisASDK/master/GetPowerShellSymantecAltirisASDK.ps1") | iex</code></pre>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h3>Listing available commands</h3>

<p>There are currently 228 cmdlets available in the module they can be viewed using the following command:</p>

<pre><code>Get-Command -Module PowerShellSymantecAltirisASDK</code></pre>

<p>&nbsp;</p>

<p>Finding commands specific to what you are trying to do, say work with package commandlines,&nbsp;is as simple as the following:</p>

<pre><code>PS C:\&gt; Get-Command *commandline* -Module PowerShellSymantecAltirisASDK

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        AddCommandLineToSoftwareComponent                  0.0        PowerShellSymantecAltirisASDK
Function        CreateCommandLine                                  0.0        PowerShellSymantecAltirisASDK
Function        DeleteCommandLine                                  0.0        PowerShellSymantecAltirisASDK
Function        GetCommandLine                                     0.0        PowerShellSymantecAltirisASDK
Function        RemoveCommandLineFromSoftwareComponent             0.0        PowerShellSymantecAltirisASDK
Function        SetCommandLineProperty                             0.0        PowerShellSymantecAltirisASDK

</code></pre>

<p>&nbsp;</p>

<h3>Getting help for specific commands</h3>

<p>The ASDK help file for the various methods on the various web services has been integrated into PowerShell help, so standard help commands can be run to view the documentation.</p>

<pre><code>PS C:\&gt; help SetCommandLineProperty -Full

NAME
    SetCommandLineProperty

SYNOPSIS
    Set software command line property.

SYNTAX
    SetCommandLineProperty [-CommandLineGuid] &lt;Guid&gt; [-PropertyName] &lt;String&gt; [-PropertyValue] &lt;String&gt; [-Server]
    &lt;String&gt; [[-Credential] &lt;PSCredential&gt;] [&lt;CommonParameters&gt;]


DESCRIPTION


PARAMETERS
    -CommandLineGuid &lt;Guid&gt;
        GUID of software command line

        Required?                    true
        Position?                    1
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -PropertyName &lt;String&gt;
        name of property. Valid properties are: Name, Description, CommandLine, CommandLineType, IsDefault,
        SuccessCodes, FailureCodes, PackageGuid

        Required?                    true
        Position?                    2
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -PropertyValue &lt;String&gt;
        The property value is passed into the method as a string, appropriate conversion will then be performed on
        that string. The value CommandLineType should be a Guid, IsDefault is a bool value so it should be "true" or
        "false", and PackageGuid should be a Guid.

        Required?                    true
        Position?                    3
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -Server &lt;String&gt;

        Required?                    true
        Position?                    4
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    -Credential &lt;PSCredential&gt;

        Required?                    false
        Position?                    5
        Default value
        Accept pipeline input?       false
        Accept wildcard characters?  false

    &lt;CommonParameters&gt;
        This cmdlet supports the common parameters: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable, and OutVariable. For more information, see
        about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

INPUTS

OUTPUTS

    -------------------------- EXAMPLE 1 --------------------------

    PS C:\&gt;set failure codes for command line


    CopyC#
    SoftwareCommandLineManagementLib managementLib = new SoftwareCommandLineManagementLib();
    bool bResult = managementLib.SetCommandLineProperty(cmdLineGuid, "FailureCodes", "1,2,3,4,5");
    CopyVBScript
    set managementLib = CreateObject("Altiris.ASDK.SMF.SoftwareComponentManagement")
    bResult = managementLib.SetCommandLineProperty(cmdLineGuid, "FailureCodes", "1,2,3,4,5")
    CopyA
    set SMF=AltirisASDKSMF.exe
    set CMDLINE_GUID={A7B8BACC-D63B-466e-ABF6-2DC763CEBB6B}
    %SMF% cmd:SetCommandLineProperty "CommandLineGuid:%CMDLINE_GUID%" "PropertyName:FailureCodes"
    "PropertyValue:1,2,3,4,5"
    echo Failure Codes changed
    Remarks
    The CLI is being deprecated. Please see the CLI Programming Guide.






RELATED LINKS
</code></pre>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h2>Contributions</h2>

<p>Contributions are welcome! I would love for any of you to submit a pull request to the main branch in <a href="https://github.com/Tiberriver256/PowerShellSymantecAltirisASDK">Github</a>.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<h2>Suggestions / Bugs</h2>

<p>If you have any suggestions or bugs with the program please submit them as issues here:</p>

<p><a href="https://github.com/Tiberriver256/PowerShellSymantecAltirisASDK/issues">https://github.com/Tiberriver256/PowerShellSymantecAltirisASDK/issues</a></p>
