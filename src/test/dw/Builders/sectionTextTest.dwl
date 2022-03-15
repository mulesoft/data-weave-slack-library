%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::sectionText" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/sectionText.dwl", inputsFrom("Builders/sectionText/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/sectionText/TestScenario"))
    }
]