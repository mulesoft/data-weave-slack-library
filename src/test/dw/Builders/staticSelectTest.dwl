%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::staticSelect" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/staticSelect.dwl", inputsFrom("Builders/staticSelect/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/staticSelect/TestScenario"))
    }
]