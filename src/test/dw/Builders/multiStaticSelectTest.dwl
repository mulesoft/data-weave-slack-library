%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::multiStaticSelect" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/multiStaticSelect.dwl", inputsFrom("Builders/multiStaticSelect/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/multiStaticSelect/TestScenario"))
    }
]