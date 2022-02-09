%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::header" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/header.dwl", inputsOf("Builders/header/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/header/TestScenario"))
    }
]