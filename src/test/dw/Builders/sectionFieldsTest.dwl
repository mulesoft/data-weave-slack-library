%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::sectionFields" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/sectionFields.dwl", inputsFrom("Builders/sectionFields/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/sectionFields/TestScenario"))
    }
]