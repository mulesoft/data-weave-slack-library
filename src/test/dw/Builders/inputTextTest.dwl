%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::inputText" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/inputText.dwl", inputsOf("Builders/inputText/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/inputText/TestScenario"))
    }
]