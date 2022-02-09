%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
---
option(text("Hello"), "hello_opt")
