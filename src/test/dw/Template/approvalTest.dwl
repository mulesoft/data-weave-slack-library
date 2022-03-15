%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::approval" describedBy [
    "Assert TestScenario" in do {
        evalPath("Template/approval.dwl", inputsFrom("Template/approval/TestScenario"),"application/json") must
                  equalTo(outputFrom("Template/approval/TestScenario"))
    }
]