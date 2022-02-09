%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
var selectedVersion = "4.3.0"
var latestVersion = "2.3.0-20210119"
var downloadButton = buttonWithUrl(":arrow_down: Download", "download", "http://httpbin.org")
---
blocks([
    section("The latest update for $(selectedVersion) is *$(latestVersion)*", downloadButton),
    divider(),
    section("To install, check instructions"),
    divider(),
    actions([buttonWithValue(":leftwards_arrow_with_hook: Back", "back", selectedVersion)])
])
