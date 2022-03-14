%dw 2.0
import * from slack::Builders
output application/json
---
radioButtons("food", ["spaghetti", "fusilli", "orecchiette"] map option($, $))
