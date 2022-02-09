%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
---
inputText("suggestions", true)
