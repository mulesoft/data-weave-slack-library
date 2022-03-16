/**
*
* Types that represent all Slack Blocks. 
*
* https://api.slack.com/reference/block-kit/blocks[Slack Blocks Reference]
*/

%dw 2.0
import * from slack::Elements
import * from slack::Objects

/**
* Generic representation of a Slack block.
*/
type Block = OptionalId & {
    'type': String
}

/**
* Representation of a Slack action block.
*
* https://api.slack.com/reference/block-kit/blocks#actions[Actions Reference]
*/
type Actions = OptionalId & {
    'type': "actions",
    elements: Array<Element>
}

/**
* Representation of a Slack context block.
*
* https://api.slack.com/reference/block-kit/blocks#context[Context Reference]
*/
type Context = OptionalId & {
    'type': "context",
    elements: Array<Image|Text>
}

/**
* Representation of a Slack divider block.
*
* https://api.slack.com/reference/block-kit/blocks#divider[Divider Reference]
*/
type Divider = OptionalId & {
    'type': "divider"
}

/**
* Representation of a Slack file block.
*
* https://api.slack.com/reference/block-kit/blocks#file[File Reference]
*/
type File = OptionalId & {
    'type': "file",
    source: "remote",
    external_id: String
}

/**
* Representation of a Slack header block.
*
* https://api.slack.com/reference/block-kit/blocks#header[Header Reference]
*/
type Header = OptionalId & {
    'type': "header",
    text: PlainText
}

/**
* Representation of a Slack image block.
*
* https://api.slack.com/reference/block-kit/blocks#image[Image Reference]
*/
type ImageBlock = OptionalId & Image & {
    title?: PlainText
}

/**
* Representation of a Slack input block.
*
* https://api.slack.com/reference/block-kit/blocks#input[Input Reference]
*/
type Input = OptionalId & {
    'type': "input",
    label: PlainText,
    element: Element,
    dispatch_action?: Boolean,
    hint?: PlainText,
    optiona?: Boolean
}

/**
* Representation of a Slack section block.
*
* https://api.slack.com/reference/block-kit/blocks#section[Section Reference]
*/
type Section = (OptionalId & WithText | OptionalId & WithFields) & {
    'type': "section",
    accessory?: Element
}

/**
* Helper type to reuse text. 
*/
type WithText = {
    text: Text
}

/**
* Helper type to encapsulate fields
*/
type WithFields = {
    fields: Array<Text>
}

/**
* Helper type to reuse a block with optional IDs.
*/
type OptionalId = {
    block_id?: String
}
