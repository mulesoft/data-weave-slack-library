%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::inputText" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/inputText.dwl", inputsFrom("Builders/inputText/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/inputText/TestScenario"))
    }
]