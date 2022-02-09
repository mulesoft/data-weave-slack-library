%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Template::newsletter" describedBy [
    "Assert TestScenario" in do {
        runMapping("Template/newsletter.dwl", inputsOf("Template/newsletter/TestScenario"),"application/json") must
                  equalTo(outputOf("Template/newsletter/TestScenario"))
    }
]