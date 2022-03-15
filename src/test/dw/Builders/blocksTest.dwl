%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::blocks" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/blocks.dwl", inputsFrom("Builders/blocks/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/blocks/TestScenario"))
    }
]