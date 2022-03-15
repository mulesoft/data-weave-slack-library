%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::option" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/option.dwl", inputsFrom("Builders/option/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/option/TestScenario"))
    }
]