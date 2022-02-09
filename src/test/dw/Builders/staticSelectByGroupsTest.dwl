%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::staticSelectByGroups" describedBy [
    "Assert TestScenario" in do {
        runMapping("Builders/staticSelectByGroups.dwl", inputsOf("Builders/staticSelectByGroups/TestScenario"),"application/json") must
                  equalTo(outputOf("Builders/staticSelectByGroups/TestScenario"))
    }
]