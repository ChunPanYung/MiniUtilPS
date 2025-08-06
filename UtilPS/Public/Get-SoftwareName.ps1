function Get-SoftwareName {
    <#
    .SYNOPSIS
    Get Software Display Name and GUID Name
    .EXAMPLE
    Get-SoftwareName
    .OUTPUTS
    none
    #>
    Get-ItemProperty HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\* | `
        Select-Object DisplayName, PSCHildName

}
