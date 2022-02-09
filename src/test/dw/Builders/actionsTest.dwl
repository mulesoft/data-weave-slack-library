%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::actions" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/actions.dwl", inputsOf("Builders/actions/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/actions/TestScenario"))
    }
]