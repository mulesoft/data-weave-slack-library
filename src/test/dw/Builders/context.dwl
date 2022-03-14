%dw 2.0
import * from slack::Builders
output application/json
---
context([mrkdwn("Built with :heart: by the DataWeave team")])
