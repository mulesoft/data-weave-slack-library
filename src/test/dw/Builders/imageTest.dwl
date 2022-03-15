%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::image" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/image.dwl", inputsFrom("Builders/image/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/image/TestScenario"))
    }
]