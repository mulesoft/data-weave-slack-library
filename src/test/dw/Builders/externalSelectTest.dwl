%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::externalSelect" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/externalSelect.dwl", inputsOf("Builders/externalSelect/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/externalSelect/TestScenario"))
    }
]