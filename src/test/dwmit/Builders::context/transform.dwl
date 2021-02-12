%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
---
context([mrkdwn("Built with :heart: by the DataWeave team")])
