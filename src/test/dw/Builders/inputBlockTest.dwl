%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::inputBlock" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/inputBlock.dwl", inputsFrom("Builders/inputBlock/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/inputBlock/TestScenario"))
    }
]