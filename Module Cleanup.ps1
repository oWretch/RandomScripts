# Module Cleanup

#@TODO Trigger update first

$AllModules = Get-InstalledModule | Sort-Object Name -Unique

foreach ($module in $AllModules) {
    Write-Output "$($module.name): Checking versions"
    $Latest = Get-InstalledModule $module.name
    Write-Output "$($module.name): Latest version is $($latest.version)"
    $AllVersions = Get-InstalledModule $module.name -AllVersions
    Write-Output "$($module.name): $($AllVersions.count) versions found [$($AllVersions.version -join ', ')]."
      
    foreach ($sm in $AllVersions) {
        if ([Version]$sm.version -lt [Version]$latest.version)  {
            Write-Output "$($module.name): Uninstalling version $($sm.version)."
            $sm | Uninstall-Module -AllowPrerelease -Force
        }
    }
}
