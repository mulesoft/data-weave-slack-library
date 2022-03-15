%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::poll" describedBy [
    "Assert TestScenario" in do {
        evalPath("Template/poll.dwl", inputsFrom("Template/poll/TestScenario"),"application/json") must
                  equalTo(outputFrom("Template/poll/TestScenario"))
    }
]