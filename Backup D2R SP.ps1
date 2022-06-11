$timeStamp = Get-Date -Format "MM-dd-yyyy HH-mm"
$xmlName = "Backup D2R SP.xml"
$xmlPath = "$PSScriptRoot\$xmlName"
$defaultSourceDirectory = "$env:USERPROFILE\Saved Games\Diablo II Resurrected"
$defaultBackupDirectory = "$PSScriptRoot\Backups"
$defaultbackupFileName = "D2R SP"

if (Test-Path $xmlPath) {
    $xmlData = Import-Clixml -Path $xmlPath
}
else {
    $sourceDirectory = Read-Host "`nEnter the source folder for your single character backups.`nLeave blank and press enter to use the default path ($defaultSourceDirectory).`n`Source Folder Path"
    if ($sourceDirectory -eq "") {
        $sourceDirectory = "$defaultSourceDirectory"
    }
    $sourceDirectory = $sourceDirectory.Replace('"',"")

    $backupDirectory = Read-Host "`nEnter the destination for your backups.`nLeave blank and press enter to use the default ($defaultBackupDirectory).`n`nBackup Folder Path"
    if ($backupDirectory -eq "") {
        $backupDirectory = "$defaultBackupDirectory"
    }
    $backupDirectory = $backupDirectory.Replace('"',"")

    $backupFileName = Read-Host "`nEnter the name for your backups.`nLeave blank and press enter to use the default ($defaultbackupFileName).`n`nBackup Names"
    if ($backupFileName -eq "") {
        $backupFileName = "$defaultbackupFileName"
    }
    $backupFileName = $backupFileName.Replace('"',"")

    $xmlData = @()
    $xmlData = New-Object -TypeName psobject -Property @{
        sourceDirectory = $sourceDirectory
        backupDirectory = $backupDirectory
        backupFileName = $backupFileName
    }

    $xmlData | Export-Clixml -path $xmlPath -ErrorAction Stop
}

if (-not (Test-Path $xmlData.backupDirectory)) {
    New-Item $xmlData.backupDirectory -ItemType Directory
}

Compress-Archive -Path $xmlData.sourceDirectory -DestinationPath ($xmlData.backupDirectory + "\" + $xmlData.backupFileName + " $timeStamp.zip")