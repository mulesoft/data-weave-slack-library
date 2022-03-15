%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::buttonWithUrl" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/buttonWithUrl.dwl", inputsFrom("Builders/buttonWithUrl/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/buttonWithUrl/TestScenario"))
    }
]