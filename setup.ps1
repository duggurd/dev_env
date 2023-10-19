wsl --install
winget import packages.json --accept-package-agreements
./vscode/extensions/vscode_extensions_install.ps1
echo "Reboot required to finsigh setup."