Start-Transcript -Path transcript.txt -UseMinimalHeader

Write-Output "Hello from Write-Output"
Write-Host "Hello from Write-Host"

Get-Module

Write-Output "Goodbye from Write-Output"
Write-Host "Goodbye from Write-Host"

Stop-Transcript

# Write out the transcript to the console
cat ./transcript.txt