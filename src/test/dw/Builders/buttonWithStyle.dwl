%dw 2.0
import * from slack::Builders
output application/json
---
buttonWithValue(text("Back"), "back", "4.3.0") withStyle "danger"
