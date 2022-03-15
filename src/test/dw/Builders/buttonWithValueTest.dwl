%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::buttonWithValue" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/buttonWithValue.dwl", inputsFrom("Builders/buttonWithValue/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/buttonWithValue/TestScenario"))
    }
]