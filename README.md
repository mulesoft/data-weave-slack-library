# DataWeave Slack Module

![MuleSoft + Slack](pages/MuleSlack.png "MuleSoft + Slack")

This module provides constructs to simplify working with Slack's blocks. Types can be used to get guidance and validation
when writing complex block structures while builder functions help keep code lean by taking care of all boilerplate code.

## [org::mule::weave::slack::modules::Blocks](pages/Blocks.md )

Representation of all Slack [blocks](https://api.slack.com/reference/block-kit/blocks):

### Types
| Name | Description|
|------|------------|
|[Actions](pages/Blocks.md/#actions- ) | Represents an action block.|
|[Block](pages/Blocks.md/#block- ) | Generic representation of a block.|
|[Context](pages/Blocks.md/#context- ) | Represents a context block.|
|[Divider](pages/Blocks.md/#divider- ) | Represents a divider block.|
|[File](pages/Blocks.md/#file- ) | Represents a file block.|
|[Header](pages/Blocks.md/#header- ) | Represents a header block.|
|[ImageBlock](pages/Blocks.md/#imageblock- ) | Represents an image block.|
|[Input](pages/Blocks.md/#input- ) | Represents an input block.|
|[OptionalId](pages/Blocks.md/#optionalid- ) | Helper type to reuse block IDs|
|[Section](pages/Blocks.md/#section- ) | Helper type to encapsulate fields|
|[WithFields](pages/Blocks.md/#withfields- ) | Helper type to encapsulate fields|
|[WithText](pages/Blocks.md/#withtext- ) | Helper type to reuse text|

________________________________


## [org::mule::weave::slack::modules::Builders](pages/Builders.md )

Provides functions to simplify the creation and composition of [objects](https://api.slack.com/block-kit[blocks], https://api.slack.com/reference/block-kit/block-elements[elements] and https://api.slack.com/reference/block-kit/composition-objects):

### Functions
| Name | Description|
|------|------------|
| [actions](pages/Builders.md/#actions- ) | Generates an actions block.|
| [blocks](pages/Builders.md/#blocks- ) | Generates the standard block kit syntax to define a group of blocks.|
| [button](pages/Builders.md/#button- ) | Generates a button element, with a simple plain text<br> object and ID.|
| [buttonWithUrl](pages/Builders.md/#buttonwithurl- ) | Generates a button element, with a simple plain text object, an ID and an URL.|
| [buttonWithValue](pages/Builders.md/#buttonwithvalue- ) | Generates a button element, with a simple plain text object, an ID and a value.|
| [divider](pages/Builders.md/#divider- ) | Generates a divider block.|
| [header](pages/Builders.md/#header- ) | Generates a header block, with a simple plain text object.|
| [mrkdwn](pages/Builders.md/#mrkdwn- ) | Generates a mrkdwn text object.|
| [option](pages/Builders.md/#option- ) | Generates an option object, with a simple plain text<br> object and its value.|
| [optionGroup](pages/Builders.md/#optiongroup- ) | Generates an option group object, with a simple plain text object and its options.|
| [section](pages/Builders.md/#section- ) | Generates a simple section block, with a plain text object.|
| [staticSelect](pages/Builders.md/#staticselect- ) | Generates an static select element, with a simple plain text object as placeholder, its ID and options.|
| [staticSelectByGroups](pages/Builders.md/#staticselectbygroups- ) | Generates a static select element, with a simple plain text object as placeholder, its ID and option groups.|
| [text](pages/Builders.md/#text- ) | Generates a plain text object, with emojis enabled.|

________________________________


## [org::mule::weave::slack::modules::Elements](pages/Elements.md )

Representation of all Slack [elements](https://api.slack.com/reference/block-kit/block-elements):

### Types
| Name | Description|
|------|------------|
|[Button](pages/Elements.md/#button- ) | Represents a button element.|
|[Checkbox](pages/Elements.md/#checkbox- ) | Represents a checkbox group element.|
|[ConversationsList](pages/Elements.md/#conversationslist- ) | Represents a conversation list.|
|[DatePicker](pages/Elements.md/#datepicker- ) | Represents a datepicker element.|
|[Element](pages/Elements.md/#element- ) | Represents a block element.|
|[ExternalSelect](pages/Elements.md/#externalselect- ) | Represents an external select menu.|
|[Image](pages/Elements.md/#image- ) | Represents an image element.|
|[MultiConversationList](pages/Elements.md/#multiconversationlist- ) | Represents a multi conversation list.|
|[MultiExternalSelect](pages/Elements.md/#multiexternalselect- ) | Represents an external multi select menu.|
|[MultiPublicChannelsList](pages/Elements.md/#multipublicchannelslist- ) | Represents a channel list.|
|[MultiSelect](pages/Elements.md/#multiselect- ) | Helper type to reuse multi selection|
|[MultiSelectMenu](pages/Elements.md/#multiselectmenu- ) | Represents all multi select menus.|
|[MultiStaticSelect](pages/Elements.md/#multistaticselect- ) | Represents a static multi select menu.|
|[MultiUserList](pages/Elements.md/#multiuserlist- ) | Represents a multi user list.|
|[OverflowMenu](pages/Elements.md/#overflowmenu- ) | Represents an overflow menu.|
|[PlainTextInput](pages/Elements.md/#plaintextinput- ) | Represents a plain text input.|
|[PublicChannelsList](pages/Elements.md/#publicchannelslist- ) | Represents a channel list.|
|[RadioButtonGroup](pages/Elements.md/#radiobuttongroup- ) | Represents a radio button group.|
|[Select](pages/Elements.md/#select- ) | Helper type to reuse selection|
|[SelectMenu](pages/Elements.md/#selectmenu- ) | Represents all select menus.|
|[StaticSelect](pages/Elements.md/#staticselect- ) | Represents a static select menu.|
|[TimePicker](pages/Elements.md/#timepicker- ) | Represents a timepicker element.|
|[UserList](pages/Elements.md/#userlist- ) | Represents a user list.|
|[WithOptionalConfirm](pages/Elements.md/#withoptionalconfirm- ) | Helper type to reuse confirm option|

________________________________


## [org::mule::weave::slack::modules::Objects](pages/Objects.md )

Representation of all Slack [objects](https://api.slack.com/reference/block-kit/composition-objects):

### Types
| Name | Description|
|------|------------|
|[Confirmation](pages/Objects.md/#confirmation- ) | Represents a confirm dialog object.|
|[Dispatch](pages/Objects.md/#dispatch- ) | Represents a dispatch action object.|
|[DispatchOptions](pages/Objects.md/#dispatchoptions- ) | Represents the possible options of a dispatch action object.|
|[Filter](pages/Objects.md/#filter- ) | Represents a filter conversation object.|
|[FilterOptions](pages/Objects.md/#filteroptions- ) | Represents the possible options of a filter conversation object.|
|[Mrkdwn](pages/Objects.md/#mrkdwn- ) | Represents an exclusively mrkdwn object.|
|[Option](pages/Objects.md/#option- ) | Represents an option object.|
|[OptionGroup](pages/Objects.md/#optiongroup- ) | Represents an option group object.|
|[PlainText](pages/Objects.md/#plaintext- ) | Represents an exclusively plain object.|
|[SimpleText](pages/Objects.md/#simpletext- ) | Helper type to represent text objects.|
|[Text](pages/Objects.md/#text- ) | Represents a text object.|
|[WithOptionGroup](pages/Objects.md/#withoptiongroup- ) | Helper type to compose option groups|
|[WithOptions](pages/Objects.md/#withoptions- ) | Helper type to compose options|

________________________________
