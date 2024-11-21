<#
.SYNOPSIS
PowerShell modle
.DESCRIPTION
Author: Chun Pan Yung
#>
$folders = @('Public')

foreach ( $folder in $folders) {

    $files = Get-ChildItem -Path "$PSScriptRoot\$folder\*.ps1" -Recurse

    Foreach ( $thisFile in $files ) {
        Try {
            Write-Verbose ('dot sourcing {0}' -f $thisFile.FullName)
            . $thisFile.fullname
            if ( $folder -eq 'Public' ) {
                Export-ModuleMember -Function $thisFile.Basename
                $publicFunction += $thisFile.BaseName
            }
        }
        Catch {
            Write-Error ("Failed to import function {0}: {1}" -f $thisFile.fullname, $folder)
        }
    }
}
