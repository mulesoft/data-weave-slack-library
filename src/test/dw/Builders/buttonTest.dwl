%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::button" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/button.dwl", inputsOf("Builders/button/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/button/TestScenario"))
    }
]