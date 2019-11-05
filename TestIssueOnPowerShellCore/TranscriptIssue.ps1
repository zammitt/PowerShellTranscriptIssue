Import-Module TranscriptIssue

Start-Transcript -Path transcript.txt -UseMinimalHeader

Write-Host "Hello from Write-Host"
Write-Output "Hello from Write-Output"

Test-TranscriptIssue
Get-Module

Write-Host "Goodbye from Write-Host"
Write-Output "Goodbye from Write-Output"

Stop-Transcript

# Write out the transcript to the console
cat ./transcript.txt