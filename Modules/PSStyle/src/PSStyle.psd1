# Module manifest for module 'PSStyle'
@{
    RootModule = 'PSStyle.psm1'
    ModuleVersion = '1.1.9'
    GUID = 'aebeb4be-3ed1-4712-aaf6-b47c896dd97c'
    Author = 'sewhee@microsoft.com'
    CompanyName = 'Microsoft'
    Copyright = '(c) 2022 Microsoft. All rights reserved.'
    PowerShellVersion = '5.1'
    FormatsToProcess = 'PSStyle.Format.ps1xml'
    NestedModules = 'PSStyle.class.psm1'
    FunctionsToExport = @()
    CmdletsToExport = @()
    VariablesToExport = 'PSStyle'
    AliasesToExport = @()
    DscResourcesToExport = @()
    FileList = @(
        'PSStyle.Format.ps1xml',
        'PSStyle.psd1',
        'PSStyle.psm1',
        'PSStyle.class.psm1'
    )
    Description = @'
This module creates the `$PSStyle` variable for versions of PowerShell that
don't have it built-in. For compatibility, the variable includes the same
nested properties that `$PSStyle` has in PowerShell 7.2 and higher. However,
the features that use some of those properties aren't available in versions of
PowerShell prior to 7.2.

The purpose is to provide the ANSI string definitions and the `FromRGB()`
methods so that you can use the same `$PSStyle` code in your profile scripts
for Windows PowerShell 5.1 and PowerShell 7.2 and higher.

This module doesn't export any commands. Only the `$PSStyle` variable is exported.

If you import the module in PowerShell 7.2 `Get-Module` shows that the module is loaded
but the module is empty. `$PSStyle` isn't exported or changed.
'@
    PrivateData = @{
        PSData = @{
            # Tags = @()
            LicenseUri = 'https://github.com/sdwheeler/ToolModules/blob/main/LICENSE'
            ProjectUri = 'https://github.com/sdwheeler/ToolModules/tree/main/Modules/PSStyle'
            # IconUri = ''
            # ReleaseNotes = ''
        }
    }
}
