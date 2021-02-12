/**
*
* Representation of all Slack https://api.slack.com/reference/block-kit/composition-objects[objects]:
*
* - https://api.slack.com/reference/block-kit/composition-objects#text[text]
* - https://api.slack.com/reference/block-kit/composition-objects#confirm[confirm dialog]
* - https://api.slack.com/reference/block-kit/composition-objects#option[option]
* - https://api.slack.com/reference/block-kit/composition-objects#option_group[option group]
* - https://api.slack.com/reference/block-kit/composition-objects#filter_conversations[filter conversation]
* - https://api.slack.com/reference/block-kit/composition-objects#dispatch_action_config[dispatch action]
*
*/

%dw 2.0

/**
* Represents a text object.
*/
type Text = PlainText | Mrkdwn

/**
* Helper type to represent text objects.
*/
type SimpleText<T <: "plain_text" | "mrkdwn"> = {
    'type': T,
    text: String,
    emoji?: Boolean,
    verbatim?: Boolean
}

/**
* Represents an exclusively plain object.
*/
type PlainText = SimpleText<"plain_text">

/**
* Represents an exclusively mrkdwn object.
*/
type Mrkdwn = SimpleText<"mrkdwn">

/**
* Represents a confirm dialog object.
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
*/
type Option = {
    text: Text,
    value: String,
    description?: PlainText,
    url?: String
}

/**
* Represents an option group object.
*/
type OptionGroup = WithOptions & {
    label: PlainText
}

/**
* Represents a filter conversation object.
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
* Represents a dispatch action object.
*/
type Dispatch = {
    trigger_actions_on?: Array<DispatchOptions>
}

/**
* Represents the possible options of a dispatch action object.
*/
type DispatchOptions = "on_enter_pressed" | "on_character_entered"

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
