/**
* Provides functions to simplify the creation and composition of:
*
* - https://api.slack.com/block-kit[blocks]
* - https://api.slack.com/reference/block-kit/block-elements[elements]
* - https://api.slack.com/reference/block-kit/composition-objects[objects]
*/

%dw 2.0
import * from org::mule::weave::slack::modules::Blocks
import * from org::mule::weave::slack::modules::Elements
import * from org::mule::weave::slack::modules::Objects
import mergeWith from dw::core::Objects

/**
* Generates the standard block kit syntax to define a group of blocks.
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | blocks | The array of blocks to render | Array<Block>
* |===
*
* === Example
*
* In this example, a simple section is generated and used as a block.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  blocks([section("Hello there!")])
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*    "blocks": [
*     {
*        "type": "section",
*        "text": {
*          "type": "plain_text",
*          "text": "Hello there!",
*         "emoji": true
*        }
*      }
*    ]
* }
* ----
*/
fun blocks(blocks: Array<Block>) = {
    blocks: blocks
}

/**
*  Generates an actions block.
*
* https://api.slack.com/reference/block-kit/blocks#actions[actions]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | actions | The array of interactive elements to render | Array<Element>
* |===
*
* === Example
*
* In this example, an actions block featuring a simple button is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  actions([button("Click me!", "bait")])
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "actions",
*   "elements": [
*     {
*       "type": "button",
*       "text": {
*         "type": "plain_text",
*         "text": "Click me!",
*         "emoji": true
*       },
*       "action_id": "bait"
*     }
*   ]
* }
* ----
*/
fun actions(actions: Array<Element>) : Actions = {
    'type': "actions",
    elements: actions
}

/**
*  Generates a divider block.
*
* https://api.slack.com/reference/block-kit/blocks#divider[divider]
*
* === Example
*
* In this example, a divider block is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  divider()
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "divider"
* }
* ----
*/
fun divider() : Divider = {
    'type': "divider"
}

/**
*  Generates a plain text object, with emojis enabled.
*
* https://api.slack.com/reference/block-kit/composition-objects#text[text]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The text to use | String
* |===
*
* === Example
*
* In this example, a text object featuring a wave emoji is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  text("Hello! :wave:")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "plain_text",
*   "text": "Hello! :wave:",
*   "emoji": true
* }
* ----
*/
fun text(message : String) : PlainText = {
    'type': "plain_text",
    text: message,
    emoji: true
}

/**
*  Generates a mrkdwn text object.
*
* https://api.slack.com/reference/block-kit/composition-objects#text[text]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The mrkdwn to use | String
* |===
*
* === Example
*
* In this example, a mrkdwn text object featuring bold text is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  mrkdwn("*Hello*")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "mrkdwn",
*   "text": "*Hello*"
* }
* ----
*/
fun mrkdwn(message: String) : Mrkdwn = {
    'type': "mrkdwn",
    text: message
}

/**
*  Generates a simple section block, with a mrkdwn object.
*
* https://api.slack.com/reference/block-kit/blocks#section[section]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired mrkdwn text | String
* |===
*
* === Example
*
* In this example, a section with a mrkdwn text is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  section("Hello!")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "section",
*   "text": {
*     "type": "mrkdwn",
*     "text": "Hello!"
*   }
* }
* ----
*/
fun section(message: String) : Section = section(mrkdwn(message))

/**
*  Generates a section block, with a text object.
*
* https://api.slack.com/reference/block-kit/blocks#section[section]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The text object to use | Text
* |===
*
* === Example
*
* In this example, a section with mrkdwn text is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  section(mrkdwn("*Hello*"))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "section",
*   "text": {
*     "type": "mrkdwn",
*     "text": "*Hello*"
*   }
* }
* ----
*/
fun section(text : Text) : Section = {
    'type': "section",
    text: text
}

