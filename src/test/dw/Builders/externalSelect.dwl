%dw 2.0
import * from slack::Builders
output application/json
---
externalSelect("Choose a dish", "dishes")
