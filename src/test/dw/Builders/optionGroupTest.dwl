%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::optionGroup" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/optionGroup.dwl", inputsFrom("Builders/optionGroup/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/optionGroup/TestScenario"))
    }
]