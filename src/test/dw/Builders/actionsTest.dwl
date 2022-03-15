%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::actions" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/actions.dwl", inputsFrom("Builders/actions/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/actions/TestScenario"))
    }
]