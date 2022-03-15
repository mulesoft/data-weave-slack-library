%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::complexBlock" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/complexBlock.dwl", inputsFrom("Builders/complexBlock/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/complexBlock/TestScenario"))
    }
]