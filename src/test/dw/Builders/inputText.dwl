%dw 2.0
import * from slack::Builders
output application/json
---
inputText("suggestions", true)
