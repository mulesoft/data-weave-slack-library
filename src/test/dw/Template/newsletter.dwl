%dw 2.0
import * from org::mule::weave::slack::modules::Builders
import mergeWith from dw::core::Objects
output application/json
var details = "*<fakeLink.toUserProfiles.com|Iris / Zelda 1-1>*\nTuesday, January 21 4:00-4:30pm\nBuilding 2 - Havarti Cheese (3)\n2 guests"
---
blocks([
    header(":newspaper:  Paper Company Newsletter  :newspaper:"),
    context([mrkdwn("*November 12, 2019*  |  Sales Team Announcements")]),
    divider(),
    section(" :loud_sound: *IN CASE YOU MISSED IT* :loud_sound:"),
    section("Replay our screening of *Threat Level Midnight* and pick up a copy of the DVD to give to your customers at the front desk.", button("Watch now", "watch")),
    section("The *2019 Dundies* happened. \nAwards were given, heroes were recognized. \nCheck out *#dundies-2019* to see who won awards."),
    divider(),
    section(":calendar: |   *UPCOMING EVENTS*  | :calendar: "),
    section("`11/20-11/22` *Beet the Competition* _ annual retreat at Schrute Farms_", button("RSVP", "beet")),
    section("`12/01` *Toby's Going Away Party* at _Benihana_", button("Learn More", "tim")),
    section("`11/13` :pretzel: *Pretzel Day* :pretzel: at _Scranton Office_", button("RSVP", "pretzel")),
    divider(),
    section(":calendar: |   *PAST EVENTS*  | :calendar: "),
    section("`10/21` *Conference Room Meeting*", button("Watch Recording", "meeting")),
    section("*FOR YOUR INFORMATION*"),
    section(mrkdwn(":printer: *Sabre Printers* are no longer catching on fire! The newest version of our printers are safe to use. Make sure to tell your customers today.") mergeWith {verbatim: false}),
    divider(),
    section("Please join me in welcoming our 3 *new hires* to the Paper Company family! \n\n *Robert California*, CEO \n\n *Ryan Howard*, Temp \n\n *Erin Hannon*, Receptionist "),
    divider(),
    context([mrkdwn(":pushpin: Do you have something to include in the newsletter? Here's *how to submit content*.")])
])
