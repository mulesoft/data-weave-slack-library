%dw 2.0
import * from slack::Builders
output application/json

var sushi = ":sushi: *Ace Wasabi Rock-n-Roll Sushi Bar*\nThe best landlocked sushi restaurant."
var burgers = ":hamburger: *Super Hungryman Hamburgers*\nOnly for the hungriest of the hungry."
var noodles = ":ramen: *Kagawa-Ya Udon Noodle Shop*\nDo you like to shop for noodles? We have noodles."
var team = {
    "Angela" : "https://api.slack.com/img/blocks/bkb_template_images/profile_4.png",
    "Dwight Schrute" : "https://api.slack.com/img/blocks/bkb_template_images/profile_2.png",
    "Michael Scott": "https://api.slack.com/img/blocks/bkb_template_images/profile_1.png",
    "Pam Beasely": "https://api.slack.com/img/blocks/bkb_template_images/profile_3.png"
}
var options = [
    {desc: sushi, votes: ["Michael Scott", "Dwight Schrute", "Pam Beasely"]},
    {desc: burgers, votes: ["Angela", "Dwight Schrute"]},
    {desc: noodles, votes: []}
]

fun votes(count: Array<String>) : String = sizeOf(count) match {
    case 0 -> "No votes"
    else -> $ ++ " votes"
}
---
blocks([
    section("*Where should we order lunch from?* Poll by <fakeLink.toUser.com|Mark>"),
    divider()
] ++
    flatten(options map ((item, index) -> [section(item.desc, button("Vote", index)),
                                    context(item.votes map image(team[$], $) ++ [text(votes(item.votes))])])) ++
[
    divider(),
    actions([button("Add a suggestion", "click_me_123")])
])
