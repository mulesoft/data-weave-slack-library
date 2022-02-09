%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
---
radioButtons("food", ["spaghetti", "fusilli", "orecchiette"] map option($, $))