/**
* Generates a section block, with a mrkdwn text object and an accessory element.
*
* https://api.slack.com/reference/block-kit/blocks#section[section]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired mrkdwn text | String
* | accessory | The element to use | Element
* |===
*
* === Example
*
* In this example, a section with simple text and a simple button is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* section("*Tim's Farewell Party* is tonight at 8 PM", button("RSVP", "invite"))
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*     "type": "section",
*     "text": {
*       "type": "mrkdwn",
*       "text": "*Tim's Farewell Party* is tonight at 8 PM"
*     },
*     "accessory": {
*       "type": "button",
*       "text": {
*         "type": "plain_text",
*         "text": "RSVP",
*         "emoji": true
*       },
*       "action_id": "invite"
*     }
*   }
* ----
**/
fun section(message: String, accessory: Element) : Section = section(mrkdwn(message), accessory)

/**
*  Generates a section block, with a text object and an accessory element.
*
* https://api.slack.com/reference/block-kit/blocks#section[section]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The text object to use | Text
* | accessory | The element to use | Element
* |===
*
* === Example
*
* In this example, a section with mrkdwn text and a simple button is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  section(mrkdwn("*Hello*"), button("Click me!", "bait"))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "section",
*   "text": {
*     "type": "mrkdwn",
*     "text": "*Hello*"
*   },
*   "accessory": {
*     "type": "button",
*     "text": {
*       "type": "plain_text",
*       "text": "Click me!",
*       "emoji": true
*     },
*     "action_id": "bait"
*   }
* }
* ----
*/
fun section(text: Text, accessory : Element) : Section = {
    'type': "section",
    text: text,
    accessory: accessory
}

/**
*  Generates a section block, with an array of text objects or fields.
*
* https://api.slack.com/reference/block-kit/blocks#section[section]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | fields | An array of text objects to use | Array<Text>
* |===
*
* === Example
*
* In this example, a section with a mrkdwn text and a plain text is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  section([mrkdwn("*Hello*"), text("Bye!")])
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*    "type": "section",
*    "fields": [
*      {
*        "type": "mrkdwn",
*        "text": "*Hello*"
*      },
*      {
*        "type": "plain_text",
*        "text": "Bye!",
*        "emoji": true
*      }
*    ]
*  }
* ----
*/
fun section(fields: Array<Text>) : Section = {
    'type': "section",
    fields: fields
}

/**
*  Generates a section block, with an array of text objects, or fields, and an accessory element.
*
* https://api.slack.com/reference/block-kit/blocks#section[section]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | fields | An array of text objects to use | Array<Text>
* | accessory | The element to use | Element
* |===
*
* === Example
*
* In this example, a section with mrkdwn text, plain text and a simple button is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  section([mrkdwn("*Hello*"), text("Bye!")], button("Click me!", "bait"))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "section",
*   "fields": [
*     {
*       "type": "mrkdwn",
*       "text": "*Hello*"
*     },
*     {
*       "type": "plain_text",
*       "text": "Bye!",
*       "emoji": true
*     }
*   ],
*   "accessory": {
*     "type": "button",
*     "text": {
*       "type": "plain_text",
*       "text": "Click me!",
*       "emoji": true
*     },
*     "action_id": "bait"
*   }
* }
* ----
*/
fun section(fields: Array<Text>, accessory : Element) : Section = {
    'type': "section",
    fields: fields,
    accessory: accessory
}

/**
*  Generates a header block, with a simple plain text object.
*
* https://api.slack.com/reference/block-kit/blocks#header[header]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired text | String
* |===
*
* === Example
*
* In this example, a header with a simple text is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  header("Hello!")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "header",
*   "text": {
*     "type": "plain_text",
*     "text": "Hello!",
*     "emoji": true
*   }
* }
* ----
*/
fun header(message: String) : Header = header(text(message))

/**
*  Generates a header block, with a plain text object.
*
* https://api.slack.com/reference/block-kit/blocks#header[header]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The plain text object to use | PlainText
* |===
*
* === Example
*
* In this example, a header with a plain text object with no support for emojis is generated.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
* header({
*     'type': "plain_text",
*     text: "Hello!",
*     emojis: false
* })
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "header",
*   "text": {
*     "type": "plain_text",
*     "text": "Hello!",
*     "emoji": false
*   }
* }
* ----
*/
fun header(text: PlainText) : Header = {
    'type': "header",
    text: text
}

