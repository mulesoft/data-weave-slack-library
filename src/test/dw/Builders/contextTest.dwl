%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::context" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/context.dwl", inputsFrom("Builders/context/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/context/TestScenario"))
    }
]