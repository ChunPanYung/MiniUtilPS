
function Register-UtilPS {
    <#
    .SYNOPSIS
    Bootstrap this powershell module.
    .EXAMPLE
    Register-UtilPS
    .OUTPUTS
    none
    #>

    $DocumentPath = Join-Path -Path $([Environment]::GetFolderPath("MyDocuments")) `
        -ChildPath "WindowsPowerShell\Modules"
    New-Item -Path $DocumentPath -ItemType Directory

    Import-Module -Force UtilPS
}
