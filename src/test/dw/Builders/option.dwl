%dw 2.0
import * from slack::Builders
output application/json
---
option(text("Hello"), "hello_opt")
