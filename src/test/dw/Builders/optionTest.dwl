%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::option" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/option.dwl", inputsOf("Builders/option/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/option/TestScenario"))
    }
]