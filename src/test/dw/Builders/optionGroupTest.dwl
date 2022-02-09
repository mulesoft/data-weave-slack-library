%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::optionGroup" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/optionGroup.dwl", inputsOf("Builders/optionGroup/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/optionGroup/TestScenario"))
    }
]