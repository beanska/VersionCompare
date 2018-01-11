

@{

# Script module or binary module file associated with this manifest.
RootModule = 'VersionCompare.psm1'

# Version number of this module.
ModuleVersion = '0.8.0.0'

# ID used to uniquely identify this module
#GUID = '4fb06411-cfeb-47fd-bf25-c0fbbdc6a09b'

# Author of this module
Author = 'Ben @beanska'

# Company or vendor of this module
# CompanyName = 'TMAutomations'

# Copyright statement for this module
Copyright = 'Ben @beanska. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Used for comparing versions that might not fit in a standard version datatype.'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '2.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module
#DotNetFrameworkVersion = '4.5'

# Minimum version of the common language runtime (CLR) required by this module
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module
# Functions to export from this module
FunctionsToExport = @(
    'Invoke-VersionCompare'
)

# Cmdlets to export from this module
# CmdletsToExport = '*'

# Variables to export from this module
# VariablesToExport = '*'

# Aliases to export from this module
# AliasesToExport = '*'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
<#
FileList = @(
    'en-US\LICENCE.md',
    'en-US\about_HPWarranty.help.txt',
    'en-US\HPWarranty.Help.xml',
    'Public\Get-HPIncWarrantyEntitlement.ps1',
    'Public\Get-HPSystemInformationFromCMDB.ps1',
    'Public\Get-HPEntWarrantyEntitlment.ps1',
    'Private\Get-HPProductNumberAndSerialNumber.ps1',
    'Private\Invoke-HPIncSOAPRequest.ps1',
    'Private\Invoke-HPEntSOAPRequest.ps1',
    'RequestTemplates\HPEntWarrantyRegistration.xml',
    'RequestTemplates\HPEntWarrantyEntitlement.xml',
	'RequestTemplates\HPIncWarrantyEntitlement.xml'
    'HPWarranty.psd1',
    'HPWarranty.psm1'
)
#>
# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = @(
            'Comapre',
            'Version',
            'Drivers',
            'Firmware'
        )

        # A URL to the license for this module.
        #LicenseUri = ''

        # A URL to the main website for this project.
        #ProjectUri = ''

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = ''

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = 'HP'

}