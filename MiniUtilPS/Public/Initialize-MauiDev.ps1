function Initialize-MauiDev {
    <#
    .SYNOPSIS
    Setup dotnet and maui development environment with Visual Studio Code
    .EXAMPLE
    Install-DotNet
    .OUTPUTS
    none
    #>
    [CmdletBinding()]
    param(
        [switch] $Android
    )
    # Install dotnet workload maui
    dotnet workload install maui
    # Install VS Code extension
    ext install ms-dotnettools.dotnet-maui
    # Install dotnet tool for maui checking
    dotnet tool install -g Redth.Net.Maui.Check

    Write-Output "DONE"
}
