using System;
using System.Management.Automation;

namespace TestIssueOnPowerShellCore
{
    public class TestData
    {
        public string TestProperty { get; set; }
    }


    [Cmdlet("Test", "TranscriptIssue")]
    public class TestTranscriptIssue : PSCmdlet
    {
        protected override void ProcessRecord()
        {
            var data = new TestData
            {
                TestProperty = "TestValue"
            };
            WriteObject(data);
        }
    }
}
