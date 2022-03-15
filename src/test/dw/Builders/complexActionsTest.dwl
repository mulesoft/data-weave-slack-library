%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::complexActions" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/complexActions.dwl", inputsFrom("Builders/complexActions/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/complexActions/TestScenario"))
    }
]