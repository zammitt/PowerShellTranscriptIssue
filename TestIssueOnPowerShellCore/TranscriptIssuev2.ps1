function Test-TranscriptIssueProxy {

    Start-Transcript -Path transcript.txt -UseMinimalHeader | Out-Null

    (Test-TranscriptIssueFunction | Out-Default -Transcript)

    Stop-Transcript | Out-Null

    cat ./transcript.txt
}

function Test-TranscriptIssueFunction { 
    Write-Output "Hello from Write-Output"
    Test-TranscriptIssue 
    Write-Output "Goodbye from Write-Output"
}

Test-TranscriptIssueProxy

