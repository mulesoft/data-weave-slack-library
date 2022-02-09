%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::buttonWithStyle" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/buttonWithStyle.dwl", inputsOf("Builders/buttonWithStyle/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/buttonWithStyle/TestScenario"))
    }
]