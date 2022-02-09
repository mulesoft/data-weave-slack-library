%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::blocks" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/blocks.dwl", inputsOf("Builders/blocks/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/blocks/TestScenario"))
    }
]