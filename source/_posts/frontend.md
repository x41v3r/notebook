---
title: Front-end Development
date: 2024-12-30 10:56:21
tags:
---

# 1 HTML

## 1.1 Getting started with HTML

### 1.1.1 What is HTML?

&emsp;&emsp;HTML (HyperText Markup Language) is the code that is used to structure a web page and its content.

## 1.1.2 

## 1.1.3 Including special characters in HTML

| Literal character | Character reference equivalent |
|:-----------------:|:------------------------------:|
| <                 | `&lt;`                         |
| >                 | `&gt;`                         |
| "                 | `&quot;`                       |
| '                 | `&apos;`                       |
| &                 | `&amp;`                        |

## 1.1.4 HTML comments

HTML has a mechanism to write comments in the code. Browsers ignore comments, effectively making comments invisible to the user.

```html
<p>I'm not inside a comment</p>
<!-- <p>I am!</p> -->
```

## 1.2 What's in the head?

```html
<!doctype html>
<html lang="en-US">
    <head>
        <meta charset="utf-8" />
        <title>My test page</title>
    </head>
    <body>
        <p>This is my page</p>
    </body>
</html>
```

## 1.3 Headings and paragraphs

In HTML, each paragraph has to be wrapped in a `<p>` element, like so:

```html
<p>I am a paragraph, oh yes I am.</p>
```

Each heading has to be wrapped in a heading element:

```html
<h1>I am the title of the story.</h1>
```

> There are six heading elements: h1, h2, h3, h4, h5, and h6. Each element represents a different level of content in the document.

## 1.4 Emphasis and importance

### 1.4.1 Emphasis and importance

```html
<p>I am <em>glad</em> you weren't <em>late</em>.</p>
<p>This liquid is <strong>highly toxic</strong>.</p>
<p>I am counting on you. <strong>Do not</strong> be late!</p>
<p>This liquid is <strong>highly toxic</strong> — if you drink it, <strong>you may <em>die</em></strong>.</p>
```

### 1.4.2 Italic, bold, underline…

```html
<!-- scientific names -->
<p>
    The Ruby-throated Hummingbird (<i>Archilochus colubris</i>) is the most common
    hummingbird in Eastern North America.
</p>

<!-- foreign words -->
<p>
    The menu was a sea of exotic words like <i lang="uk-latn">vatrushka</i>,
    <i lang="id">nasi goreng</i> and <i lang="fr">soupe à l'oignon</i>.
</p>

<!-- a known misspelling -->
<p>Someday I'll learn how to <u class="spelling-error">spel</u> better.</p>

<!-- term being defined when used in a definition -->
<dl>
    <dt>Semantic HTML</dt>
    <dd>
        Use the elements based on their <b>semantic</b> meaning, not their
        appearance.
    </dd>
</dl>
```

## 1.5 Lists

### 1.5.1 Unordered lists

```html
<ul>
    <li>milk</li>
    <li>eggs</li>
    <li>bread</li>
    <li>hummus</li>
</ul>
```

### 1.5.2 Ordered lists

```html
<ol>
    <li>Drive to the end of the road</li>
    <li>Turn right</li>
    <li>Go straight across the first two roundabouts</li>
    <li>Turn left at the third roundabout</li>
    <li>The school is on your right, 300 meters up the road</li>
</ol>
```

### 1.5.3 Nesting lists

It is perfectly OK to nest one list inside another one.

```html
<ol>
    <li>Remove the skin from the garlic, and chop coarsely.</li>
    <li>Remove all the seeds and stalk from the pepper, and chop coarsely.</li>
    <li>Add all the ingredients into a food processor.</li>
    <li>
        Process all the ingredients into a paste.
        <ul>
            <li>If you want a coarse "chunky" hummus, process it for a short time.</li>
            <li>If you want a smooth hummus, process it for a longer time.</li>
        </ul>
    </li>
</ol>
```

### 1.5.4 Description lists

The purpose of description lists is to *mark up a set of items and their associated descriptions*, such as terms and definitions, or questions and answers.

```html
<dl>
    <dt>soliloquy</dt>
    <dd>
        In drama, where a character speaks to themselves, representing their inner
        thoughts or feelings and in the process relaying them to the audience (but
        not to other characters.)
    </dd>
    <dt>monologue</dt>
    <dd>
        In drama, where a character speaks their thoughts out loud to share them
        with the audience and any other characters present.
    </dd>
    <dt>aside</dt>
    <dd>
        In drama, where a character shares a comment only with the audience for
        humorous or dramatic effect. This is usually a feeling, thought, or piece of
        additional background information.
    </dd>
</dl>
```

## 1.6 Structuring documents

# 2 CSS

## 2.1 Getting started with CSS

### 2.1.1 What is CSS?

&emsp;&emsp;CSS (Cascading Style Sheets) is used to style and lay out web pages.

### 2.1.2 Adding CSS to the document

There are three different ways to apply CSS to an HTML document.

#### External stylesheets

```css
/*styles.css*/
h1 {
    color: red;
}
```

To link styles.css to index.html, add the following line somewhere inside the `<head>` of the HTML document:

```html
<link rel="stylesheet" href="styles.css" />
```

#### Internal stylesheets

Internal stylesheets are contained within `<style>` elements, which go inside the HTML `<head>`.

```html
<style>
    p {
        color: purple;
    }
</style>
```

#### Inline styles

Inline styles are CSS declarations that *affect a single HTML element*, contained within a style attribute.

Add a `style` attribute to the element to specify its style.

```html
<span style="color: purple; font-weight: bold">span element</span>
```

> **Avoid using CSS in this way if possible.** It is a bad practice.

### 2.1.3 Selectors

A CSS selector is a pattern of elements and other terms that tell the browser *which HTML elements should be selected to have the CSS property values inside the rule applied to them*.

The element or elements which are selected by the selector are referred to as the subject of the selector.

```html
<body>
    <h1 class="heading">Selectors</h1>
    <p id="one">
        Veggies es bonus vobis, proinde vos postulo essum magis
        <span class="highlight first-para">kohlrabi welsh onion</span> daikon amaranth tatsoi tomatillo melon azuki
        bean garlic.
    </p>

    <p class="highlight">
        Gumbo beet greens corn soko <strong>endive</strong> gumbo gourd. Parsley
        shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra
        wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.
    </p>

    <p>
        Turnip greens yarrow ricebean rutabaga <em>endive cauliflower</em> sea lettuce
        kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter
        purslane kale. Celery potato scallion desert raisin horseradish spinach
    </p>
</body>
```

#### Type selectors

A type selector is sometimes referred to as a *tag name selector* or *element selector* because it selects an HTML tag/element in the document.

```css
body {
    font-family: sans-serif;
}

span {
    background-color: yellow;
}

strong {
    color: rebeccapurple;
}

em {
    color: rebeccapurple;
}
```

#### Class selectors

The case-sensitive class selector starts with a dot `.` character. It will select everything in the document with that class applied to it.

```css
body {
    font-family: sans-serif;
}

.highlight {
    background-color: yellow;
}
```

#### ID selectors

The case-sensitive ID selector begins with a `#` rather than a dot character, but is used in the same way as a class selector. The difference is that an ID can be used only once per page, and elements can only have a single id value applied to them.

```css
body {
  font-family: sans-serif;
}

#one {
  background-color: yellow;
}

h1#heading {
  color: rebeccapurple;
}
```

#### Attribute selectors

### 2.1.4 Combinators

### 2.1.5 The box model

## 2.2 Text styling

## 2.3 Layout

