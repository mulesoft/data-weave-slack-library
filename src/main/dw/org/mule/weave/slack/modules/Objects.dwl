/**
*
* Representation of all Slack objects.
*
*/

%dw 2.0

type Text = PlainText | MarkDown


type SimpleText<T <: "plain_text" | "mrkdwn"> = {
    'type': T,
    text: String,
    emoji?: Boolean,
    verbatim?: Boolean
}

type PlainText = SimpleText<"plain_text">

type MarkDown = SimpleText<"mrkdwn">

type Confirmation = {
    title: PlainText,
    text: Text,
    confirm: PlainText,
    deny: PlainText,
    style?: String
}

type Option = {
    text: Text,
    value: String,
    description?: PlainText,
    url?: String
}

type OptionGroup = WithOptions & {
    label: PlainText
}

type Filter = {
    include?: Array<FilterOptions>,
    'exclude_external_shared_channels'?: Boolean,
    'external_bot_users'?: Boolean
}

type FilterOptions = "im" | "mpim" | "private" | "public"

type Dispatch = {
    'trigger_actions_on'?: Array<DispatchOptions>
}

type DispatchOptions = "on_enter_pressed" | "on_character_entered"

type WithOptions = {
    options: Array<Option>
}

type WithOptionGroup = {
    'option_groups': Array<OptionGroup>
}
