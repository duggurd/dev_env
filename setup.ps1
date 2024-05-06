Write-Output "Installing WSL"

wsl --install

Write-Output "Clean windows packages"
.\scripts\clean_windows.ps1

Write-Output "Installing Packages"
winget import packages.json --accept-package-agreements

Write-Output "Installing VSCOde extension"
./vscode/extensions/vscode_extensions_install.ps1


# Write-Output "Installing PWSH Modules"

# # https://github.com/dahlbyk/posh-git
# Install-Module posh-git -Scope CurrentUser -Force
# Write-Output "Import-Module posh-git" >> "$HOME\Documents\PowerShell\Profile.ps1"

# # https://github.com/junegunn/fzf#installation
# winget install fzf

# # https://github.com/kelleyma49/PSFzf
# Install-Module -Name PSFzf -Scope CurrentUser -Force
# Write-Output "Import-Module PSFzf" >> "$HOME\Documents\PowerShell\Profile.ps1"

# Write-Output "Reboot required to finish setup."