/**
*  Generates a button element, with a simple plain text
*  object and ID.
*
* https://api.slack.com/reference/block-kit/block-elements#button[button]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired text | String
* | id | The value to use in `action_id` field | String
* |===
*
* === Example
*
* In this example, a button with a simple text is generated, using an ID called "bait".
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  button("Click me!", "bait")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Click me!",
*     "emoji": true
*   },
*   "action_id": "bait"
* }
* ----
*/
fun button(message: String, id: String) : Button = button(text(message), id)

/**
*  Generates a button element, with a plain text object and ID.
*
* https://api.slack.com/reference/block-kit/block-elements#button[button]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The plain text object to use | PlainText
* | id | The value to use in `action_id` field | String
* |===
*
* === Example
*
* In this example, a button with a text with no emoji support is generated, using an ID called "bait".
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  button({'type': "plain_text", text: "Create your own :emoji:"}, "emoji")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Create your own :emoji:"
*   },
*   "action_id": "emoji"
* }
* ----
*/
fun button(text: PlainText, id: String) : Button = {
    'type': "button",
    text: text,
    action_id: id
}

/**
* Adds a value field to a button.
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | button | The button to add a value to | Button
* | value | The value to add | String
* |===
*
* === Example
*
* This example shows how `withValue` is used.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* button("Click me!", "bait") withValue "spam"
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Click me!",
*     "emoji": true
*   },
*   "action_id": "bait",
*   "value": "spam"
* }
* ----
**/
fun withValue(button: Button, value: String) : Button = button mergeWith {value: value}

/**
* Adds a url field to a button.
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | button | The button to add a value to | Button
* | url | The url to add | String
* |===
*
* === Example
*
* This example shows how `withUrl` is used.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* button("Click me!", "bait") withUrl "http://httpbin.org"
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Click me!",
*     "emoji": true
*   },
*   "action_id": "bait",
*   "url": "http://httpbin.org"
* }
* ----
**/
fun withUrl(button: Button, url: String) : Button = button mergeWith {url: url}

/**
* Adds a style field to a button.
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | button | The button to add a value to | Button
* | style | The style to add | Style
* |===
*
* === Example
*
* This example shows how `withStyle` is used.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* button("Click me!", "bait") withStyle "danger"
*
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Click me!",
*     "emoji": true
*   },
*   "action_id": "bait",
*   "style": "danger"
* }
* ----
**/
fun withStyle(button: Button, style: Style) : Button = button mergeWith {style: style}

/**
*  Generates a button element, with a simple plain text object, an ID and a value.
*
* https://api.slack.com/reference/block-kit/block-elements#button[button]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired text | String
* | id | The value to use in `action_id` field | String
* | value | The value to use | String
* |===
*
* === Example
*
* In this example, a button with a simple text is generated, using an ID called "bait" and a value.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  buttonWithValue("Click me!", "bait", "something to share")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Click me!",
*     "emoji": true
*   },
*   "action_id": "bait",
*   "value": "something to share"
* }
* ----
*/
fun buttonWithValue(message: String, id: String, value: String) : Button = buttonWithValue(text(message), id, value)

/**
*  Generates a button element, with a plain text object, an ID and a value.
*
* https://api.slack.com/reference/block-kit/block-elements#button[button]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired text | String
* | id | The value to use in `action_id` field | String
* | value | The value to use | String
* |===
*
* === Example
*
* In this example, a button with a text not supporting emojis is generated, using an ID called "bait" and a value.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  buttonWithValue({'type': "plain_text", text: "Create your own :emoji:"}, "emoji", "origin")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Create your own :emoji:"
*   },
*   "action_id": "emoji",
*   "value": "origin"
* }
* ----
*/
fun buttonWithValue(text: PlainText, id: String, value: String) : Button = button(text, id) withValue value

