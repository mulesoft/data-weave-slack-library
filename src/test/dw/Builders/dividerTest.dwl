%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::divider" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/divider.dwl", inputsFrom("Builders/divider/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/divider/TestScenario"))
    }
]