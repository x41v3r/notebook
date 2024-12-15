# 1 HTML

## 1.1 Getting started with HTML

&emsp;&emsp;HTML (HyperText Markup Language) is the code that is used to structure a web page and its content.

## 1.2 What's in the head? Metadata in HTML

&emsp;&emsp;The HTML head is the contents of the `<head>` element.

```html
<head>
    <meta charset="utf-8" />  <!-- specify the document's character encoding -->
    <meta name="author" content="Chris Mills" />  <!-- add an author  -->
    <meta name="description" content="The MDN Web Docs Learning Area aims to provide complete beginners to the Web with all they need to know to g    et started with developing websites and applications." />  <!-- add a description -->                                                              16
    <title>My test page</title>  <!-- add a title -->
</head>
```

Notes:

* `utf-8` is a universal character set that includes pretty much any character from any human language. (This means that the web page will be able     to handle displaying any language.)
* 

## 1.3 HTML text fundamentals

### 1.3.1 Headings and paragraphs

&emsp;&emsp;In HTML, each paragraph has to be wrapped in a `<p>` element, like so:

```html 
<p>I am a paragraph, oh yes I am.</p>
```

Each heading has to be wrapped in a heading element: 

```html
<h1>I am the title of the story.</h1>
```

> &emsp;&emsp;There are six heading elements: h1, h2, h3, h4, h5, and h6. Each element represents a different level of content in the document; `<h1>` represents the main heading, `<h2>` represents subheadings, `<h3>` represents sub-subheadings, and so on.

### 1.3.2 Lists

&emsp;&emsp;Unordered lists are used to mark up lists of items for which the order of the items doesn't matter.

```html
<ul>
    <li>milk</li>
    <li>eggs</li>
    <li>bread</li>
    <li>hummus</li>
</ul>
```

&emsp;&emsp;Ordered lists are lists in which the order of the items does matter.

```html
<ol>
    <li>milk</li>
    <li>eggs</li>
    <li>bread</li>
    <li>hummus</li>
</ol>
```

### 1.3.3 Emphasis and importance

# 2 CSS

# 3 JavaScript

# 4 TypeScript
