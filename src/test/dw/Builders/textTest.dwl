%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::text" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/text.dwl", inputsOf("Builders/text/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/text/TestScenario"))
    }
]