/**
*  Generates a button element, with a simple plain text object, an ID and an URL.
*
* https://api.slack.com/reference/block-kit/block-elements#button[button]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired text | String
* | id | The value to use in `action_id` field | String
* | url | The URL to use | String
* |===
*
* === Example
*
* In this example, a button with a simple text is generated, using an ID called "bait" and a URL leading to the Slack site.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  buttonWithUrl("Click me!", "bait", "https://slack.com")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Click me!",
*     "emoji": true
*   },
*   "action_id": "bait",
*   "url": "https://slack.com"
* }
* ----
*/
fun buttonWithUrl(message: String, id: String, url: String) : Button = buttonWithUrl(text(message), id, url)

/**
*  Generates a button element, with a plain text object, an ID and an URL.
*
* https://api.slack.com/reference/block-kit/block-elements#button[button]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The plain text object to use | PlainText
* | id | The value to use in `action_id` field | String
* | url | The URL to use | String
* |===
*
* === Example
*
* In this example, a button with a no emoji supporting text is generated, using an ID called "bait" and a URL leading to the Slack site.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  buttonWithUrl({'type': "plain_text", text: "Create your own :emoji:"}, "emoji", "https://slack.com")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "button",
*   "text": {
*     "type": "plain_text",
*     "text": "Create your own :emoji:"
*   },
*   "action_id": "emoji",
*   "url": "https://slack.com"
* }
* ----
*/
fun buttonWithUrl(text: PlainText, id : String, url: String) : Button = button(text, id) withUrl url

/**
*  Generates an option object, with a simple plain text
*  object and its value.
*
* https://api.slack.com/reference/block-kit/composition-objects#option[option]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired text | String
* | value | The value to use in the option | String
* |===
*
* === Example
*
* In this example, multiple options are generated from a list of Strings, using the same text and value.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* var versions = ["4.3.0", "4.2.2", "4.1.6"]
* ---
*  versions map ((item) -> option(item, item))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* [
*   {
*     "text": {
*       "type": "plain_text",
*       "text": "4.3.0",
*       "emoji": true
*     },
*     "value": "4.3.0"
*   },
*   {
*     "text": {
*       "type": "plain_text",
*       "text": "4.2.2",
*       "emoji": true
*     },
*     "value": "4.2.2"
*   },
*   {
*     "text": {
*       "type": "plain_text",
*       "text": "4.1.6",
*       "emoji": true
*     },
*     "value": "4.1.6"
*   }
* ]
* ----
*/
fun option(message: String, value: String) = option(text(message), value)

/**
*  Generates an option object, with a text object and its value.
*
* https://api.slack.com/reference/block-kit/composition-objects#option[option]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The text to use | Text
* | value | The value to use in the option | String
* |===
*
* === Example
*
* In this example, an option is generated with mrkdwn text to select the color red while its value references the hex
* color representation for red.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* ---
*  option(mrkdwn("*Red*"), "FF0000")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "text": {
*     "type": "mrkdwn",
*     "text": "*Red*"
*   },
*   "value": "FF0000"
* }
* ----
*/
fun option(text: Text, val: String) : Option = {
    text: text,
    value: val
}

/**
*  Generates an option group object, with a simple plain text object and its options.
*
* https://api.slack.com/reference/block-kit/composition-objects#option_group[option group]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired text | String
* | options | The options to group | Array<Option>
* |===
*
* === Example
*
* In this example, an option group is generated with a simple value for some options.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* var options = ["4.3.0", "4.2.2"] map ((item) -> option(item, item))
* ---
*  optionGroup("Recommended", options)
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "label": {
*     "type": "plain_text",
*     "text": "Recommended",
*     "emoji": true
*   },
*   "options": [
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.3.0",
*         "emoji": true
*       },
*       "value": "4.3.0"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.2",
*         "emoji": true
*       },
*       "value": "4.2.2"
*     }
*   ]
* }
* ----
*/
fun optionGroup(message: String, options: Array<Option>) : OptionGroup = optionGroup(text(message), options)

