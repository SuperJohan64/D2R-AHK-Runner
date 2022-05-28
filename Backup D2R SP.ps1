$SourceDirectory = "${env:USERPROFILE}\Saved Games\Diablo II Resurrected"
$BackupDirectory = "$PSScriptRoot\Backups"
$TimeStamp = Get-Date -Format "MM-dd-yyyy HH-mm"
if (-not (Test-Path $BackupDirectory)) {New-Item $BackupDirectory -ItemType Directory}
Compress-Archive -Path $SourceDirectory -DestinationPath "$BackupDirectory\D2R SP $TimeStamp.zip"