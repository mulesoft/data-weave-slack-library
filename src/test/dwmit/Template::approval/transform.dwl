%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
var request = "You have a new request:\n*<google.com|Fred Enriquez - Time Off request>*"
var details = "*Type:*\nPaid time off\n*When:*\nAug 10-Aug 13\n*Hours:* 16.0 (2 days)\n*Remaining balance:* 32.0 hours (4 days)\n*Comments:* \"Family in town, going camping!\""
---
blocks([
    section(request),
    section(details, image("https://api.slack.com/img/blocks/bkb_template_images/approvalsNewDevice.png", "computer thumbnail")),
    actions([
        button("Approve", "click_me_123") withStyle "primary",
        button("Deny", "click_me_124") withStyle "danger"
    ])
])
