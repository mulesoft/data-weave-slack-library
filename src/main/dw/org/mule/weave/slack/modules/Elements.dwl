/**
*
* Representation of all Slack https://api.slack.com/reference/block-kit/block-elements[elements]:
*
* - https://api.slack.com/reference/block-kit/block-elements#button[button]
* - https://api.slack.com/reference/block-kit/block-elements#checkboxes[checkbox group]
* - https://api.slack.com/reference/block-kit/block-elements#datepicker[datepicker]
* - https://api.slack.com/reference/block-kit/block-elements#image[image]
* - https://api.slack.com/reference/block-kit/block-elements#multi_select[multi select]
* - https://api.slack.com/reference/block-kit/block-elements#static_multi_select[static multi select]
* - https://api.slack.com/reference/block-kit/block-elements#external_multi_select[external multi select]
* - https://api.slack.com/reference/block-kit/block-elements#users_multi_select[multi user list]
* - https://api.slack.com/reference/block-kit/block-elements#conversation_multi_select[multi conversation list]
* - https://api.slack.com/reference/block-kit/block-elements#channel_multi_select[multi channel list]
* - https://api.slack.com/reference/block-kit/block-elements#overflow[overflow]
* - https://api.slack.com/reference/block-kit/block-elements#input[input]
* - https://api.slack.com/reference/block-kit/block-elements#radio[radio button group]
* - https://api.slack.com/reference/block-kit/block-elements#select[select]
* - https://api.slack.com/reference/block-kit/block-elements#static_select[static select]
* - https://api.slack.com/reference/block-kit/block-elements#external_select[external select]
* - https://api.slack.com/reference/block-kit/block-elements#users_select[user list]
* - https://api.slack.com/reference/block-kit/block-elements#conversation_select[conversation list]
* - https://api.slack.com/reference/block-kit/block-elements#channel_select[channel list]
* - https://api.slack.com/reference/block-kit/block-elements#timepicker[timepicker]
*
*/
%dw 2.0
import * from org::mule::weave::slack::modules::Objects

/**
* Represents a block element.
*/
type Element = Button | Checkbox | DatePicker | Image | MultiSelectMenu | OverflowMenu | PlainTextInput | RadioButtonGroup | SelectMenu | TimePicker

/**
* Represents a button element.
*/
type Button = WithOptionalConfirm & {
    'type': "button",
    text: PlainText,
    'action_id': String,
    url?: String,
    value?: String,
    style?: String
}

/**
* Represents a checkbox group element.
*/
type Checkbox = WithOptionalConfirm & {
    'type': "checkboxes",
    'action_id': String,
    options: Array<Option>,
    'initial_options'?: Array<Option>
}

/**
* Represents a datepicker element.
*/
type DatePicker = WithOptionalConfirm & {
    'type': "datepicker",
    'action_id': String,
    placeholder?: PlainText,
    'initial_date'?: String
}

/**
* Represents an image element.
*/
type Image = {
    'type': "image",
    'image_url': String,
    'alt_text': String
}

/**
* Represents all multi select menus.
*/
type MultiSelectMenu = MultiStaticSelect | MultiExternalSelect | MultiUserList | MultiConversationList | MultiPublicChannelsList

/**
* Represents a static multi select menu.
*/
type MultiStaticSelect = (MultiSelect & WithOptions | MultiSelect & WithOptionGroup) & {
   'type': "multi_static_select",
   'initial_options'?: Array<Option>,
}

/**
* Represents an external multi select menu.
*/
type MultiExternalSelect = MultiSelect & {
    'type': "multi_external_select",
    'initial_options'?: Array<Option>,
    'min_query_length'?: Number
}

/**
* Represents a multi user list.
*/
type MultiUserList = MultiSelect & {
    'type': "multi_users_select",
    'initial_users'?: Array<String>
}

/**
* Represents a multi conversation list.
*/
type MultiConversationList = MultiSelect & {
    'type': "multi_conversations_select",
    'initial_conversations'?: Array<String>,
    'default_to_current_conversation'?: Boolean,
    filter?: Filter
}

/**
* Represents a channel list.
*/
type MultiPublicChannelsList = MultiSelect & {
    'type': "multi_channels_select",
    'initial_channels'?: Array<String>
}

/**
* Represents an overflow menu.
*/
type OverflowMenu = WithOptions & WithOptionalConfirm & {
    'type': "overflow",
    'action_id': String
}

/**
* Represents a plain text input.
*/
type PlainTextInput = {
    'type': "plain_text_input",
    'action_id': String,
    placeholder?: PlainText,
    'initial_value'?: String,
    multiline?: Boolean,
    'min_length'?: Number,
    'max_length'?: Number,
    'dispatch_action_config'?: Dispatch
}

/**
* Represents a radio button group.
*/
type RadioButtonGroup = WithOptionalConfirm & {
    'type': "radio_buttons",
    'action_id': String,
    options: Array<Option>,
    'initial_option'?: Option
}

/**
* Represents all select menus.
*/
type SelectMenu = StaticSelect | ExternalSelect | UserList | ConversationsList | PublicChannelsList

/**
* Represents a static select menu.
*/
type StaticSelect = (Select & WithOptions | Select & WithOptionGroup) & {
    'type': "static_select",
    'initial_option'?: Option
}

/**
* Represents an external select menu.
*/
type ExternalSelect = Select & {
    'type': "external_select",
    'initial_option'?: Option,
    'min_query_length'?: Number
}

/**
* Represents a user list.
*/
type UserList = Select & {
    'type': "users_select",
    'initial_user'?: String
}

/**
* Represents a conversation list.
*/
type ConversationsList = Select & {
    'type': "conversations_select",
    'initial_conversation'?: String,
    'default_to_current_conversation'?: Boolean,
    'response_url_enabled'?: Boolean,
    filter?: Filter
}

/**
* Represents a channel list.
*/
type PublicChannelsList = Select & {
    'type': "channels_select",
    'initial_channel'?: String,
    'response_url_enabled'?: Boolean
}

/**
* Represents a timepicker element.
*/
type TimePicker = WithOptionalConfirm & {
    'type': "timepicker",
    'action_id': String,
    placeholder?: PlainText,
    'initial_time': String
}

/**
* Helper type to reuse multi selection
*/
type MultiSelect = Select & {
    'max_selected_items'?: Number
}

/**
* Helper type to reuse selection
*/
type Select = WithOptionalConfirm & {
    placeholder: PlainText,
    'action_id': String,
}

/**
* Helper type to reuse confirm option
*/
type WithOptionalConfirm = {
    confirm?: Confirmation
}

