/**
*
* Representation of all Slack elements.
*
*/
%dw 2.0
import * from org::mule::weave::slack::modules::Objects

type Element = Button | Checkbox | DatePicker | Image | MultiSelectMenu | OverflowMenu | PlainTextInput | RadioButtonGroup | SelectMenu | TimePicker

type Button = WithOptionalConfirm & {
    'type': "button",
    text: PlainText,
    'action_id': String,
    url?: String,
    value?: String,
    style?: String
}

type Checkbox = WithOptionalConfirm & {
    'type': "checkboxes",
    'action_id': String,
    options: Array<Option>,
    'initial_options'?: Array<Option>
}

type DatePicker = WithOptionalConfirm & {
    'type': "datepicker",
    'action_id': String,
    placeholder?: PlainText,
    'initial_date'?: String
}

type Image = {
    'type': "image",
    'image_url': String,
    'alt_text': String
}

type MultiSelectMenu = MultiStaticSelect | MultiExternalSelect | MultiUserList | MultiConversationList | MultiPublicChannelsList

type MultiStaticSelect = (MultiSelect & WithOptions | MultiSelect & WithOptionGroup) & {
   'type': "multi_static_select",
   'initial_options'?: Array<Option>,
}

type MultiExternalSelect = MultiSelect & {
    'type': "multi_external_select",
    'initial_options'?: Array<Option>,
    'min_query_length'?: Number
}

type MultiUserList = MultiSelect & {
    'type': "multi_users_select",
    'initial_users'?: Array<String>
}

type MultiConversationList = MultiSelect & {
    'type': "multi_conversations_select",
    'initial_conversations'?: Array<String>,
    'default_to_current_conversation'?: Boolean,
    filter?: Filter
}

type MultiPublicChannelsList = MultiSelect & {
    'type': "multi_channels_select",
    'initial_channels'?: Array<String>
}

type OverflowMenu = WithOptions & WithOptionalConfirm & {
    'type': "overflow",
    'action_id': String
}

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

type RadioButtonGroup = WithOptionalConfirm & {
    'type': "radio_buttons",
    'action_id': String,
    options: Array<Option>,
    'initial_option'?: Option
}

type SelectMenu = StaticSelect | ExternalSelect | UserList | ConversationsList | PublicChannelsList

type StaticSelect = (Select & WithOptions | Select & WithOptionGroup) & {
    'type': "static_select",
    'initial_option'?: Option
}

type ExternalSelect = Select & {
    'type': "external_select",
    'initial_option'?: Option,
    'min_query_length'?: Number
}

type UserList = Select & {
    'type': "users_select",
    'initial_user'?: String
}

type ConversationsList = Select & {
    'type': "conversations_select",
    'initial_conversation'?: String,
    'default_to_current_conversation'?: Boolean,
    'response_url_enabled'?: Boolean,
    filter?: Filter
}

type PublicChannelsList = Select & {
    'type': "channels_select",
    'initial_channel'?: String,
    'response_url_enabled'?: Boolean
}

type TimePicker = WithOptionalConfirm & {
    'type': "timepicker",
    'action_id': String,
    placeholder?: PlainText,
    'initial_time': String
}

type MultiSelect = Select & {
    'max_selected_items'?: Number
}

type Select = WithOptionalConfirm & {
    placeholder: PlainText,
    'action_id': String,
}

type WithOptionalConfirm = {
    confirm?: Confirmation
}

