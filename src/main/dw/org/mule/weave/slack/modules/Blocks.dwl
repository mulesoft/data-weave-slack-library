/**
*
* Representation of all Slack https://api.slack.com/reference/block-kit/blocks[blocks]:
*/

%dw 2.0
import * from org::mule::weave::slack::modules::Elements
import * from org::mule::weave::slack::modules::Objects

/**
* Generic representation of a block.
*/
type Block = OptionalId & {
    'type': String
}

/**
* Represents an action block.
*
* https://api.slack.com/reference/block-kit/blocks#actions[actions]
*/
type Actions = OptionalId & {
    'type': "actions",
    elements: Array<Element>
}

/**
* Represents a context block.
*
* https://api.slack.com/reference/block-kit/blocks#context[context]
*/
type Context = OptionalId & {
    'type': "context",
    elements: Array<Image|Text>
}

/**
* Represents a divider block.
*
* https://api.slack.com/reference/block-kit/blocks#divider[divider]
*/
type Divider = OptionalId & {
    'type': "divider"
}

/**
* Represents a file block.
*
* https://api.slack.com/reference/block-kit/blocks#file[file]
*/
type File = OptionalId & {
    'type': "file",
    source: "remote",
    external_id: String
}

/**
* Represents a header block.
*
* https://api.slack.com/reference/block-kit/blocks#header[header]
*/
type Header = OptionalId & {
    'type': "header",
    text: PlainText
}

/**
* Represents an image block.
*
* https://api.slack.com/reference/block-kit/blocks#image[image]
*/
type ImageBlock = OptionalId & Image & {
    title?: PlainText
}

/**
* Represents an input block.
*
* https://api.slack.com/reference/block-kit/blocks#input[input]
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
* Represents a section block.
*
* https://api.slack.com/reference/block-kit/blocks#section[section]
*/
type Section = (OptionalId & WithText | OptionalId & WithFields) & {
    'type': "section",
    accessory?: Element
}

/**
* Helper type to reuse text
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
* Helper type to reuse block with optional IDs
*/
type OptionalId = {
    block_id?: String
}
