%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::multiStaticSelect" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/multiStaticSelect.dwl", inputsOf("Builders/multiStaticSelect/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/multiStaticSelect/TestScenario"))
    }
]