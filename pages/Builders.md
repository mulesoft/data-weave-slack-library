Provides functions to simplify the creation and composition of:

- [blocks](https://api.slack.com/block-kit)
- [elements](https://api.slack.com/reference/block-kit/block-elements)
- [objects](https://api.slack.com/reference/block-kit/composition-objects)

These are the supported components:

- [actions](https://api.slack.com/reference/block-kit/blocks#actions)
- [divider](https://api.slack.com/reference/block-kit/blocks#divider)
- [header](https://api.slack.com/reference/block-kit/blocks#header)
- [section](https://api.slack.com/reference/block-kit/blocks#section)
- [text](https://api.slack.com/reference/block-kit/composition-objects#text)
- [button](https://api.slack.com/reference/block-kit/block-elements#button)
- [option](https://api.slack.com/reference/block-kit/composition-objects#option)
- [option group](https://api.slack.com/reference/block-kit/composition-objects#option_group)
- [static select](https://api.slack.com/reference/block-kit/block-elements#static_select)

__________________________________________

# Index

### Functions
| Name | Description|
|------|------------|
| [actions](#actions-index ) | Generates an actions block.|
| [blocks](#blocks-index ) | Generates the standard block kit syntax to define a group of blocks.|
| [button](#button-index ) | Generates a button element, with a simple plain text<br> object and ID.|
| [buttonWithUrl](#buttonwithurl-index ) | Generates a button element, with a simple plain text object, an ID and an URL.|
| [buttonWithValue](#buttonwithvalue-index ) | Generates a button element, with a simple plain text object, an ID and a value.|
| [divider](#divider-index ) | Generates a divider block.|
| [header](#header-index ) | Generates a header block, with a simple plain text object.|
| [mrkdwn](#mrkdwn-index ) | Generates a mrkdwn text object.|
| [option](#option-index ) | Generates an option object, with a simple plain text<br> object and its value.|
| [optionGroup](#optiongroup-index ) | Generates an option group object, with a simple plain text object and its options.|
| [section](#section-index ) | Generates a simple section block, with a plain text object.|
| [staticSelect](#staticselect-index ) | Generates an static select element, with a simple plain text object as placeholder, its ID and options.|
| [staticSelectByGroups](#staticselectbygroups-index ) | Generates a static select element, with a simple plain text object as placeholder, its ID and option groups.|
| [text](#text-index ) | Generates a plain text object, with emojis enabled.|









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


## **section** [↑↑](#index )

### _section(String): Section_

Generates a simple section block, with a plain text object.

##### Parameters

| Name   | Description | Type|
|--------|-------------|-----|
| message | The value to use in the desired text | String|


##### Example

In this example, a section with a simple text is generated.

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
    "type": "plain_text",
    "text": "Hello",
    "emoji": true
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






