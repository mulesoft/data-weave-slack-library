%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::header" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/header.dwl", inputsFrom("Builders/header/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/header/TestScenario"))
    }
]