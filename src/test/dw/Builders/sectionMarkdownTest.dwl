%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::sectionMarkdown" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/sectionMarkdown.dwl", inputsOf("Builders/sectionMarkdown/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/sectionMarkdown/TestScenario"))
    }
]