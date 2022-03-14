%dw 2.0
import * from slack::Builders
output application/json
var recommendedGroup = optionGroup("Recommended", ["4.3.0", "4.2.2"] map option($, $))
var otherGroup = optionGroup("Others", ["4.2.1", "4.2.0"] map option($, $))
var options = [recommendedGroup, otherGroup]
---
staticSelectByGroups("Choose a version...", "version_menu", [recommendedGroup, otherGroup])