/**
*  Generates an option group object, with a plain text object and its options.
*
* https://api.slack.com/reference/block-kit/composition-objects#option_group[option group]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The plain text to use | PlainText
* | options | The options to group | Array<Option>
* |===
*
* === Example
*
* In this example, an option group is generated with a text for some options.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* var options = ["4.2.0", "4.2.1"] map ((item) -> option(item, item))
* ---
*  optionGroup({'type': "plain_text", text: "Others"}, options)
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "label": {
*     "type": "plain_text",
*     "text": "Others"
*   },
*   "options": [
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.0",
*         "emoji": true
*       },
*       "value": "4.2.0"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.1",
*         "emoji": true
*       },
*       "value": "4.2.1"
*     }
*   ]
* }
* ----
*/
fun optionGroup(text : PlainText, options: Array<Option>) : OptionGroup = {
    label: text,
    options: options
}

/**
*  Generates a static select element, with a simple plain text object as placeholder, its ID and options.
*
* https://api.slack.com/reference/block-kit/block-elements#static_select[static select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired placeholder | String
* | id | The value to use in `action_id` field | String
* | options | The array of options to offer | Array<Option>
* |===
*
* === Example
*
* In this example, a static group of options are offered with a simple text placeholder.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* var options = ["4.3.0", "4.2.2", "4.1.6"] map ((item) -> option(item, item))
* ---
*  staticSelect("Choose a version...", "version_menu", options)
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "static_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Choose a version...",
*     "emoji": true
*   },
*   "action_id": "version_menu",
*   "options": [
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.3.0",
*         "emoji": true
*       },
*       "value": "4.3.0"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.2",
*         "emoji": true
*       },
*       "value": "4.2.2"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.1.6",
*         "emoji": true
*       },
*       "value": "4.1.6"
*     }
*   ]
* }
* ----
*/
fun staticSelect(placeholder: String, id: String, options: Array<Option>) : StaticSelect = staticSelect(text(placeholder), id, options)

/**
*  Generates a static select element, with a simple plain text object as placeholder, its ID and option groups.
*
* https://api.slack.com/reference/block-kit/block-elements#static_select[static select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired placeholder | String
* | id | The value to use in `action_id` field | String
* | optionGroups | The array of options groups to offer | Array<OptionGroup>
* |===
*
* === Example
*
* In this example, a static group of option groups are offered with a simple text placeholder.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* var recommendedGroup = optionGroup("Recommended", [option("4.3.0", "latest")])
* var otherGroup = optionGroup("Other", [option("4.1.1", "original")])
* ---
*  staticSelectGrouped("Choose a version...", "version_menu", [recommendedGroup, otherGroup])
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "static_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Choose a version...",
*     "emoji": true
*   },
*   "action_id": "version_menu",
*   "option_groups": [
*     {
*       "label": {
*         "type": "plain_text",
*         "text": "Recommended",
*         "emoji": true
*       },
*       "options": [
*         {
*           "text": {
*             "type": "plain_text",
*             "text": "4.3.0",
*             "emoji": true
*           },
*           "value": "latest"
*         }
*       ]
*     },
*     {
*       "label": {
*         "type": "plain_text",
*         "text": "Others",
*         "emoji": true
*       },
*       "options": [
*         {
*           "text": {
*             "type": "plain_text",
*             "text": "4.1.1",
*             "emoji": true
*           },
*           "value": "original"
*         }
*       ]
*     }
*   ]
* }
* ----
*/
fun staticSelectByGroups(placeholder: String, id: String, optionGroups: Array<OptionGroup>) : StaticSelect = staticSelectByGroups(text(placeholder), id, optionGroups)

/**
*  Generates an static select element, with a simple plain text object as placeholder, its ID and options.
*
* https://api.slack.com/reference/block-kit/block-elements#static_select[static select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use in the desired placeholder | String
* | id | The value to use in `action_id` field | String
* | options | The array of options to offer | Array<Option>
* |===
*
* === Example
*
* In this example, a static group of options are offered with a simple text placeholder.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* var options = ["4.3.0", "4.2.2", "4.1.6"] map ((item) -> option(item, item))
* ---
*  staticSelect("Choose a version...", "version_menu", options)
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "static_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Choose a version...",
*     "emoji": true
*   },
*   "action_id": "version_menu",
*   "options": [
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.3.0",
*         "emoji": true
*       },
*       "value": "4.3.0"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.2",
*         "emoji": true
*       },
*       "value": "4.2.2"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.1.6",
*         "emoji": true
*       },
*       "value": "4.1.6"
*     }
*   ]
* }
* ----
*/
fun staticSelect(placeholder: PlainText, id: String, options: Array<Option>) : StaticSelect = {
    'type': "static_select",
    placeholder: placeholder,
    action_id: id,
    options: options
}

