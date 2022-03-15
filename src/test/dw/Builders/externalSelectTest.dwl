%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::externalSelect" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/externalSelect.dwl", inputsFrom("Builders/externalSelect/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/externalSelect/TestScenario"))
    }
]