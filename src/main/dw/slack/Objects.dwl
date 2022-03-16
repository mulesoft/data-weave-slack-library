/**
*
* Representation of all Slack objects.
* 
* https://api.slack.com/reference/block-kit/composition-objects[Composition Objects Reference]
*/

%dw 2.0

/**
* Represents a text object.
*
* https://api.slack.com/reference/block-kit/composition-objects#text[Text Object Reference]
*/
type Text = PlainText | Mrkdwn

/**
* Helper type to represent text objects.
*/
type SimpleText = {
    text: String,
    emoji?: Boolean,
    verbatim?: Boolean
}

/**
* Type that represents an exclusively plain object.
*/
type PlainText = SimpleText & {
    "type": "plain_text"
}

/**
* Type that represents an exclusively mrkdwn object.
*/
type Mrkdwn = SimpleText & {
    "type": "mrkdwn"
}

/**
* Type that represents a confirmation dialog object.
*
* https://api.slack.com/reference/block-kit/composition-objects#confirm[Confirmation Dialog Object Reference]
*/
type Confirmation = {
    title: PlainText,
    text: Text,
    confirm: PlainText,
    deny: PlainText,
    style?: Style
}

/**
* Type that represents possible style options.
*/
type Style = "primary" | "danger"

/**
* Type that represents an option object.
*
* https://api.slack.com/reference/block-kit/composition-objects#option[Option Object Reference]
*/
type Option = {
    text: Text,
    value: String,
    description?: PlainText,
    url?: String
}

/**
* Type that represents an option group object.
*
* https://api.slack.com/reference/block-kit/composition-objects#option_group[Option Group Object Reference]
*/
type OptionGroup = WithOptions & {
    label: PlainText
}

/**
* Type that represents a dispatch action object.
*
* https://api.slack.com/reference/block-kit/composition-objects#dispatch_action_config[Dispatch Action Configuration Reference]
*/
type Dispatch = {
    trigger_actions_on?: Array<DispatchOptions>
}

/**
* Type that represents the possible options of a dispatch action object.
*/
type DispatchOptions = "on_enter_pressed" | "on_character_entered"

/**
* Type that represents a filter conversation object.
*
* https://api.slack.com/reference/block-kit/composition-objects#filter_conversations[Filter Object for Conversation Lists Reference]
*/
type Filter = {
    include?: Array<FilterOptions>,
    exclude_external_shared_channels?: Boolean,
    external_bot_users?: Boolean
}

/**
* Type that represents the possible options of a filter conversation object.
*/
type FilterOptions = "im" | "mpim" | "private" | "public"

/**
* Helper type for composing options.
*/
type WithOptions = {
    options: Array<Option>
}

/**
* Helper type for composing option groups.
*/
type WithOptionGroup = {
    option_groups: Array<OptionGroup>
}
