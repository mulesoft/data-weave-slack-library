%dw 2.0
import * from slack::Builders
output application/json
---
buttonWithUrl(text("Download now"), "download", "http://httpbin.org")
