/**
*
* Representation of all Slack https://api.slack.com/reference/block-kit/composition-objects[objects]:
*/

%dw 2.0

/**
* Represents a text object.
*
* https://api.slack.com/reference/block-kit/composition-objects#text[text]
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
* Represents an exclusively plain object.
*/
type PlainText = SimpleText & {
    "type": "plain_text"
}

/**
* Represents an exclusively mrkdwn object.
*/
type Mrkdwn = SimpleText & {
    "type": "mrkdwn"
}

/**
* Represents a confirm dialog object.
*
* https://api.slack.com/reference/block-kit/composition-objects#confirm[confirm dialog]
*/
type Confirmation = {
    title: PlainText,
    text: Text,
    confirm: PlainText,
    deny: PlainText,
    style?: Style
}

/**
* Represent the possible style options
*/
type Style = "primary" | "danger"

/**
* Represents an option object.
*
* https://api.slack.com/reference/block-kit/composition-objects#option[option]
*/
type Option = {
    text: Text,
    value: String,
    description?: PlainText,
    url?: String
}

/**
* Represents an option group object.
*
* https://api.slack.com/reference/block-kit/composition-objects#option_group[option group]
*/
type OptionGroup = WithOptions & {
    label: PlainText
}

/**
* Represents a dispatch action object.
*
* https://api.slack.com/reference/block-kit/composition-objects#dispatch_action_config[dispatch action]
*/
type Dispatch = {
    trigger_actions_on?: Array<DispatchOptions>
}

/**
* Represents the possible options of a dispatch action object.
*/
type DispatchOptions = "on_enter_pressed" | "on_character_entered"

/**
* Represents a filter conversation object.
*
* https://api.slack.com/reference/block-kit/composition-objects#filter_conversations[filter conversation]
*/
type Filter = {
    include?: Array<FilterOptions>,
    exclude_external_shared_channels?: Boolean,
    external_bot_users?: Boolean
}

/**
* Represents the possible options of a filter conversation object.
*/
type FilterOptions = "im" | "mpim" | "private" | "public"

/**
* Helper type to compose options
*/
type WithOptions = {
    options: Array<Option>
}

/**
* Helper type to compose option groups
*/
type WithOptionGroup = {
    option_groups: Array<OptionGroup>
}
