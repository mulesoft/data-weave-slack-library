/**
* Representation of all Slack https://api.slack.com/reference/block-kit/block-elements[elements]:
*/
%dw 2.0
import * from org::mule::weave::slack::modules::Objects

/**
* Represents a block element.
*/
type Element = Button | Checkbox | DatePicker | Image | MultiSelectMenu | OverflowMenu | PlainTextInput | RadioButtonGroup | SelectMenu | TimePicker

/**
* Represents a button element.
*
* https://api.slack.com/reference/block-kit/block-elements#button[button]
*/
type Button = WithOptionalConfirm & {
    'type': "button",
    text: PlainText,
    action_id: String,
    url?: String,
    value?: String,
    style?: Style,
    accessibility_label?: String,
}

/**
* Represents a checkbox group element.
*
* https://api.slack.com/reference/block-kit/block-elements#checkboxes[checkbox group]
*/
type Checkbox = WithOptionalConfirm & WithOptionalFocus & {
    'type': "checkboxes",
    action_id: String,
    options: Array<Option>,
    initial_options?: Array<Option>
}

/**
* Represents a datepicker element.
*
* https://api.slack.com/reference/block-kit/block-elements#datepicker[datepicker]
*/
type DatePicker = WithOptionalConfirm & WithOptionalFocus & {
    'type': "datepicker",
    action_id: String,
    placeholder?: PlainText,
    initial_date?: String
}

/**
* Represents an image element.
*
* https://api.slack.com/reference/block-kit/block-elements#image[image]
*/
type Image = {
    'type': "image",
    image_url: String,
    alt_text: String
}

/**
* Represents all multi select menus.
*
* https://api.slack.com/reference/block-kit/block-elements#multi_select[multi select]
*/
type MultiSelectMenu = MultiStaticSelect | MultiExternalSelect | MultiUserList | MultiConversationList | MultiPublicChannelsList

/**
* Represents a static multi select menu.
*
* https://api.slack.com/reference/block-kit/block-elements#static_multi_select[static multi select]
*/
type MultiStaticSelect = (MultiSelect & WithOptions | MultiSelect & WithOptionGroup) & {
   'type': "multi_static_select",
   initial_options?: Array<Option>,
}

/**
* Represents an external multi select menu.
*
* https://api.slack.com/reference/block-kit/block-elements#external_multi_select[external multi select]
*/
type MultiExternalSelect = MultiSelect & {
    'type': "multi_external_select",
    initial_options?: Array<Option>,
    min_query_length?: Number
}

/**
* Represents a multi user list.
*
* https://api.slack.com/reference/block-kit/block-elements#users_multi_select[multi user list]
*/
type MultiUserList = MultiSelect & {
    'type': "multi_users_select",
    initial_users?: Array<String>
}

/**
* Represents a multi conversation list.
*
* https://api.slack.com/reference/block-kit/block-elements#conversation_multi_select[multi conversation list]
*/
type MultiConversationList = MultiSelect & {
    'type': "multi_conversations_select",
    initial_conversations?: Array<String>,
    default_to_current_conversation?: Boolean,
    filter?: Filter
}

/**
* Represents a channel list.
*
* https://api.slack.com/reference/block-kit/block-elements#channel_multi_select[multi channel list]
*/
type MultiPublicChannelsList = MultiSelect & {
    'type': "multi_channels_select",
    initial_channels?: Array<String>
}

/**
* Represents an overflow menu.
*
* https://api.slack.com/reference/block-kit/block-elements#overflow[overflow]
*/
type OverflowMenu = WithOptions & WithOptionalConfirm & {
    'type': "overflow",
    action_id: String
}

/**
* Represents a plain text input.
*
* https://api.slack.com/reference/block-kit/block-elements#input[input]
*/
type PlainTextInput = WithOptionalFocus & {
    'type': "plain_text_input",
    action_id: String,
    placeholder?: PlainText,
    initial_value?: String,
    multiline?: Boolean,
    min_length?: Number,
    max_length?: Number,
    dispatch_action_config?: Dispatch
}

/**
* Represents a radio button group.
*
* https://api.slack.com/reference/block-kit/block-elements#radio[radio button group]
*/
type RadioButtonGroup = WithOptionalConfirm & WithOptionalFocus & WithOptions & {
    'type': "radio_buttons",
    action_id: String,
    initial_option?: Option
}

/**
* Represents all select menus.
*
* https://api.slack.com/reference/block-kit/block-elements#select[select]
*/
type SelectMenu = StaticSelect | ExternalSelect | UserList | ConversationsList | PublicChannelsList

/**
* Represents a static select menu.
*
* https://api.slack.com/reference/block-kit/block-elements#static_select[static select]
*/
type StaticSelect = (Select & WithOptions | Select & WithOptionGroup) & {
    'type': "static_select",
    initial_option?: Option
}

/**
* Represents an external select menu.
*
* https://api.slack.com/reference/block-kit/block-elements#external_select[external select]
*/
type ExternalSelect = Select & {
    'type': "external_select",
    initial_option?: Option,
    min_query_length?: Number
}

/**
* Represents a user list.
*
* https://api.slack.com/reference/block-kit/block-elements#users_select[user list]
*/
type UserList = Select & {
    'type': "users_select",
    initial_user?: String
}

/**
* Represents a conversation list.
*
* https://api.slack.com/reference/block-kit/block-elements#conversation_select[conversation list]
*/
type ConversationsList = Select & {
    'type': "conversations_select",
    initial_conversation?: String,
    default_to_current_conversation?: Boolean,
    response_url_enabled?: Boolean,
    filter?: Filter
}

/**
* Represents a channel list.
*
* https://api.slack.com/reference/block-kit/block-elements#channel_select[channel list]
*/
type PublicChannelsList = Select & {
    'type': "channels_select",
    initial_channel?: String,
    response_url_enabled?: Boolean
}

/**
* Represents a timepicker element.
*
* https://api.slack.com/reference/block-kit/block-elements#timepicker[timepicker]
*/
type TimePicker = WithOptionalConfirm & WithOptionalFocus & {
    'type': "timepicker",
    action_id: String,
    placeholder?: PlainText,
    initial_time: String
}

/**
* Helper type to reuse multi selection
*/
type MultiSelect = Select & {
    max_selected_items?: Number
}

/**
* Helper type to reuse selection
*/
type Select = WithOptionalConfirm & WithOptionalFocus & {
    placeholder: PlainText,
    action_id: String,
}

/**
* Helper type to reuse confirm option
*/
type WithOptionalConfirm = {
    confirm?: Confirmation
}

/**
* Helper type to reuse focus on load option
*/
type WithOptionalFocus = {
    focus_on_load?: Boolean
}
