%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::staticSelect" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/staticSelect.dwl", inputsOf("Builders/staticSelect/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/staticSelect/TestScenario"))
    }
]