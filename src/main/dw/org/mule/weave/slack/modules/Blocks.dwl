/**
*
* Representation of all Slack https://api.slack.com/reference/block-kit/blocks[blocks]:
*
* - https://api.slack.com/reference/block-kit/blocks#actions[actions]
* - https://api.slack.com/reference/block-kit/blocks#context[context]
* - https://api.slack.com/reference/block-kit/blocks#divider[divider]
* - https://api.slack.com/reference/block-kit/blocks#file[file]
* - https://api.slack.com/reference/block-kit/blocks#header[header]
* - https://api.slack.com/reference/block-kit/blocks#image[image]
* - https://api.slack.com/reference/block-kit/blocks#input[input]
* - https://api.slack.com/reference/block-kit/blocks#section[section]
*
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
*/
type Actions = OptionalId & {
    'type': "actions",
    elements: Array<Element>
}

/**
* Represents a divider block.
*/
type Divider = OptionalId & {
    'type': "divider"
}

/**
* Represents a context block.
*/
type Context = OptionalId & {
    'type': "context",
    elements: Array<Image|Text>
}

/**
* Represents a file block.
*/
type File = OptionalId & {
    'type': "file",
    source: "remote",
    external_id: String
}

/**
* Represents a header block.
*/
type Header = OptionalId & {
    'type': "header",
    text: PlainText
}

/**
* Represents an image block.
*/
type ImageBlock = OptionalId & Image & {
    title?: PlainText
}

/**
* Represents an input block.
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
* Helper type to encapsulate fields
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
* Helper type to reuse block IDs
*/
type OptionalId = {
    block_id?: String
}
