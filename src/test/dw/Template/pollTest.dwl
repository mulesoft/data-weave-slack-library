%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::poll" describedBy [
    "Assert TestScenario" in do {
        runMapping("Template/poll.dwl", inputsOf("Template/poll/TestScenario"),"application/json") must
                  equalTo(outputOf("Template/poll/TestScenario"))
    }
]