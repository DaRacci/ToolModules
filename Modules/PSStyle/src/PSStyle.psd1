# Module manifest for module 'PSStyle'
@{
    RootModule = 'PSStyle.psm1'
    ModuleVersion = '1.0.1'
    GUID = 'aebeb4be-3ed1-4712-aaf6-b47c896dd97c'
    Author = 'sewhee@microsoft.com'
    CompanyName = 'Microsoft'
    Copyright = '(c) 2022 Microsoft. All rights reserved.'
    PowerShellVersion = '5.1'
    ScriptsToProcess = './PSStyle.init.ps1'
    FormatsToProcess = './PSStyle.Format.ps1xml'
    FunctionsToExport = @()
    CmdletsToExport = @()
    VariablesToExport = 'PSStyle'
    AliasesToExport = @()
    DscResourcesToExport = @()
    FileList = @('PSStyle.init.ps1','PSStyle.Format.ps1xml','PSStyle.psd1','PSStyle.psm1')
    Description = @'
        This module creates the `$PSStyle` variable for versions of PowerShell that don't
        have it built-in. For compatibility, the variable includes the same nested
        properties that `$PSStyle` has in PowerShell 7.2 and higher. However, the features
        that use some of those properties are not available in versions of PowerShell
        prior to 7.2.

        The purpose is to provide the ANSI string definitions and the `FromRGB()` methods
        so that you can use the same `$PSStyle` code in your profile scripts for Windows
        PowerShell 5.1 and PowerShell 7.2 and higher.

        Trying to import the module in PowerShell 7.2 or higher fails with the following
        error:

        InvalidOperation: Cannot overwrite variable PSStyle because it is read-only or constant.
        Import-Module: Cannot overwrite variable PSStyle because it is read-only or constant.
'@
    PrivateData = @{
        PSData = @{
            # Tags = @()
            # LicenseUri = ''
            # ProjectUri = ''
            # IconUri = ''
            # ReleaseNotes = ''
        }
    }
}
