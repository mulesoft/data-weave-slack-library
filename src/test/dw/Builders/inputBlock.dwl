%dw 2.0
import * from slack::Builders
output application/json
var options = ["Thai", "Italian", "Greek", "Chinese"] map option($, lower($))
---
inputBlock("Please select your desired lunch:", staticSelect("Options", "food", options))
