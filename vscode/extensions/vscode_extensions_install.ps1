$extensions = (
    "DavidAnson.vscode-markdownlint",
    "ms-azuretools.vscode-docker",
    "ms-python.isort",
    "ms-python.python",
    "ms-python.vscode-pylance",
    "ms-toolsai.jupyter",
    "ms-toolsai.jupyter-keymap",
    "ms-toolsai.jupyter-renderers",
    "ms-toolsai.vscode-jupyter-cell-tags",
    "ms-toolsai.vscode-jupyter-slideshow",
    "ms-vscode-remote.remote-containers",
    "unifiedjs.vscode-mdx",
    "ms-vscode.powershell",
    "mechatroner.rainbow-csv",
    "1YiB.rust-bundle",
    "bradlc.vscode-tailwindcss",
    "ms-vscode-remote.remote-wsl",
    "ms-azuretools.vscode-docker"
)

foreach ($item in $extensions) {
    code  --install-extension $item
}