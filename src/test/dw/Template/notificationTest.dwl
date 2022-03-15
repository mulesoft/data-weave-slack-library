%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::notification" describedBy [
    "Assert TestScenario" in do {
        evalPath("Template/notification.dwl", inputsFrom("Template/notification/TestScenario"),"application/json") must
                  equalTo(outputFrom("Template/notification/TestScenario"))
    }
]