%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
---
buttonWithUrl(text("Download now"), "download", "http://httpbin.org")
