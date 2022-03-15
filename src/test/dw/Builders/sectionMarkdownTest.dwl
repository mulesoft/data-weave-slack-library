%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::sectionMarkdown" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/sectionMarkdown.dwl", inputsFrom("Builders/sectionMarkdown/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/sectionMarkdown/TestScenario"))
    }
]