$extensions = (
    "DavidAnson.vscode-markdownlint",
    "ms-python.isort",
    "ms-python.python",
    "ms-python.vscode-pylance",
    "ms-toolsai.jupyter",
    "ms-toolsai.jupyter-keymap",
    "ms-toolsai.jupyter-renderers",
    "ms-toolsai.vscode-jupyter-cell-tags",
    "ms-toolsai.vscode-jupyter-slideshow",
    "1yib.rust-bundle",
    "bradlc.vscode-tailwindcss",
    "dustypomerleau.rust-syntax",
    "esbenp.prettier-vscode",
    "github.vscode-github-actions",
    "golang.go",
    "hashicorp.terraform",
    "mechatroner.rainbow-csv",
    "ms-kubernetes-tools.vscode-kubernetes-tools",
    "redhat.vscode-yaml",
    "rust-lang.rust-analyzer",
    "serayuzgur.crates",
    "unifiedjs.vscode-mdx",
    "yzhang.markdown-all-in-one"
)

foreach ($item in $extensions) {
    code  --install-extension $item
}