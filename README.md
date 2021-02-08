# DataWeave Slack Module

![MuleSoft + Slack](pages/MuleSlack.png "MuleSoft + Slack")

This module provides constructs to simplify working with Slack's blocks. Types can be used to get guidance and validation
when writing complex block structures while builder functions help keep code lean by taking care of all boilerplate code.

## [org::mule::weave::slack::modules::Blocks](pages/Blocks )

Representation of all Slack [blocks](https://api.slack.com/reference/block-kit/blocks):

### Types
| Name | Description|
|------|------------|
|[Actions](pages/Blocks/#actions-index ) | Represents an action block.|
|[Block](pages/Blocks/#block-index ) | Generic representation of a block.|
|[Context](pages/Blocks/#context-index ) | Represents a context block.|
|[Divider](pages/Blocks/#divider-index ) | Represents a divider block.|
|[File](pages/Blocks/#file-index ) | Represents a file block.|
|[Header](pages/Blocks/#header-index ) | Represents a header block.|
|[ImageBlock](pages/Blocks/#imageblock-index ) | Represents an image block.|
|[Input](pages/Blocks/#input-index ) | Represents an input block.|
|[OptionalId](pages/Blocks/#optionalid-index ) | Helper type to reuse block IDs|
|[Section](pages/Blocks/#section-index ) | Helper type to encapsulate fields|
|[WithFields](pages/Blocks/#withfields-index ) | Helper type to encapsulate fields|
|[WithText](pages/Blocks/#withtext-index ) | Helper type to reuse text|

________________________________


## [org::mule::weave::slack::modules::Builders](pages/Builders )

Provides functions to simplify the creation and composition of [objects](https://api.slack.com/block-kit[blocks], https://api.slack.com/reference/block-kit/block-elements[elements] and https://api.slack.com/reference/block-kit/composition-objects):

### Functions
| Name | Description|
|------|------------|
| [actions](pages/Builders/#actions-index ) | Generates an actions block.|
| [blocks](pages/Builders/#blocks-index ) | Generates the standard block kit syntax to define a group of blocks.|
| [button](pages/Builders/#button-index ) | Generates a button element, with a simple plain text<br> object and ID.|
| [buttonWithUrl](pages/Builders/#buttonwithurl-index ) | Generates a button element, with a simple plain text object, an ID and an URL.|
| [buttonWithValue](pages/Builders/#buttonwithvalue-index ) | Generates a button element, with a simple plain text object, an ID and a value.|
| [divider](pages/Builders/#divider-index ) | Generates a divider block.|
| [header](pages/Builders/#header-index ) | Generates a header block, with a simple plain text object.|
| [mrkdwn](pages/Builders/#mrkdwn-index ) | Generates a mrkdwn text object.|
| [option](pages/Builders/#option-index ) | Generates an option object, with a simple plain text<br> object and its value.|
| [optionGroup](pages/Builders/#optiongroup-index ) | Generates an option group object, with a simple plain text object and its options.|
| [section](pages/Builders/#section-index ) | Generates a simple section block, with a plain text object.|
| [staticSelect](pages/Builders/#staticselect-index ) | Generates an static select element, with a simple plain text object as placeholder, its ID and options.|
| [staticSelectByGroups](pages/Builders/#staticselectbygroups-index ) | Generates a static select element, with a simple plain text object as placeholder, its ID and option groups.|
| [text](pages/Builders/#text-index ) | Generates a plain text object, with emojis enabled.|

________________________________


## [org::mule::weave::slack::modules::Elements](pages/Elements )

Representation of all Slack [elements](https://api.slack.com/reference/block-kit/block-elements):

### Types
| Name | Description|
|------|------------|
|[Button](pages/Elements/#button-index ) | Represents a button element.|
|[Checkbox](pages/Elements/#checkbox-index ) | Represents a checkbox group element.|
|[ConversationsList](pages/Elements/#conversationslist-index ) | Represents a conversation list.|
|[DatePicker](pages/Elements/#datepicker-index ) | Represents a datepicker element.|
|[Element](pages/Elements/#element-index ) | Represents a block element.|
|[ExternalSelect](pages/Elements/#externalselect-index ) | Represents an external select menu.|
|[Image](pages/Elements/#image-index ) | Represents an image element.|
|[MultiConversationList](pages/Elements/#multiconversationlist-index ) | Represents a multi conversation list.|
|[MultiExternalSelect](pages/Elements/#multiexternalselect-index ) | Represents an external multi select menu.|
|[MultiPublicChannelsList](pages/Elements/#multipublicchannelslist-index ) | Represents a channel list.|
|[MultiSelect](pages/Elements/#multiselect-index ) | Helper type to reuse multi selection|
|[MultiSelectMenu](pages/Elements/#multiselectmenu-index ) | Represents all multi select menus.|
|[MultiStaticSelect](pages/Elements/#multistaticselect-index ) | Represents a static multi select menu.|
|[MultiUserList](pages/Elements/#multiuserlist-index ) | Represents a multi user list.|
|[OverflowMenu](pages/Elements/#overflowmenu-index ) | Represents an overflow menu.|
|[PlainTextInput](pages/Elements/#plaintextinput-index ) | Represents a plain text input.|
|[PublicChannelsList](pages/Elements/#publicchannelslist-index ) | Represents a channel list.|
|[RadioButtonGroup](pages/Elements/#radiobuttongroup-index ) | Represents a radio button group.|
|[Select](pages/Elements/#select-index ) | Helper type to reuse selection|
|[SelectMenu](pages/Elements/#selectmenu-index ) | Represents all select menus.|
|[StaticSelect](pages/Elements/#staticselect-index ) | Represents a static select menu.|
|[TimePicker](pages/Elements/#timepicker-index ) | Represents a timepicker element.|
|[UserList](pages/Elements/#userlist-index ) | Represents a user list.|
|[WithOptionalConfirm](pages/Elements/#withoptionalconfirm-index ) | Helper type to reuse confirm option|

________________________________


## [org::mule::weave::slack::modules::Objects](pages/Objects )

Representation of all Slack [objects](https://api.slack.com/reference/block-kit/composition-objects):

### Types
| Name | Description|
|------|------------|
|[Confirmation](pages/Objects/#confirmation-index ) | Represents a confirm dialog object.|
|[Dispatch](pages/Objects/#dispatch-index ) | Represents a dispatch action object.|
|[DispatchOptions](pages/Objects/#dispatchoptions-index ) | Represents the possible options of a dispatch action object.|
|[Filter](pages/Objects/#filter-index ) | Represents a filter conversation object.|
|[FilterOptions](pages/Objects/#filteroptions-index ) | Represents the possible options of a filter conversation object.|
|[Mrkdwn](pages/Objects/#mrkdwn-index ) | Represents an exclusively mrkdwn object.|
|[Option](pages/Objects/#option-index ) | Represents an option object.|
|[OptionGroup](pages/Objects/#optiongroup-index ) | Represents an option group object.|
|[PlainText](pages/Objects/#plaintext-index ) | Represents an exclusively plain object.|
|[SimpleText](pages/Objects/#simpletext-index ) | Helper type to represent text objects.|
|[Text](pages/Objects/#text-index ) | Represents a text object.|
|[WithOptionGroup](pages/Objects/#withoptiongroup-index ) | Helper type to compose option groups|
|[WithOptions](pages/Objects/#withoptions-index ) | Helper type to compose options|

________________________________
