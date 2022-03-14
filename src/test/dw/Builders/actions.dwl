%dw 2.0
import * from slack::Builders
output application/json
---
actions([button(text("Click me"), "bait"), button("Download", "download")])
