Provides functions to simplify the creation and composition of:

- [blocks](https://api.slack.com/block-kit)
- [elements](https://api.slack.com/reference/block-kit/block-elements)
- [objects](https://api.slack.com/reference/block-kit/composition-objects)

These are the supported components:

- [actions](https://api.slack.com/reference/block-kit/blocks#actions)
- [context](https://api.slack.com/reference/block-kit/blocks#context)
- [divider](https://api.slack.com/reference/block-kit/blocks#divider)
- [header](https://api.slack.com/reference/block-kit/blocks#header)
- [image block](https://api.slack.com/reference/block-kit/blocks#image)
- [input block](https://api.slack.com/reference/block-kit/blocks#input)
- [section](https://api.slack.com/reference/block-kit/blocks#section)
- [text](https://api.slack.com/reference/block-kit/composition-objects#text)
- [button](https://api.slack.com/reference/block-kit/block-elements#button)
- [image](https://api.slack.com/reference/block-kit/block-elements#image)
- [input text](https://api.slack.com/reference/block-kit/block-elements#input)
- [radio button group](https://api.slack.com/reference/block-kit/block-elements#radio)
- [option](https://api.slack.com/reference/block-kit/composition-objects#option)
- [option group](https://api.slack.com/reference/block-kit/composition-objects#option_group)
- [static select](https://api.slack.com/reference/block-kit/block-elements#static_select)
- [external select](https://api.slack.com/reference/block-kit/block-elements#external_select)
- [multi select](https://api.slack.com/reference/block-kit/block-elements#multi_select)

__________________________________________

# Index

### Functions
| Name | Description|
|------|------------|
| [actions](#actions- ) | Generates an actions block.|
| [blocks](#blocks- ) | Generates the standard block kit syntax to define a group of blocks.|
| [button](#button- ) | Generates a button element, with a simple plain text<br> object and ID.|
| [buttonWithUrl](#buttonwithurl- ) | Generates a button element, with a simple plain text object, an ID and an URL.|
| [buttonWithValue](#buttonwithvalue- ) | Generates a button element, with a simple plain text object, an ID and a value.|
| [context](#context- ) | Generates a context block with a single plain text element item.|
| [divider](#divider- ) | Generates a divider block.|
| [externalSelect](#externalselect- ) | Generates an external select element, with a simple plain text object as placeholder and its ID.|
| [header](#header- ) | Generates a header block, with a simple plain text object.|
| [image](#image- ) | Generates an image element, with its URL and alternative text.|
| [inputBlock](#inputblock- ) | Generates an input block with a simple text label.|
| [inputText](#inputtext- ) | Generates an input object.|
| [mrkdwn](#mrkdwn- ) | Generates a mrkdwn text object.|
| [multiStaticSelect](#multistaticselect- ) | Generates a multi static select element, with a simple text placeholder, ID and options.|
| [option](#option- ) | Generates an option object, with a simple plain text<br> object and its value.|
| [optionGroup](#optiongroup- ) | Generates an option group object, with a simple plain text object and its options.|
| [radioButtons](#radiobuttons- ) | Generates a radio buttons group, given its ID and options.|
| [section](#section- ) | Generates a simple section block, with a mrkdwn object.|
| [staticSelect](#staticselect- ) | Generates a static select element, with a simple plain text object as placeholder, its ID and options.|
| [staticSelectByGroups](#staticselectbygroups- ) | Generates a static select element, with a simple plain text object as placeholder, its ID and option groups.|
| [text](#text- ) | Generates a plain text object, with emojis enabled.|
| [withStyle](#withstyle- ) | Adds a style field to a button.|
| [withUrl](#withurl- ) | Adds a url field to a button.|
| [withValue](#withvalue- ) | Adds a value field to a button.|









__________________________________________


# Functions

## **actions** [↑↑](#index )

### _actions(Array<Element>): Actions_

Generates an actions block.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| actions | The array of interactive elements to render | Array<Element>|


##### Example

In this example, an actions block featuring a simple button is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 actions([button("Click me!", "bait")])
```

###### Output

```json
{
  "type": "actions",
  "elements": [
    {
      "type": "button",
      "text": {
        "type": "plain_text",
        "text": "Click me!",
        "emoji": true
      },
      "action_id": "bait"
    }
  ]
}
```
__________________________________________


## **blocks** [↑↑](#index )

### _blocks(Array<Block>)_

Generates the standard block kit syntax to define a group of blocks.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| blocks | The array of blocks to render | Array<Block>|


##### Example

In this example, a simple section is generated and used as a block.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 blocks([section("Hello there!")])
```

###### Output

```json
{
   "blocks": [
    {
       "type": "section",
       "text": {
         "type": "plain_text",
         "text": "Hello there!",
        "emoji": true
       }
     }
   ]
}
```
__________________________________________


## **button** [↑↑](#index )

### _button(String, String): Button_

Generates a button element, with a simple plain text
 object and ID.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|
| id | The value to use in `action_id` field | String|


##### Example

In this example, a button with a simple text is generated, using an ID called "bait".

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 button("Click me!", "bait")
```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Click me!",
    "emoji": true
  },
  "action_id": "bait"
}
```
__________________________________________

### _button(PlainText, String): Button_

Generates a button element, with a plain text object and ID.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The plain text object to use | PlainText|
| id | The value to use in `action_id` field | String|


##### Example

In this example, a button with a text with no emoji support is generated, using an ID called "bait".

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 button({'type': "plain_text", text: "Create your own :emoji:"}, "emoji")
```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Create your own :emoji:"
  },
  "action_id": "emoji"
}
```
__________________________________________


## **buttonWithUrl** [↑↑](#index )

### _buttonWithUrl(String, String, String): Button_

Generates a button element, with a simple plain text object, an ID and an URL.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|
| id | The value to use in `action_id` field | String|
| url | The URL to use | String|


##### Example

In this example, a button with a simple text is generated, using an ID called "bait" and a URL leading to the Slack site.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 buttonWithUrl("Click me!", "bait", "https://slack.com")
```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Click me!",
    "emoji": true
  },
  "action_id": "bait",
  "url": "https://slack.com"
}
```
__________________________________________

### _buttonWithUrl(PlainText, String, String): Button_

Generates a button element, with a plain text object, an ID and an URL.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The plain text object to use | PlainText|
| id | The value to use in `action_id` field | String|
| url | The URL to use | String|


##### Example

In this example, a button with a no emoji supporting text is generated, using an ID called "bait" and a URL leading to the Slack site.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 buttonWithUrl({'type': "plain_text", text: "Create your own :emoji:"}, "emoji", "https://slack.com")
```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Create your own :emoji:"
  },
  "action_id": "emoji",
  "url": "https://slack.com"
}
```
__________________________________________


## **buttonWithValue** [↑↑](#index )

### _buttonWithValue(String, String, String): Button_

Generates a button element, with a simple plain text object, an ID and a value.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|
| id | The value to use in `action_id` field | String|
| value | The value to use | String|


##### Example

In this example, a button with a simple text is generated, using an ID called "bait" and a value.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 buttonWithValue("Click me!", "bait", "something to share")
```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Click me!",
    "emoji": true
  },
  "action_id": "bait",
  "value": "something to share"
}
```
__________________________________________

### _buttonWithValue(PlainText, String, String): Button_

Generates a button element, with a plain text object, an ID and a value.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|
| id | The value to use in `action_id` field | String|
| value | The value to use | String|


##### Example

In this example, a button with a text not supporting emojis is generated, using an ID called "bait" and a value.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 buttonWithValue({'type': "plain_text", text: "Create your own :emoji:"}, "emoji", "origin")
```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Create your own :emoji:"
  },
  "action_id": "emoji",
  "value": "origin"
}
```
__________________________________________


## **context** [↑↑](#index )

### _context(String): Context_

Generates a context block with a single plain text element item.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use as text | String|


##### Example

This example shows how `context` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
context(":calendar: Make sure to add this to your events")
```

###### Output

```json
{
  "type": "context",
  "elements": [
    {
      "type": "plain_text",
      "text": ":calendar: Make sure to add this to your events",
      "emoji": true
    }
  ]
}
```
__________________________________________

### _context(Array<Image | Text>): Context_

Generates a context block with the desired elements.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| elements | The image or text elements | Array<Image|Text>|


##### Example

This example shows how `context` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
context([mrkdwn("Built with :heart: by the DataWeave team")])
```

###### Output

```json
{
  "type": "context",
  "elements": [
    {
      "type": "mrkdwn",
      "text": "Built with :heart: by the DataWeave team"
    }
  ]
}
```
__________________________________________


## **divider** [↑↑](#index )

### _divider(): Divider_

Generates a divider block.

##### Example

In this example, a divider block is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 divider()
```

###### Output

```json
{
  "type": "divider"
}
```
__________________________________________


## **externalSelect** [↑↑](#index )

### _externalSelect(String, String): ExternalSelect_

Generates an external select element, with a simple plain text object as placeholder and its ID.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| placeholder | The value to use in the desired placeholder | String|
| id | The value to use in `action_id` field | String|


##### Example

This example shows how `externalSelect` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
externalSelect("Choose a dish", "dishes")
```

###### Output

```json
{
  "type": "external_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Choose a dish",
    "emoji": true
  },
  "action_id": "dishes"
}
```
__________________________________________

### _externalSelect(PlainText, String): ExternalSelect_

Generates an external select element, with a text object as placeholder and its ID.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| placeholder | The text to use in the desired placeholder | PlainText|
| id | The value to use in `action_id` field | String|


##### Example

This example shows how `externalSelect` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
externalSelect(text("Choose a dish"), "dishes")
```

###### Output

```json
{
  "type": "external_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Choose a dish",
    "emoji": true
  },
  "action_id": "dishes"
}
```
__________________________________________


## **header** [↑↑](#index )

### _header(String): Header_

Generates a header block, with a simple plain text object.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|


##### Example

In this example, a header with a simple text is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 header("Hello!")
```

###### Output

```json
{
  "type": "header",
  "text": {
    "type": "plain_text",
    "text": "Hello!",
    "emoji": true
  }
}
```
__________________________________________

### _header(PlainText): Header_

Generates a header block, with a plain text object.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The plain text object to use | PlainText|


##### Example

In this example, a header with a plain text object with no support for emojis is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
header({
    'type': "plain_text",
    text: "Hello!",
    emojis: false
})
```

###### Output

```json
{
  "type": "header",
  "text": {
    "type": "plain_text",
    "text": "Hello!",
    "emoji": false
  }
}
```
__________________________________________


## **image** [↑↑](#index )

### _image(String, String): Image_

Generates an image element, with its URL and alternative text.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| url | The URL to the image | String|
| text | The text to use if the image cannot be rendered | String|


##### Example

This example shows how `image` behaves..

###### Source

```dataweave
%dw 2.0
output application/json
---
image("https://api.slack.com/img/blocks/bkb_template_images/profile_1.png", "Michael Scott")
```

###### Output

```json
{
  "type": "image",
  "image_url": "https://api.slack.com/img/blocks/bkb_template_images/profile_1.png",
  "alt_text": "Michael Scott"
}
```
__________________________________________

### _image(String, String, String): ImageBlock_

Generates an image block with a simple text title.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| url | The url for the image | String|
| altText | The alternative text for the image | String|
| title | The value to use for the text title | String|


##### Example

This example shows how `image` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
image("https://api.slack.com/img/blocks/bkb_template_images/profile_1.png", "profile pic", "Your new profile picture is saved")
```

###### Output

```json
{
  "type": "image",
  "image_url": "https://api.slack.com/img/blocks/bkb_template_images/profile_1.png",
  "alt_text": "profile pic",
  "title": {
    "type": "plain_text",
    "text": "Your new profile picture is saved",
    "emoji": true
  }
}
```
__________________________________________

### _image(String, String, PlainText): ImageBlock_

Generates an image block with a text title.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| url | The url for the image | String|
| altText | The alternative text for the image | String|
| title | The text value to use as title | PlainText|


##### Example

This example shows how `image` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
image("https://api.slack.com/img/blocks/bkb_template_images/profile_1.png", "profile pic", text("Your new profile picture is saved"))
```

###### Output

```json
{
  "type": "image",
  "image_url": "https://api.slack.com/img/blocks/bkb_template_images/profile_1.png",
  "alt_text": "profile pic",
  "title": {
    "type": "plain_text",
    "text": "Your new profile picture is saved",
    "emoji": true
  }
}
```
__________________________________________


## **inputBlock** [↑↑](#index )

### _inputBlock(String, Element): Input_

Generates an input block with a simple text label.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| label | The label for the input | String|
| element | The element to use in the input | Element|


##### Example

This example shows how `inputBlock` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
inputBlock("Please select your desired lunch:", inputText("lunch"))
```

###### Output

```json
{
  "type": "input",
  "label": {
    "type": "plain_text",
    "text": "Please select your desired lunch:",
    "emoji": true
  },
  "element": {
    "type": "plain_text_input",
    "action_id": "lunch",
    "multiline": false
  }
}
```
__________________________________________

### _inputBlock(PlainText, Element): Input_

Generates an input block.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| label | The label for the input | PlainText|
| element | The element to use in the input | Element|


##### Example

This example shows how `inputBlock` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
inputBlock(text("Please select your desired lunch:"), inputText("lunch"))
```

###### Output

```json
{
  "type": "input",
  "label": {
    "type": "plain_text",
    "text": "Please select your desired lunch:",
    "emoji": true
  },
  "element": {
    "type": "plain_text_input",
    "action_id": "lunch",
    "multiline": false
  }
}
```
__________________________________________


## **inputText** [↑↑](#index )

### _inputText(String, Boolean): PlainTextInput_

Generates an input object.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| id | The value to use in the `action_id` field | String|
| multiline | Whether the input should be multiline. Defaults to false. | Boolean|


##### Example

This example shows how `inputText` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
inputText("suggestions", true)
```

###### Output

```json
{
  "type": "plain_text_input",
  "action_id": "suggestions",
  "multiline": true
}
```
__________________________________________


## **mrkdwn** [↑↑](#index )

### _mrkdwn(String): Mrkdwn_

Generates a mrkdwn text object.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The mrkdwn to use | String|


##### Example

In this example, a mrkdwn text object featuring bold text is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 mrkdwn("*Hello*")
```

###### Output

```json
{
  "type": "mrkdwn",
  "text": "*Hello*"
}
```
__________________________________________


## **multiStaticSelect** [↑↑](#index )

### _multiStaticSelect(String, String, Array<Option>): MultiStaticSelect_

Generates a multi static select element, with a simple text placeholder, ID and options.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| placeholder | The value to use in the desired placeholder | String|
| id | The value to use in the `action_id` field | String|
| options | The options to select | Array<Option>|


##### Example

This example shows how `multiStaticSelect` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
var versions = ["4.2.1", "4.2.2", "4.3.0"]
---
multiStaticSelect("Choose versions...", "versions", versions map ((item, index) -> option(item, item)))
```

###### Output

```json
{
  "type": "multi_static_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Choose versions...",
    "emoji": true
  },
  "action_id": "versions",
  "options": [
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.1",
        "emoji": true
      },
      "value": "4.2.1"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.2",
        "emoji": true
      },
      "value": "4.2.2"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.3.0",
        "emoji": true
      },
      "value": "4.3.0"
    }
  ]
}
```
__________________________________________

### _multiStaticSelect(PlainText, String, Array<Option>): MultiStaticSelect_

Generates a multi static select element, with its placeholder, ID and options.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| placeholder | The text to use as placeholder | PlainText|
| id | The value to use in the `action_id` field | String|
| options | The options to select | Array<Option>|


##### Example

This example shows how `multiStaticSelect` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
var versions = ["4.2.1", "4.2.2", "4.3.0"]
---
multiStaticSelect(text("Choose versions..."), "versions", versions map ((item, index) -> option(item, item)))
```

###### Output

```json
{
  "type": "multi_static_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Choose versions...",
    "emoji": true
  },
  "action_id": "versions",
  "options": [
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.1",
        "emoji": true
      },
      "value": "4.2.1"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.2",
        "emoji": true
      },
      "value": "4.2.2"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.3.0",
        "emoji": true
      },
      "value": "4.3.0"
    }
  ]
}
```
__________________________________________


## **option** [↑↑](#index )

### _option(String, String)_

Generates an option object, with a simple plain text
 object and its value.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|
| value | The value to use in the option | String|


##### Example

In this example, multiple options are generated from a list of Strings, using the same text and value.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
var versions = ["4.3.0", "4.2.2", "4.1.6"]
---
 versions map ((item) -> option(item, item))
```

###### Output

```json
[
  {
    "text": {
      "type": "plain_text",
      "text": "4.3.0",
      "emoji": true
    },
    "value": "4.3.0"
  },
  {
    "text": {
      "type": "plain_text",
      "text": "4.2.2",
      "emoji": true
    },
    "value": "4.2.2"
  },
  {
    "text": {
      "type": "plain_text",
      "text": "4.1.6",
      "emoji": true
    },
    "value": "4.1.6"
  }
]
```
__________________________________________

### _option(Text, String): Option_

Generates an option object, with a text object and its value.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The text to use | Text|
| value | The value to use in the option | String|


##### Example

In this example, an option is generated with mrkdwn text to select the color red while its value references the hex
color representation for red.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 option(mrkdwn("*Red*"), "FF0000")
```

###### Output

```json
{
  "text": {
    "type": "mrkdwn",
    "text": "*Red*"
  },
  "value": "FF0000"
}
```
__________________________________________


## **optionGroup** [↑↑](#index )

### _optionGroup(String, Array<Option>): OptionGroup_

Generates an option group object, with a simple plain text object and its options.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|
| options | The options to group | Array<Option>|


##### Example

In this example, an option group is generated with a simple value for some options.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
var options = ["4.3.0", "4.2.2"] map ((item) -> option(item, item))
---
 optionGroup("Recommended", options)
```

###### Output

```json
{
  "label": {
    "type": "plain_text",
    "text": "Recommended",
    "emoji": true
  },
  "options": [
    {
      "text": {
        "type": "plain_text",
        "text": "4.3.0",
        "emoji": true
      },
      "value": "4.3.0"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.2",
        "emoji": true
      },
      "value": "4.2.2"
    }
  ]
}
```
__________________________________________

### _optionGroup(PlainText, Array<Option>): OptionGroup_

Generates an option group object, with a plain text object and its options.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The plain text to use | PlainText|
| options | The options to group | Array<Option>|


##### Example

In this example, an option group is generated with a text for some options.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
var options = ["4.2.0", "4.2.1"] map ((item) -> option(item, item))
---
 optionGroup({'type': "plain_text", text: "Others"}, options)
```

###### Output

```json
{
  "label": {
    "type": "plain_text",
    "text": "Others"
  },
  "options": [
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.0",
        "emoji": true
      },
      "value": "4.2.0"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.1",
        "emoji": true
      },
      "value": "4.2.1"
    }
  ]
}
```
__________________________________________


## **radioButtons** [↑↑](#index )

### _radioButtons(String, Array<Option>): RadioButtonGroup_

Generates a radio buttons group, given its ID and options.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| id | The value to use in the `action_id` field | String|
| options | The options to group | Array<Option>|


##### Example

This example shows how `radioButtons` behaves.

###### Source

```dataweave
%dw 2.0
output application/json
---
radioButtons("food", ["spaghetti", "fusilli", "orecchiette"] map option($, $))
```

###### Output

```json
{
  "type": "radio_buttons",
  "action_id": "food",
  "options": [
    {
      "text": {
        "type": "plain_text",
        "text": "spaghetti",
        "emoji": true
      },
      "value": "spaghetti"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "fusilli",
        "emoji": true
      },
      "value": "fusilli"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "orecchiette",
        "emoji": true
      },
      "value": "orecchiette"
    }
  ]
}
```
__________________________________________


## **section** [↑↑](#index )

### _section(String): Section_

Generates a simple section block, with a mrkdwn object.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired mrkdwn text | String|


##### Example

In this example, a section with a mrkdwn text is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 section("Hello!")
```

###### Output

```json
{
  "type": "section",
  "text": {
    "type": "mrkdwn",
    "text": "Hello!"
  }
}
```
__________________________________________

### _section(Text): Section_

Generates a section block, with a text object.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The text object to use | Text|


##### Example

In this example, a section with mrkdwn text is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 section(mrkdwn("*Hello*"))
```

###### Output

```json
{
  "type": "section",
  "text": {
    "type": "mrkdwn",
    "text": "*Hello*"
  }
}
```
__________________________________________

### _section(String, Element): Section_

Generates a section block, with a mrkdwn text object and an accessory element.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired mrkdwn text | String|
| accessory | The element to use | Element|


##### Example

In this example, a section with simple text and a simple button is generated.

###### Source

```dataweave
%dw 2.0
output application/json
---
section("*Tim's Farewell Party* is tonight at 8 PM", button("RSVP", "invite"))

```

###### Output

```json
{
    "type": "section",
    "text": {
      "type": "mrkdwn",
      "text": "*Tim's Farewell Party* is tonight at 8 PM"
    },
    "accessory": {
      "type": "button",
      "text": {
        "type": "plain_text",
        "text": "RSVP",
        "emoji": true
      },
      "action_id": "invite"
    }
  }
```
__________________________________________

### _section(Text, Element): Section_

Generates a section block, with a text object and an accessory element.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The text object to use | Text|
| accessory | The element to use | Element|


##### Example

In this example, a section with mrkdwn text and a simple button is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 section(mrkdwn("*Hello*"), button("Click me!", "bait"))
```

###### Output

```json
{
  "type": "section",
  "text": {
    "type": "mrkdwn",
    "text": "*Hello*"
  },
  "accessory": {
    "type": "button",
    "text": {
      "type": "plain_text",
      "text": "Click me!",
      "emoji": true
    },
    "action_id": "bait"
  }
}
```
__________________________________________

### _section(Array<Text>): Section_

Generates a section block, with an array of text objects or fields.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| fields | An array of text objects to use | Array<Text>|


##### Example

In this example, a section with a mrkdwn text and a plain text is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 section([mrkdwn("*Hello*"), text("Bye!")])
```

###### Output

```json
{
   "type": "section",
   "fields": [
     {
       "type": "mrkdwn",
       "text": "*Hello*"
     },
     {
       "type": "plain_text",
       "text": "Bye!",
       "emoji": true
     }
   ]
 }
```
__________________________________________

### _section(Array<Text>, Element): Section_

Generates a section block, with an array of text objects,or fields, and an accessory element.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| fields | An array of text objects to use | Array<Text>|
| accessory | The element to use | Element|


##### Example

In this example, a section with mrkdwn text, plain text and a simple button is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 section([mrkdwn("*Hello*"), text("Bye!")], button("Click me!", "bait"))
```

###### Output

```json
{
  "type": "section",
  "fields": [
    {
      "type": "mrkdwn",
      "text": "*Hello*"
    },
    {
      "type": "plain_text",
      "text": "Bye!",
      "emoji": true
    }
  ],
  "accessory": {
    "type": "button",
    "text": {
      "type": "plain_text",
      "text": "Click me!",
      "emoji": true
    },
    "action_id": "bait"
  }
}
```
__________________________________________


## **staticSelect** [↑↑](#index )

### _staticSelect(String, String, Array<Option>): StaticSelect_

Generates a static select element, with a simple plain text object as placeholder, its ID and options.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired placeholder | String|
| id | The value to use in `action_id` field | String|
| options | The array of options to offer | Array<Option>|


##### Example

In this example, a static group of options are offered with a simple text placeholder.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
var options = ["4.3.0", "4.2.2", "4.1.6"] map ((item) -> option(item, item))
---
 staticSelect("Choose a version...", "version_menu", options)
```

###### Output

```json
{
  "type": "static_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Choose a version...",
    "emoji": true
  },
  "action_id": "version_menu",
  "options": [
    {
      "text": {
        "type": "plain_text",
        "text": "4.3.0",
        "emoji": true
      },
      "value": "4.3.0"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.2",
        "emoji": true
      },
      "value": "4.2.2"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.1.6",
        "emoji": true
      },
      "value": "4.1.6"
    }
  ]
}
```
__________________________________________

### _staticSelect(PlainText, String, Array<Option>): StaticSelect_

Generates an static select element, with a simple plain text object as placeholder, its ID and options.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired placeholder | String|
| id | The value to use in `action_id` field | String|
| options | The array of options to offer | Array<Option>|


##### Example

In this example, a static group of options are offered with a simple text placeholder.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
var options = ["4.3.0", "4.2.2", "4.1.6"] map ((item) -> option(item, item))
---
 staticSelect("Choose a version...", "version_menu", options)
```

###### Output

```json
{
  "type": "static_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Choose a version...",
    "emoji": true
  },
  "action_id": "version_menu",
  "options": [
    {
      "text": {
        "type": "plain_text",
        "text": "4.3.0",
        "emoji": true
      },
      "value": "4.3.0"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.2.2",
        "emoji": true
      },
      "value": "4.2.2"
    },
    {
      "text": {
        "type": "plain_text",
        "text": "4.1.6",
        "emoji": true
      },
      "value": "4.1.6"
    }
  ]
}
```
__________________________________________


## **staticSelectByGroups** [↑↑](#index )

### _staticSelectByGroups(String, String, Array<OptionGroup>): StaticSelect_

Generates a static select element, with a simple plain text object as placeholder, its ID and option groups.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired placeholder | String|
| id | The value to use in `action_id` field | String|
| optionGroups | The array of options groups to offer | Array<OptionGroup>|


##### Example

In this example, a static group of option groups are offered with a simple text placeholder.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
var recommendedGroup = optionGroup("Recommended", [option("4.3.0", "latest")])
var otherGroup = optionGroup("Other", [option("4.1.1", "original")])
---
 staticSelectGrouped("Choose a version...", "version_menu", [recommendedGroup, otherGroup])
```

###### Output

```json
{
  "type": "static_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Choose a version...",
    "emoji": true
  },
  "action_id": "version_menu",
  "option_groups": [
    {
      "label": {
        "type": "plain_text",
        "text": "Recommended",
        "emoji": true
      },
      "options": [
        {
          "text": {
            "type": "plain_text",
            "text": "4.3.0",
            "emoji": true
          },
          "value": "latest"
        }
      ]
    },
    {
      "label": {
        "type": "plain_text",
        "text": "Others",
        "emoji": true
      },
      "options": [
        {
          "text": {
            "type": "plain_text",
            "text": "4.1.1",
            "emoji": true
          },
          "value": "original"
        }
      ]
    }
  ]
}
```
__________________________________________

### _staticSelectByGroups(PlainText, String, Array<OptionGroup>): StaticSelect_

Generates an static select element, with a plain text object as placeholder, its ID and option groups.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| text | The text to use as placeholder | PlainText|
| id | The value to use in `action_id` field | String|
| optionGroups | The array of options groups to offer | Array<OptionGroup>|


##### Example

In this example, a static group of option groups are offered with a text placeholder.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
var recommendedGroup = optionGroup("Recommended", [option("4.3.0", "latest")])
var otherGroup = optionGroup("Other", [option("4.1.1", "original")])
---
 staticSelectByGroups({'type': "plain_text", text:"Some versions"}, "version_menu", [recommendedGroup, otherGroup])
```

###### Output

```json
{
  "type": "static_select",
  "placeholder": {
    "type": "plain_text",
    "text": "Some versions"
  },
  "action_id": "version_menu",
  "option_groups": [
    {
      "label": {
        "type": "plain_text",
        "text": "Recommended",
        "emoji": true
      },
      "options": [
        {
          "text": {
            "type": "plain_text",
            "text": "4.3.0",
            "emoji": true
          },
          "value": "latest"
        }
      ]
    },
    {
      "label": {
        "type": "plain_text",
        "text": "Others",
        "emoji": true
      },
      "options": [
        {
          "text": {
            "type": "plain_text",
            "text": "4.1.1",
            "emoji": true
          },
          "value": "original"
        }
      ]
    }
  ]
}
```
__________________________________________


## **text** [↑↑](#index )

### _text(String): PlainText_

Generates a plain text object, with emojis enabled.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The text to use | String|


##### Example

In this example, a text object featuring a wave emoji is generated.

###### Source

```dataweave
%dw 2.0
output application/json
import * from org::mule::weave::slack::Builders
---
 text("Hello! :wave:")
```

###### Output

```json
{
  "type": "plain_text",
  "text": "Hello! :wave:",
  "emoji": true
}
```
__________________________________________


## **withStyle** [↑↑](#index )

### _withStyle(Button, Style): Button_

Adds a style field to a button.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| button | The button to add a value to | Button|
| style | The style to add | Style|


##### Example

This example shows how `withStyle` is used.

###### Source

```dataweave
%dw 2.0
output application/json
---
button("Click me!", "bait") withStyle "danger"

```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Click me!",
    "emoji": true
  },
  "action_id": "bait",
  "style": "danger"
}
```
__________________________________________


## **withUrl** [↑↑](#index )

### _withUrl(Button, String): Button_

Adds a url field to a button.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| button | The button to add a value to | Button|
| url | The url to add | String|


##### Example

This example shows how `withUrl` is used.

###### Source

```dataweave
%dw 2.0
output application/json
---
button("Click me!", "bait") withUrl "http://httpbin.org"

```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Click me!",
    "emoji": true
  },
  "action_id": "bait",
  "url": "http://httpbin.org"
}
```
__________________________________________


## **withValue** [↑↑](#index )

### _withValue(Button, String): Button_

Adds a value field to a button.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| button | The button to add a value to | Button|
| value | The value to add | String|


##### Example

This example shows how `withValue` is used.

###### Source

```dataweave
%dw 2.0
output application/json
---
button("Click me!", "bait") withValue "spam"

```

###### Output

```json
{
  "type": "button",
  "text": {
    "type": "plain_text",
    "text": "Click me!",
    "emoji": true
  },
  "action_id": "bait",
  "value": "spam"
}
```
__________________________________________