/**
*  Generates an static select element, with a plain text object as placeholder, its ID and option groups.
*
* https://api.slack.com/reference/block-kit/block-elements#static_select[static select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | text | The text to use as placeholder | PlainText
* | id | The value to use in `action_id` field | String
* | optionGroups | The array of options groups to offer | Array<OptionGroup>
* |===
*
* === Example
*
* In this example, a static group of option groups are offered with a text placeholder.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from org::mule::weave::slack::Builders
* var recommendedGroup = optionGroup("Recommended", [option("4.3.0", "latest")])
* var otherGroup = optionGroup("Other", [option("4.1.1", "original")])
* ---
*  staticSelectByGroups({'type': "plain_text", text:"Some versions"}, "version_menu", [recommendedGroup, otherGroup])
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "static_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Some versions"
*   },
*   "action_id": "version_menu",
*   "option_groups": [
*     {
*       "label": {
*         "type": "plain_text",
*         "text": "Recommended",
*         "emoji": true
*       },
*       "options": [
*         {
*           "text": {
*             "type": "plain_text",
*             "text": "4.3.0",
*             "emoji": true
*           },
*           "value": "latest"
*         }
*       ]
*     },
*     {
*       "label": {
*         "type": "plain_text",
*         "text": "Others",
*         "emoji": true
*       },
*       "options": [
*         {
*           "text": {
*             "type": "plain_text",
*             "text": "4.1.1",
*             "emoji": true
*           },
*           "value": "original"
*         }
*       ]
*     }
*   ]
* }
* ----
*/
fun staticSelectByGroups(placeholder: PlainText, id: String, optionGroups: Array<OptionGroup>) : StaticSelect = {
    'type': "static_select",
    placeholder: placeholder,
    action_id: id,
    'option_groups': optionGroups
}

/**
* Generates an external select element, with a simple plain text object as placeholder and its ID.
*
* https://api.slack.com/reference/block-kit/block-elements#external_select[external select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | placeholder | The value to use in the desired placeholder | String
* | id | The value to use in `action_id` field | String
* |===
*
* === Example
*
* This example shows how `externalSelect` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* externalSelect("Choose a dish", "dishes")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "external_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Choose a dish",
*     "emoji": true
*   },
*   "action_id": "dishes"
* }
* ----
**/
fun externalSelect(placeholder: String, id: String) : ExternalSelect = externalSelect(text(placeholder), id)

/**
* Generates an external select element, with a text object as placeholder and its ID.
*
* https://api.slack.com/reference/block-kit/block-elements#external_select[external select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | placeholder | The text to use in the desired placeholder | PlainText
* | id | The value to use in `action_id` field | String
* |===
*
* === Example
*
* This example shows how `externalSelect` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* externalSelect(text("Choose a dish"), "dishes")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "external_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Choose a dish",
*     "emoji": true
*   },
*   "action_id": "dishes"
* }
* ----
**/
fun externalSelect(placeholder: PlainText, id : String) : ExternalSelect = {
    "type" : "external_select",
    placeholder: placeholder,
    action_id: id
}

/**
* Generates an image element, with its URL and alternative text.
*
* https://api.slack.com/reference/block-kit/block-elements#image[image]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | url | The URL to the image | String
* | text | The text to use if the image cannot be rendered | String
* |===
*
* === Example
*
* This example shows how `image` behaves..
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* image("https://api.slack.com/img/blocks/bkb_template_images/profile_1.png", "Michael Scott")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "image",
*   "image_url": "https://api.slack.com/img/blocks/bkb_template_images/profile_1.png",
*   "alt_text": "Michael Scott"
* }
* ----
**/
fun image(url : String, text: String) : Image = {
    "type": "image",
    image_url: url,
    alt_text: text
}

