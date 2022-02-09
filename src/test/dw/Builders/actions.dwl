%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
---
actions([button(text("Click me"), "bait"), button("Download", "download")])
