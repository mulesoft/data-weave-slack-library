Representation of all Slack [blocks](https://api.slack.com/reference/block-kit/blocks):

- [actions](https://api.slack.com/reference/block-kit/blocks#actions)
- [context](https://api.slack.com/reference/block-kit/blocks#context)
- [divider](https://api.slack.com/reference/block-kit/blocks#divider)
- [file](https://api.slack.com/reference/block-kit/blocks#file)
- [header](https://api.slack.com/reference/block-kit/blocks#header)
- [image](https://api.slack.com/reference/block-kit/blocks#image)
- [input](https://api.slack.com/reference/block-kit/blocks#input)
- [section](https://api.slack.com/reference/block-kit/blocks#section)

__________________________________________

# Index




### Types
| Name | Description|
|------|------------|
|[Actions](#actions-index ) | Represents an action block.|
|[Block](#block-index ) | Generic representation of a block.|
|[Context](#context-index ) | Represents a context block.|
|[Divider](#divider-index ) | Represents a divider block.|
|[File](#file-index ) | Represents a file block.|
|[Header](#header-index ) | Represents a header block.|
|[ImageBlock](#imageblock-index ) | Represents an image block.|
|[Input](#input-index ) | Represents an input block.|
|[OptionalId](#optionalid-index ) | Helper type to reuse block IDs|
|[Section](#section-index ) | Helper type to encapsulate fields|
|[WithFields](#withfields-index ) | Helper type to encapsulate fields|
|[WithText](#withtext-index ) | Helper type to reuse text|







__________________________________________





__________________________________________

# Types

### **Actions** [↑↑](#index )
Represents an action block.

#### Definition

```dataweave
OptionalId & { "type": "actions", elements: Array<Element> }
```


### **Block** [↑↑](#index )
Generic representation of a block.

#### Definition

```dataweave
OptionalId & { "type": String }
```


### **Context** [↑↑](#index )
Represents a context block.

#### Definition

```dataweave
OptionalId & { "type": "context", elements: Array<Image | Text> }
```


### **Divider** [↑↑](#index )
Represents a divider block.

#### Definition

```dataweave
OptionalId & { "type": "divider" }
```


### **File** [↑↑](#index )
Represents a file block.

#### Definition

```dataweave
OptionalId & { "type": "file", source: "remote", external_id: String }
```


### **Header** [↑↑](#index )
Represents a header block.

#### Definition

```dataweave
OptionalId & { "type": "header", text: PlainText }
```


### **ImageBlock** [↑↑](#index )
Represents an image block.

#### Definition

```dataweave
OptionalId & Image & { title?: PlainText }
```


### **Input** [↑↑](#index )
Represents an input block.

#### Definition

```dataweave
OptionalId & { "type": "input", label: PlainText, element: Element, dispatch_action?: Boolean, hint?: PlainText, optiona?: Boolean }
```


### **OptionalId** [↑↑](#index )
Helper type to reuse block IDs

#### Definition

```dataweave
{ block_id?: String }
```


### **Section** [↑↑](#index )
Helper type to encapsulate fields

#### Definition

```dataweave
OptionalId & WithText | OptionalId & WithFields & { "type": "section", accessory?: Element }
```


### **WithFields** [↑↑](#index )
Helper type to encapsulate fields

#### Definition

```dataweave
{ fields: Array<Text> }
```


### **WithText** [↑↑](#index )
Helper type to reuse text

#### Definition

```dataweave
{ text: Text }
```




