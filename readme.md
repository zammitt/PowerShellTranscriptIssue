# Start/Stop Transcript Issue

Start/Stop transcript does not always capture all output written to the PowerShell console.

Given the following script (The project file in this repo is configured to launch pwsh and execute this script upon start):

```
Start-Transcript -Path transcript.txt -UseMinimalHeader

Write-Output "Hello from Write-Output"
Write-Host "Hello from Write-Host"

Test-TranscriptIssue

Write-Output "Goodbye from Write-Output"
Write-Host "Goodbye from Write-Host"

Stop-Transcript

# Write out the transcript to the console
cat ./transcript.txt
```
We get the following output:
![Console Output](TestIssueOnPowerShellCore/console.png)

There are two interesting observations here.  
1) `Goodbye from Write-Output` is appearing before the output of `Test-TranscriptIssue`.
2) The output of `Test-Transcript` and `Goodbye from Write-Output` is missing from the transcript.

Things to note:
- We were only able to reproduce this with Cmdlets that use WriteObject (as seen in Test-TranscriptIssue.cs).   If we replace `Test-TranscriptIssue` with `Get-Module` in the script, everthing seems to work as expected.
- It feels like WriteObject is introducing a delay to the output pipeline that is causing Stop-Transcript to write to file before it is finished processing.
