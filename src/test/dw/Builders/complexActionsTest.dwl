%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::complexActions" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/complexActions.dwl", inputsOf("Builders/complexActions/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/complexActions/TestScenario"))
    }
]