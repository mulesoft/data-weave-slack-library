%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::complexBlock" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/complexBlock.dwl", inputsOf("Builders/complexBlock/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/complexBlock/TestScenario"))
    }
]