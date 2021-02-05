/**
*
* Representation of all Slack blocks.
*
*/

%dw 2.0
import * from org::mule::weave::slack::modules::Elements
import * from org::mule::weave::slack::modules::Objects

type OptionalId = {
    'block_id'?: String
}

type Block = OptionalId & {
    'type': String
}

type Actions = OptionalId & {
    'type': "actions",
    elements: Array<Element>
}

type Divider = OptionalId & {
    'type': "divider"
}

type Context = OptionalId & {
    'type': "context",
    elements: Array<Image|Text>
}

type File = OptionalId & {
    'type': "file",
    source: "remote",
    'external_id': String
}

type Header = OptionalId & {
    'type': "header",
    text: PlainText
}

type ImageBlock = OptionalId & Image & {
    title?: PlainText
}

type Input = OptionalId & {
    'type': "input",
    label: PlainText,
    element: Element,
    'dispatch_action'?: Boolean,
    hint?: PlainText,
    optiona?: Boolean
}

type Section = (OptionalId & WithText | OptionalId & WithFields) & {
    'type': "section",
    accessory?: Element
}

type WithText = {
    text: Text
}

type WithFields = {
    fields: Array<Text>
}
