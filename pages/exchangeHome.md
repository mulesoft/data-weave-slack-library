# DataWeave Slack Module

This module provides constructs to simplify working with Slack's blocks. Types can be used to get guidance and validation
when writing complex block structures while builder functions help keep code lean by taking care of all boilerplate code.

Consider [this](https://app.slack.com/block-kit-builder/TLK2W2W10#%7B%22blocks%22:%5B%7B%22type%22:%22section%22,%22text%22:%7B%22type%22:%22plain_text%22,%22text%22:%22Your%20next%20meeting%20is%20coming%20up:%22,%22emoji%22:true%7D%7D,%7B%22type%22:%22divider%22%7D,%7B%22type%22:%22section%22,%22text%22:%7B%22type%22:%22mrkdwn%22,%22text%22:%22*Iris%20/%20Zelda%201-1*%5CnTuesday,%20January%2021%204:00-4:30pm%5CnBuilding%202%20-%20Havarti%20Cheese%20(3)%22%7D,%22accessory%22:%7B%22type%22:%22image%22,%22image_url%22:%22https://api.slack.com/img/blocks/bkb_template_images/notifications.png%22,%22alt_text%22:%22calendar%22%7D%7D,%7B%22type%22:%22context%22,%22elements%22:%5B%7B%22type%22:%22image%22,%22image_url%22:%22https://api.slack.com/img/blocks/bkb_template_images/notificationsWarningIcon.png%22,%22alt_text%22:%22warning%20icon%22%7D,%7B%22type%22:%22mrkdwn%22,%22text%22:%22Will%20change%20status%20to%20*busy*%22%7D%5D%7D,%7B%22type%22:%22divider%22%7D,%7B%22type%22:%22actions%22,%22elements%22:%5B%7B%22type%22:%22button%22,%22text%22:%7B%22type%22:%22plain_text%22,%22text%22:%22Cancel%22,%22emoji%22:true%7D,%22action_id%22:%22cancel-meeting%22,%22style%22:%22danger%22%7D%5D%7D%5D%7D)
59 line block kit JSON to generate this message:

With the DataWeave Slack module you can generate it with this simple script that can be quickly refactored into a dynamic version:
```dataweave
%dw 2.0
import * from org::mule::weave::slack::modules::Builders
output application/json
var calendar = image("https://api.slack.com/img/blocks/bkb_template_images/notifications.png", "calendar")
---
blocks([
    section(text("Your next meeting is coming up:")),
    divider(),
    section("*Iris / Zelda 1-1*\nTuesday, January 21 4:00-4:30pm\nBuilding 2 - Havarti Cheese (3)", calendar),
    context([
        image("https://api.slack.com/img/blocks/bkb_template_images/notificationsWarningIcon.png", "warning icon"),
        mrkdwn("Will change status to *busy*")
    ]),
    divider(),
    actions([button("Cancel", "cancel-meeting") withStyle "danger"])
])
```