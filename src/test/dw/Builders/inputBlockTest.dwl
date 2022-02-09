%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::inputBlock" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/inputBlock.dwl", inputsOf("Builders/inputBlock/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/inputBlock/TestScenario"))
    }
]