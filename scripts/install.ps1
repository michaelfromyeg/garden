# Install all necessary dependencies for the project

# ASSUMES: choco is installed
# USAGE: `. install.ps1` from a PowerShell terminal

choco install git make golang hugo-extended -y

refreshenv

go install github.com/jackyzha0/hugo-obsidian@latest
