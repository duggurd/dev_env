$obj_packages = winget ls | ConvertFrom-String -PropertyNames "Name","Id","Version","Available","Source" -Delimiter "\s{2,}"

[System.Collections.ArrayList]$delete_packages = @()

$counter = 0


function main_f() {
    :main while ( $counter -le $obj_packages.Count ) {
        $package = $obj_packages[$counter]
        $package_name = $package.Name

        if ($package.Delete -And $package.Delete -eq $true) {
            $color = "Red"
        } else {
            $color = "Green"
        }

        Write-Host "#${counter} Package Name: ${package_name}" -ForegroundColor $color -NoNewline
        $action = Read-Host " [d|u|n|p|f|r|q]"

        switch ( $action.ToLower() ) {
            "d" { 
                $package | Add-Member -NotePropertyName Delete -NotePropertyValue $true -Force
                $delete_packages.Remove($package)
                $delete_packages.Add($package) > $null
            }
            "u" {
                $package | Add-Member -NotePropertyName Delete -NotePropertyValue $false -Force
                $delete_packages.Remove($package)
            }
            "n" { $counter += 1 }
            "p" { $counter -= 1 }
            "f" { break main }
            "r" { 
                $delete_packages.Clear() 
                $counter = 0
            }
            "q" { exit }
            Default { Write-Output "`n'${action}' is not a valid option [d, u, n, p, f, r, q]
        d - mark for deletion
        u - unset for deletion
        n - next package 
        p - previous package
        f - done
        r - reset
        q - exit"
            }
        }
    }
}

main_f("")

$p_count = $delete_packages.Count
Write-Output "The following ${p_count} packages will be removed:"

foreach( $package in $delete_packages ) {
    $package_name = $package.Name
    $package_source = $Package.Source
    Write-Output "${package_name} | ${package_source}" 
}

$confirmation = Read-Host "Confirm? [Y/n]"

switch ( $confirmation.ToLower() ) {
    "y" {
        foreach( $package in $delete_packages ) {
            winget remove $package.Id
        }
    }

    "n" { main_f("") }
}
