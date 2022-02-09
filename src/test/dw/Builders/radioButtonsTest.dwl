%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::radioButtons" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/radioButtons.dwl", inputsOf("Builders/radioButtons/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/radioButtons/TestScenario"))
    }
]