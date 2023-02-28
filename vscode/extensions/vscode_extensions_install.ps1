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
    "ms-vscode-remote.remote-containers"
)

foreach ($item in $extensions) {
    code  --install-extension $item
}