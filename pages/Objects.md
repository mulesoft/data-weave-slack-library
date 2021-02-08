Representation of all Slack [objects](https://api.slack.com/reference/block-kit/composition-objects):

- [text](https://api.slack.com/reference/block-kit/composition-objects#text)
- [confirm dialog](https://api.slack.com/reference/block-kit/composition-objects#confirm)
- [option](https://api.slack.com/reference/block-kit/composition-objects#option)
- [option group](https://api.slack.com/reference/block-kit/composition-objects#option_group)
- [filter conversation](https://api.slack.com/reference/block-kit/composition-objects#filter_conversations)
- [dispatch action](https://api.slack.com/reference/block-kit/composition-objects#dispatch_action_config)

__________________________________________

# Index




### Types
| Name | Description|
|------|------------|
|[Confirmation](#confirmation-index ) | Represents a confirm dialog object.|
|[Dispatch](#dispatch-index ) | Represents a dispatch action object.|
|[DispatchOptions](#dispatchoptions-index ) | Represents the possible options of a dispatch action object.|
|[Filter](#filter-index ) | Represents a filter conversation object.|
|[FilterOptions](#filteroptions-index ) | Represents the possible options of a filter conversation object.|
|[Mrkdwn](#mrkdwn-index ) | Represents an exclusively mrkdwn object.|
|[Option](#option-index ) | Represents an option object.|
|[OptionGroup](#optiongroup-index ) | Represents an option group object.|
|[PlainText](#plaintext-index ) | Represents an exclusively plain object.|
|[SimpleText](#simpletext-index ) | Helper type to represent text objects.|
|[Text](#text-index ) | Represents a text object.|
|[WithOptionGroup](#withoptiongroup-index ) | Helper type to compose option groups|
|[WithOptions](#withoptions-index ) | Helper type to compose options|







__________________________________________





__________________________________________

# Types

### **Confirmation** [↑↑](#index )
Represents a confirm dialog object.

#### Definition

```dataweave
{ title: PlainText, text: Text, confirm: PlainText, deny: PlainText, style?: String }
```


### **Dispatch** [↑↑](#index )
Represents a dispatch action object.

#### Definition

```dataweave
{ trigger_actions_on?: Array<DispatchOptions> }
```


### **DispatchOptions** [↑↑](#index )
Represents the possible options of a dispatch action object.

#### Definition

```dataweave
"on_enter_pressed" | "on_character_entered"
```


### **Filter** [↑↑](#index )
Represents a filter conversation object.

#### Definition

```dataweave
{ include?: Array<FilterOptions>, exclude_external_shared_channels?: Boolean, external_bot_users?: Boolean }
```


### **FilterOptions** [↑↑](#index )
Represents the possible options of a filter conversation object.

#### Definition

```dataweave
"im" | "mpim" | "private" | "public"
```


### **Mrkdwn** [↑↑](#index )
Represents an exclusively mrkdwn object.

#### Definition

```dataweave
SimpleText<"mrkdwn">
```


### **Option** [↑↑](#index )
Represents an option object.

#### Definition

```dataweave
{ text: Text, value: String, description?: PlainText, url?: String }
```


### **OptionGroup** [↑↑](#index )
Represents an option group object.

#### Definition

```dataweave
WithOptions & { label: PlainText }
```


### **PlainText** [↑↑](#index )
Represents an exclusively plain object.

#### Definition

```dataweave
SimpleText<"plain_text">
```


### **SimpleText** [↑↑](#index )
Helper type to represent text objects.

#### Definition

```dataweave
{ "type": T, text: String, emoji?: Boolean, verbatim?: Boolean }
```


### **Text** [↑↑](#index )
Represents a text object.

#### Definition

```dataweave
PlainText | Mrkdwn
```


### **WithOptionGroup** [↑↑](#index )
Helper type to compose option groups

#### Definition

```dataweave
{ option_groups: Array<OptionGroup> }
```


### **WithOptions** [↑↑](#index )
Helper type to compose options

#### Definition

```dataweave
{ options: Array<Option> }
```




