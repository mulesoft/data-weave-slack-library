%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
var versions = ["4.2.1", "4.2.2", "4.3.0"]
var select = staticSelect("Choose version...", "version", versions map ((item, index) -> option(item, item)))
---
blocks([section(mrkdwn("Find latest updates and fixed issues for available versions:"), select)])
