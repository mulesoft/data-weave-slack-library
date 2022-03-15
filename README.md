# DataWeave Slack Library

![MuleSoft + Slack](pages/MuleSlack.png "MuleSoft + Slack")

This library provides constructs to simplify working with Slack blocks. Types can provide guidance and validation
when you write complex block structures. Builder functions help keep code lean by eliminating all boilerplate code.

Consider [this](https://app.slack.com/block-kit-builder/TLK2W2W10#%7B%22blocks%22:%5B%7B%22type%22:%22section%22,%22text%22:%7B%22type%22:%22plain_text%22,%22text%22:%22Your%20next%20meeting%20is%20coming%20up:%22,%22emoji%22:true%7D%7D,%7B%22type%22:%22divider%22%7D,%7B%22type%22:%22section%22,%22text%22:%7B%22type%22:%22mrkdwn%22,%22text%22:%22*Iris%20/%20Zelda%201-1*%5CnTuesday,%20January%2021%204:00-4:30pm%5CnBuilding%202%20-%20Havarti%20Cheese%20(3)%22%7D,%22accessory%22:%7B%22type%22:%22image%22,%22image_url%22:%22https://api.slack.com/img/blocks/bkb_template_images/notifications.png%22,%22alt_text%22:%22calendar%22%7D%7D,%7B%22type%22:%22context%22,%22elements%22:%5B%7B%22type%22:%22image%22,%22image_url%22:%22https://api.slack.com/img/blocks/bkb_template_images/notificationsWarningIcon.png%22,%22alt_text%22:%22warning%20icon%22%7D,%7B%22type%22:%22mrkdwn%22,%22text%22:%22Will%20change%20status%20to%20*busy*%22%7D%5D%7D,%7B%22type%22:%22divider%22%7D,%7B%22type%22:%22actions%22,%22elements%22:%5B%7B%22type%22:%22button%22,%22text%22:%7B%22type%22:%22plain_text%22,%22text%22:%22Cancel%22,%22emoji%22:true%7D,%22action_id%22:%22cancel-meeting%22,%22style%22:%22danger%22%7D%5D%7D%5D%7D)
59 line block kit JSON to generate this message:
![block kit example](pages/example.png)

With the DataWeave Slack library, you can generate blocks with this simple script or easily refactor the script into a dynamic one:

```dataweave
%dw 2.0
import * from slack::Builders
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

## [slack::Blocks](/src/main/dw/slack/Blocks.dwl )

Representation of all Slack [blocks](https://api.slack.com/reference/block-kit/blocks):

________________________________


## [slack::Builders](/src/main/dw/slack/Builders.dwl )

Provides functions to simplify the creation and composition of [blocks](https://api.slack.com/block-kit), [elements](https://api.slack.com/reference/block-kit/block-elements) and [objects](https://api.slack.com/reference/block-kit/composition-objects):

________________________________


## [slack::Elements](/src/main/dw/slack/Elements.dwl )

Representation of all Slack [elements](https://api.slack.com/reference/block-kit/block-elements):

________________________________


## [slack::Objects](/src/main/dw/slack/Objects.dwl )

Representation of all Slack [objects](https://api.slack.com/reference/block-kit/composition-objects):

________________________________

## Contributions Welcome

Before creating a pull request review the following:

* [LICENSE](LICENSE.txt)
* [SECURITY](SECURITY.md)
* [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md)

When you submit your pull request, you are asked to sign a contributor license agreement (CLA) if we don't have one on file for you.
