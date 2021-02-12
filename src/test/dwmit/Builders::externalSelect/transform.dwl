%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
---
externalSelect("Choose a dish", "dishes")
