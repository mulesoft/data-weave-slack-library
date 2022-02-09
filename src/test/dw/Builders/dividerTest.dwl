%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::divider" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/divider.dwl", inputsOf("Builders/divider/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/divider/TestScenario"))
    }
]