Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1

# Run Joplin
C:\'Program Files'\Joplin\Joplin.exe

# Install the latest version of joplin-garden-worker (jgw)
Set-Location C:\Users\mdema\code\joplin-garden-worker

npm -g i
npm link
refreshenv

# Export notes
Set-Location C:\Users\mdema\code\garden

jgw export .\content\joplin

# Format notes
npm -g i prettier
prettier content/ --write
