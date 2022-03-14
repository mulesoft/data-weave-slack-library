%dw 2.0
import * from slack::Builders
output application/json
var details = "*<fakeLink.toUserProfiles.com|Iris / Zelda 1-1>*\nTuesday, January 21 4:00-4:30pm\nBuilding 2 - Havarti Cheese (3)\n2 guests"
---
blocks([
    section(text("Looks like you have a scheduling conflict with this event:")),
    divider(),
    section(details, image("https://api.slack.com/img/blocks/bkb_template_images/notifications.png", "calendar thumbnail")),
    context([
        image("https://api.slack.com/img/blocks/bkb_template_images/notificationsWarningIcon.png", "notifications warning icon"),
        mrkdwn("*Conflicts with Team Huddle: 4:15-4:30pm*")
    ]),
    divider(),
    section("*Today - 4:30-5pm*\nEveryone is available: @iris, @zelda", button("Choose", "click_me_123")),
    section("*Tomorrow - 4-4:30pm*\nEveryone is available: @iris, @zelda", button("Choose", "click_me_124")),
    section("*Tomorrow - 6-6:30pm*\nSome people aren't available: @iris, ~@zelda~", button("Choose", "click_me_125")),
    section("*<fakelink.ToMoreTimes.com|Show more times>*")
])
