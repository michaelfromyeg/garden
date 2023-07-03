# Install all necessary dependencies for the project

# ASSUMES: Homebrew is installed
# USAGE: `. install.ps1` from a PowerShell terminal

brew install git make golang hugo

go install github.com/jackyzha0/hugo-obsidian@latest
