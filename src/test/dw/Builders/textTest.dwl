%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::text" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/text.dwl", inputsFrom("Builders/text/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/text/TestScenario"))
    }
]