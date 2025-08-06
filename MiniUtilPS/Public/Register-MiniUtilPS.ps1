
function Register-MiniUtilPS {
    <#
    .SYNOPSIS
    Bootstrap this powershell module.
    .EXAMPLE
    Register-MiniUtilPS
    .OUTPUTS
    none
    #>

    $DocumentPath = Join-Path -Path $([Environment]::GetFolderPath("MyDocuments")) `
        -ChildPath "WindowsPowerShell\Modules"
    New-Item -Path $DocumentPath -ItemType Directory
}
