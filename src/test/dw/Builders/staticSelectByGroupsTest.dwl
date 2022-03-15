%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts
---
"Test Builders::staticSelectByGroups" describedBy [
    "Assert TestScenario" in do {
        evalPath("Builders/staticSelectByGroups.dwl", inputsFrom("Builders/staticSelectByGroups/TestScenario"),"application/json") must
                  equalTo(outputFrom("Builders/staticSelectByGroups/TestScenario"))
    }
]