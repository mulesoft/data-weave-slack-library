Representation of all Slack [elements](https://api.slack.com/reference/block-kit/block-elements):

- [button](https://api.slack.com/reference/block-kit/block-elements#button)
- [checkbox group](https://api.slack.com/reference/block-kit/block-elements#checkboxes)
- [datepicker](https://api.slack.com/reference/block-kit/block-elements#datepicker)
- [image](https://api.slack.com/reference/block-kit/block-elements#image)
- [multi select](https://api.slack.com/reference/block-kit/block-elements#multi_select)
- [static multi select](https://api.slack.com/reference/block-kit/block-elements#static_multi_select)
- [external multi select](https://api.slack.com/reference/block-kit/block-elements#external_multi_select)
- [multi user list](https://api.slack.com/reference/block-kit/block-elements#users_multi_select)
- [multi conversation list](https://api.slack.com/reference/block-kit/block-elements#conversation_multi_select)
- [multi channel list](https://api.slack.com/reference/block-kit/block-elements#channel_multi_select)
- [overflow](https://api.slack.com/reference/block-kit/block-elements#overflow)
- [input](https://api.slack.com/reference/block-kit/block-elements#input)
- [radio button group](https://api.slack.com/reference/block-kit/block-elements#radio)
- [select](https://api.slack.com/reference/block-kit/block-elements#select)
- [static select](https://api.slack.com/reference/block-kit/block-elements#static_select)
- [external select](https://api.slack.com/reference/block-kit/block-elements#external_select)
- [user list](https://api.slack.com/reference/block-kit/block-elements#users_select)
- [conversation list](https://api.slack.com/reference/block-kit/block-elements#conversation_select)
- [channel list](https://api.slack.com/reference/block-kit/block-elements#channel_select)
- [timepicker](https://api.slack.com/reference/block-kit/block-elements#timepicker)

__________________________________________

# Index




### Types
| Name | Description|
|------|------------|
|[Button](#button- ) | Represents a button element.|
|[Checkbox](#checkbox- ) | Represents a checkbox group element.|
|[ConversationsList](#conversationslist- ) | Represents a conversation list.|
|[DatePicker](#datepicker- ) | Represents a datepicker element.|
|[Element](#element- ) | Represents a block element.|
|[ExternalSelect](#externalselect- ) | Represents an external select menu.|
|[Image](#image- ) | Represents an image element.|
|[MultiConversationList](#multiconversationlist- ) | Represents a multi conversation list.|
|[MultiExternalSelect](#multiexternalselect- ) | Represents an external multi select menu.|
|[MultiPublicChannelsList](#multipublicchannelslist- ) | Represents a channel list.|
|[MultiSelect](#multiselect- ) | Helper type to reuse multi selection|
|[MultiSelectMenu](#multiselectmenu- ) | Represents all multi select menus.|
|[MultiStaticSelect](#multistaticselect- ) | Represents a static multi select menu.|
|[MultiUserList](#multiuserlist- ) | Represents a multi user list.|
|[OverflowMenu](#overflowmenu- ) | Represents an overflow menu.|
|[PlainTextInput](#plaintextinput- ) | Represents a plain text input.|
|[PublicChannelsList](#publicchannelslist- ) | Represents a channel list.|
|[RadioButtonGroup](#radiobuttongroup- ) | Represents a radio button group.|
|[Select](#select- ) | Helper type to reuse selection|
|[SelectMenu](#selectmenu- ) | Represents all select menus.|
|[StaticSelect](#staticselect- ) | Represents a static select menu.|
|[TimePicker](#timepicker- ) | Represents a timepicker element.|
|[UserList](#userlist- ) | Represents a user list.|
|[WithOptionalConfirm](#withoptionalconfirm- ) | Helper type to reuse confirm option|







__________________________________________





__________________________________________

# Types

### **Button** [↑↑](#index )
Represents a button element.

#### Definition

```dataweave
WithOptionalConfirm & { "type": "button", text: PlainText, action_id: String, url?: String, value?: String, style?: Style }
```


### **Checkbox** [↑↑](#index )
Represents a checkbox group element.

#### Definition

```dataweave
WithOptionalConfirm & { "type": "checkboxes", action_id: String, options: Array<Option>, initial_options?: Array<Option> }
```


### **ConversationsList** [↑↑](#index )
Represents a conversation list.

#### Definition

```dataweave
Select & { "type": "conversations_select", initial_conversation?: String, default_to_current_conversation?: Boolean, response_url_enabled?: Boolean, filter?: Filter }
```


### **DatePicker** [↑↑](#index )
Represents a datepicker element.

#### Definition

```dataweave
WithOptionalConfirm & { "type": "datepicker", action_id: String, placeholder?: PlainText, initial_date?: String }
```


### **Element** [↑↑](#index )
Represents a block element.

#### Definition

```dataweave
Button | Checkbox | DatePicker | Image | MultiSelectMenu | OverflowMenu | PlainTextInput | RadioButtonGroup | SelectMenu | TimePicker
```


### **ExternalSelect** [↑↑](#index )
Represents an external select menu.

#### Definition

```dataweave
Select & { "type": "external_select", initial_option?: Option, min_query_length?: Number }
```


### **Image** [↑↑](#index )
Represents an image element.

#### Definition

```dataweave
{ "type": "image", image_url: String, alt_text: String }
```


### **MultiConversationList** [↑↑](#index )
Represents a multi conversation list.

#### Definition

```dataweave
MultiSelect & { "type": "multi_conversations_select", initial_conversations?: Array<String>, default_to_current_conversation?: Boolean, filter?: Filter }
```


### **MultiExternalSelect** [↑↑](#index )
Represents an external multi select menu.

#### Definition

```dataweave
MultiSelect & { "type": "multi_external_select", initial_options?: Array<Option>, min_query_length?: Number }
```


### **MultiPublicChannelsList** [↑↑](#index )
Represents a channel list.

#### Definition

```dataweave
MultiSelect & { "type": "multi_channels_select", initial_channels?: Array<String> }
```


### **MultiSelect** [↑↑](#index )
Helper type to reuse multi selection

#### Definition

```dataweave
Select & { max_selected_items?: Number }
```


### **MultiSelectMenu** [↑↑](#index )
Represents all multi select menus.

#### Definition

```dataweave
MultiStaticSelect | MultiExternalSelect | MultiUserList | MultiConversationList | MultiPublicChannelsList
```


### **MultiStaticSelect** [↑↑](#index )
Represents a static multi select menu.

#### Definition

```dataweave
MultiSelect & WithOptions | MultiSelect & WithOptionGroup & { "type": "multi_static_select", initial_options?: Array<Option> }
```


### **MultiUserList** [↑↑](#index )
Represents a multi user list.

#### Definition

```dataweave
MultiSelect & { "type": "multi_users_select", initial_users?: Array<String> }
```


### **OverflowMenu** [↑↑](#index )
Represents an overflow menu.

#### Definition

```dataweave
WithOptions & WithOptionalConfirm & { "type": "overflow", action_id: String }
```


### **PlainTextInput** [↑↑](#index )
Represents a plain text input.

#### Definition

```dataweave
{ "type": "plain_text_input", action_id: String, placeholder?: PlainText, initial_value?: String, multiline?: Boolean, min_length?: Number, max_length?: Number, dispatch_action_config?: Dispatch }
```


### **PublicChannelsList** [↑↑](#index )
Represents a channel list.

#### Definition

```dataweave
Select & { "type": "channels_select", initial_channel?: String, response_url_enabled?: Boolean }
```


### **RadioButtonGroup** [↑↑](#index )
Represents a radio button group.

#### Definition

```dataweave
WithOptionalConfirm & { "type": "radio_buttons", action_id: String, options: Array<Option>, initial_option?: Option }
```


### **Select** [↑↑](#index )
Helper type to reuse selection

#### Definition

```dataweave
WithOptionalConfirm & { placeholder: PlainText, action_id: String }
```


### **SelectMenu** [↑↑](#index )
Represents all select menus.

#### Definition

```dataweave
StaticSelect | ExternalSelect | UserList | ConversationsList | PublicChannelsList
```


### **StaticSelect** [↑↑](#index )
Represents a static select menu.

#### Definition

```dataweave
Select & WithOptions | Select & WithOptionGroup & { "type": "static_select", initial_option?: Option }
```


### **TimePicker** [↑↑](#index )
Represents a timepicker element.

#### Definition

```dataweave
WithOptionalConfirm & { "type": "timepicker", action_id: String, placeholder?: PlainText, initial_time: String }
```


### **UserList** [↑↑](#index )
Represents a user list.

#### Definition

```dataweave
Select & { "type": "users_select", initial_user?: String }
```


### **WithOptionalConfirm** [↑↑](#index )
Helper type to reuse confirm option

#### Definition

```dataweave
{ confirm?: Confirmation }
```




