%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::mrkdwn" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/mrkdwn.dwl", inputsFrom("Builders/mrkdwn/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/mrkdwn/TestScenario"))
    }
]