function Initialize-MauiDev {
    <#
    .SYNOPSIS
    Setup dotnet and maui development environment with Visual Studio Code
    .EXAMPLE
    Install-DotNet
    .OUTPUTS
    none
    #>
    dotnet workload install maui
    dotnet workload install maui-android
    ext install ms-dotnettools.dotnet-maui
    dotnet tool install -g Redth.Net.Maui.Check
    Write-Output "DONE"
}
