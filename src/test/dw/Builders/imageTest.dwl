%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::image" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/image.dwl", inputsOf("Builders/image/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/image/TestScenario"))
    }
]