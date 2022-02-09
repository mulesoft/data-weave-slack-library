%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::buttonWithUrl" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/buttonWithUrl.dwl", inputsOf("Builders/buttonWithUrl/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/buttonWithUrl/TestScenario"))
    }
]