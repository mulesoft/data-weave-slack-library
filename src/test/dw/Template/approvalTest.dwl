%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::approval" describedBy [
    "Assert TestScenario" in do {
        runMapping("Template/approval.dwl", inputsOf("Template/approval/TestScenario"),"application/json") must
                  equalTo(outputOf("Template/approval/TestScenario"))
    }
]