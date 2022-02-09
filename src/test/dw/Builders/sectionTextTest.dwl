%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::sectionText" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/sectionText.dwl", inputsOf("Builders/sectionText/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/sectionText/TestScenario"))
    }
]