/**
* Generates an image block with a simple text title.
*
* https://api.slack.com/reference/block-kit/blocks#image[image block]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | url | The url for the image | String
* | altText | The alternative text for the image | String
* | title | The value to use for the text title | String
* |===
*
* === Example
*
* This example shows how `image` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* image("https://api.slack.com/img/blocks/bkb_template_images/profile_1.png", "profile pic", "Your new profile picture is saved")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "image",
*   "image_url": "https://api.slack.com/img/blocks/bkb_template_images/profile_1.png",
*   "alt_text": "profile pic",
*   "title": {
*     "type": "plain_text",
*     "text": "Your new profile picture is saved",
*     "emoji": true
*   }
* }
* ----
**/
fun image(url : String, altText: String, title: String) : ImageBlock = image(url, altText, text(title))

/**
* Generates an image block with a text title.
*
* https://api.slack.com/reference/block-kit/blocks#image[image block]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | url | The url for the image | String
* | altText | The alternative text for the image | String
* | title | The text value to use as title | PlainText
* |===
*
* === Example
*
* This example shows how `image` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* image("https://api.slack.com/img/blocks/bkb_template_images/profile_1.png", "profile pic", text("Your new profile picture is saved"))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "image",
*   "image_url": "https://api.slack.com/img/blocks/bkb_template_images/profile_1.png",
*   "alt_text": "profile pic",
*   "title": {
*     "type": "plain_text",
*     "text": "Your new profile picture is saved",
*     "emoji": true
*   }
* }
* ----
**/
fun image(url : String, altText: String, title: PlainText) : ImageBlock = image(url, altText) mergeWith {title: title}

/**
* Generates a context block with a single plain text element item.
*
* https://api.slack.com/reference/block-kit/blocks#context[context]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | message | The value to use as text | String
* |===
*
* === Example
*
* This example shows how `context` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* context(":calendar: Make sure to add this to your events")
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "context",
*   "elements": [
*     {
*       "type": "plain_text",
*       "text": ":calendar: Make sure to add this to your events",
*       "emoji": true
*     }
*   ]
* }
* ----
**/
fun context(message: String) : Context = context([text(message)])

/**
* Generates a context block with the desired elements.
*
* https://api.slack.com/reference/block-kit/blocks#context[context]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | elements | The image or text elements | Array<Image|Text>
* |===
*
* === Example
*
* This example shows how `context` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* context([mrkdwn("Built with :heart: by the DataWeave team")])
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "context",
*   "elements": [
*     {
*       "type": "mrkdwn",
*       "text": "Built with :heart: by the DataWeave team"
*     }
*   ]
* }
* ----
**/
fun context(elements: Array<Image|Text>) : Context = {
    "type": "context",
    elements: elements
}

/**
* Generates an input block with a simple text label.
*
* https://api.slack.com/reference/block-kit/blocks#input[input block]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | label | The label for the input | String
* | element | The element to use in the input | Element
* |===
*
* === Example
*
* This example shows how `inputBlock` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* inputBlock("Please select your desired lunch:", inputText("lunch"))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "input",
*   "label": {
*     "type": "plain_text",
*     "text": "Please select your desired lunch:",
*     "emoji": true
*   },
*   "element": {
*     "type": "plain_text_input",
*     "action_id": "lunch",
*     "multiline": false
*   }
* }
* ----
**/
fun inputBlock(label: String, element: Element) : Input = inputBlock(text(label), element)

/**
* Generates an input block.
*
* https://api.slack.com/reference/block-kit/blocks#input[input block]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | label | The label for the input | PlainText
* | element | The element to use in the input | Element
* |===
*
* === Example
*
* This example shows how `inputBlock` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* inputBlock(text("Please select your desired lunch:"), inputText("lunch"))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "input",
*   "label": {
*     "type": "plain_text",
*     "text": "Please select your desired lunch:",
*     "emoji": true
*   },
*   "element": {
*     "type": "plain_text_input",
*     "action_id": "lunch",
*     "multiline": false
*   }
* }
* ----
**/
fun inputBlock(label: PlainText, element: Element) : Input = {
    "type": "input",
    label: label,
    element: element
}

