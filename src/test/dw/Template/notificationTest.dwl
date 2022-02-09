%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::notification" describedBy [
    "Assert TestScenario" in do {
        runMapping("Template/notification.dwl", inputsOf("Template/notification/TestScenario"),"application/json") must
                  equalTo(outputOf("Template/notification/TestScenario"))
    }
]