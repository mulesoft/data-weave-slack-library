%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::button" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/button.dwl", inputsFrom("Builders/button/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/button/TestScenario"))
    }
]