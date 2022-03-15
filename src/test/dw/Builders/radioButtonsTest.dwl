%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::radioButtons" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/radioButtons.dwl", inputsFrom("Builders/radioButtons/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/radioButtons/TestScenario"))
    }
]