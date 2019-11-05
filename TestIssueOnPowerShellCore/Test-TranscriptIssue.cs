using System;
using System.Management.Automation;

namespace TestIssueOnPowerShellCore
{
    public class Data
    {
        public string Name { get; set; }
        public bool Test { get; set; }
    }


    [Cmdlet("Test", "TranscriptIssue")]
    public class TestTranscriptIssue : PSCmdlet
    {
        protected override void ProcessRecord()
        {
            var data = new Data
            {
                Name = "Test",
                Test = true
            };
            WriteObject(data);
        }
    }
}
