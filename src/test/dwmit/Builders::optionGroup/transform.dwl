%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
var options = ["4.2.2", "4.3.0"] map ((item) -> option(item, item))
---
optionGroup("Recommended", options)
