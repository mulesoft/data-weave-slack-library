/**
*
* Provides functions to simplify the creation and composition of blocks.
*
*/

%dw 2.0
import * from org::mule::weave::slack::modules::Blocks
import * from org::mule::weave::slack::modules::Elements
import * from org::mule::weave::slack::modules::Objects
/**
*  Description for the function goes here
*
*  Make sure to include your input and output parameters table, like so:
*
*  === Parameters
*
* [%header, cols="1,3"]
* |===
* | Name   | Description | Type
* | in | My input paramenter | String
* |===
*
*  It is also a good idea to showcase the usage of your function with an example.
*
*
* === Example
*
* === Source
*
* [source,DataWeave,linenums]
* ----
* %dw 2.0
* output application/json
* import * from path::to::my::modules::__artifactId__Module
* ---
*  {
*       DataWeave: "A $(Fun('Language'))"
*  }
* ----
*
*
* ==== Output
*
* [source,Json,linenums]
* ----
* "A Transformation Language"
* ----
*
*/

fun blocks(bs: Array<Block>) = {
    blocks: bs
}

fun actions(acts: Array<Element>) : Actions = {
    'type': "actions",
    elements: acts
}

fun divider() : Divider = {
    'type': "divider"
}

fun text(t : String) : PlainText = {
    'type': "plain_text",
    text: t,
    emoji: true
}

fun markdown(t: String) : MarkDown = {
    'type': "mrkdwn",
    text: t
}

fun section(text : Text) : Section = {
    'type': "section",
    text: text
}

fun section(text: Text, ac : Element) : Section = {
    'type': "section",
    text: text,
    accessory: ac
}

fun section(fields: Array<Text>) : Section = {
    'type': "section",
    fields: fields
}

fun section(fields: Array<Text>, ac : Element) : Section = {
    'type': "section",
    fields: fields,
    accessory: ac
}

fun header(message: String) : Header = header(text(message))

fun header(text: PlainText) : Header = {
    'type': "header",
    text: text
}

fun button(message: String, id: String) : Button = button(text(message), id)

fun button(text: PlainText, id: String) : Button = {
    'type': "button",
    text: text,
    'action_id': id
}

fun buttonWithValue(message: String, id: String, val: String) : Button = buttonWithValue(text(message), id, val)

fun buttonWithValue(text: PlainText, id: String, val: String) : Button = {
    'type': "button",
    text: text,
    'action_id': id,
    value: val
}

fun buttonWithUrl(message: String, id: String, url: String) : Button = buttonWithUrl(text(message), id, url)

fun buttonWithUrl(text: PlainText, id : String, url: String) : Button = {
    'type': "button",
    text: text,
    'action_id': id,
    url: url
}

fun option(message: String, val: String) = option(text(message), val)

fun option(text: Text, val: String) : Option = {
    text: text,
    value: val
}

fun staticSelect(placeholder: String, id: String, options: Array<Option>) : StaticSelect = staticSelect(text(placeholder), id, options)

fun staticSelect(placeholder: String, id: String, optionGroups: Array<OptionGroup>) : StaticSelect = staticSelect(text(placeholder), id, optionGroups)

fun staticSelect(placeholder: PlainText, id: String, options: Array<Option>) : StaticSelect = {
    'type': "static_select",
    placeholder: placeholder,
    'action_id': id,
    options: options
}

fun staticSelect(placeholder: PlainText, id: String, optionGroups: Array<OptionGroup>) : StaticSelect = {
    'type': "static_select",
    placeholder: placeholder,
    'action_id': id,
    'option_groups': optionGroups
}
