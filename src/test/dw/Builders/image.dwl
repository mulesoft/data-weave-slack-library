%dw 2.0
import * from slack::Builders
output application/json
---
image("https://api.slack.com/img/blocks/bkb_template_images/profile_1.png", "profile pic", "Your new profile picture is saved")