/**
* Generates an input object.
*
* https://api.slack.com/reference/block-kit/block-elements#input[input text]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | id | The value to use in the `action_id` field | String
* | multiline | Whether the input should be multiline. Defaults to false. | Boolean
* |===
*
* === Example
*
* This example shows how `inputText` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* inputText("suggestions", true)
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "plain_text_input",
*   "action_id": "suggestions",
*   "multiline": true
* }
* ----
**/
fun inputText(id: String, multiline: Boolean = false) : PlainTextInput = {
    "type": "plain_text_input",
    action_id: id,
    multiline: multiline
}

/**
* Generates a radio buttons group, given its ID and options.
*
* https://api.slack.com/reference/block-kit/block-elements#radio[radio button group]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | id | The value to use in the `action_id` field | String
* | options | The options to group | Array<Option>
* |===
*
* === Example
*
* This example shows how `radioButtons` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* ---
* radioButtons("food", ["spaghetti", "fusilli", "orecchiette"] map option($, $))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "radio_buttons",
*   "action_id": "food",
*   "options": [
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "spaghetti",
*         "emoji": true
*       },
*       "value": "spaghetti"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "fusilli",
*         "emoji": true
*       },
*       "value": "fusilli"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "orecchiette",
*         "emoji": true
*       },
*       "value": "orecchiette"
*     }
*   ]
* }
* ----
**/
fun radioButtons(id: String, options: Array<Option>) : RadioButtonGroup = {
    "type": "radio_buttons",
    action_id: id,
    options: options
}

/**
* Generates a multi static select element, with a simple text placeholder, ID and options.
*
* https://api.slack.com/reference/block-kit/block-elements#multi_select[multi select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | placeholder | The value to use in the desired placeholder | String
* | id | The value to use in the `action_id` field | String
* | options | The options to select | Array<Option>
* |===
*
* === Example
*
* This example shows how `multiStaticSelect` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* var versions = ["4.2.1", "4.2.2", "4.3.0"]
* ---
* multiStaticSelect("Choose versions...", "versions", versions map ((item, index) -> option(item, item)))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "multi_static_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Choose versions...",
*     "emoji": true
*   },
*   "action_id": "versions",
*   "options": [
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.1",
*         "emoji": true
*       },
*       "value": "4.2.1"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.2",
*         "emoji": true
*       },
*       "value": "4.2.2"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.3.0",
*         "emoji": true
*       },
*       "value": "4.3.0"
*     }
*   ]
* }
* ----
**/
fun multiStaticSelect(placeholder: String, id: String, options: Array<Option>) : MultiStaticSelect = multiStaticSelect(text(placeholder), id, options)

/**
* Generates a multi static select element, with its placeholder, ID and options.
*
* https://api.slack.com/reference/block-kit/block-elements#multi_select[multi select]
*
* === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | placeholder | The text to use as placeholder | PlainText
* | id | The value to use in the `action_id` field | String
* | options | The options to select | Array<Option>
* |===
*
* === Example
*
* This example shows how `multiStaticSelect` behaves.
*
* ==== Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* var versions = ["4.2.1", "4.2.2", "4.3.0"]
* ---
* multiStaticSelect(text("Choose versions..."), "versions", versions map ((item, index) -> option(item, item)))
* ----
*
* ==== Output
*
* [source,Json,linenums]
* ----
* {
*   "type": "multi_static_select",
*   "placeholder": {
*     "type": "plain_text",
*     "text": "Choose versions...",
*     "emoji": true
*   },
*   "action_id": "versions",
*   "options": [
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.1",
*         "emoji": true
*       },
*       "value": "4.2.1"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.2.2",
*         "emoji": true
*       },
*       "value": "4.2.2"
*     },
*     {
*       "text": {
*         "type": "plain_text",
*         "text": "4.3.0",
*         "emoji": true
*       },
*       "value": "4.3.0"
*     }
*   ]
* }
* ----
**/
fun multiStaticSelect(placeholder: PlainText, id: String, options: Array<Option>) : MultiStaticSelect = {
    "type": "multi_static_select",
    placeholder: placeholder,
    action_id: id,
    options: options
}
