%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::newsletter" describedBy [
    "Assert TestScenario" in do {
        evalPath("Template/newsletter.dwl", inputsFrom("Template/newsletter/TestScenario"),"application/json") must
                  equalTo(outputFrom("Template/newsletter/TestScenario"))
    }
]