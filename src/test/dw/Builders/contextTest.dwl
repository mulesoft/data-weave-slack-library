%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::context" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/context.dwl", inputsOf("Builders/context/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/context/TestScenario"))
    }
]