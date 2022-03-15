%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::buttonWithStyle" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/buttonWithStyle.dwl", inputsFrom("Builders/buttonWithStyle/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/buttonWithStyle/TestScenario"))
    }
]