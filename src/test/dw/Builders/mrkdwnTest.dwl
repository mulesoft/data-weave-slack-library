%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::mrkdwn" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/mrkdwn.dwl", inputsOf("Builders/mrkdwn/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/mrkdwn/TestScenario"))
    }
]