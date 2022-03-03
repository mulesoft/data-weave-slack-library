%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::sectionFields" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/sectionFields.dwl", inputsOf("Builders/sectionFields/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/sectionFields/TestScenario"))
    }
]