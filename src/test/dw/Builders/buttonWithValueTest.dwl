%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::buttonWithValue" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/buttonWithValue.dwl", inputsOf("Builders/buttonWithValue/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/buttonWithValue/TestScenario"))
    }
]