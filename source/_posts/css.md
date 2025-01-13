---
title: CSS3
date: 2024-12-30 11:56:21
tags:
---

# 1 Getting started with CSS

## 1.1 What is CSS?

&emsp;&emsp;CSS (Cascading Style Sheets) is used to style and lay out web pages.

## 1.2 Adding CSS to the document

There are three different ways to apply CSS to an HTML document.

### External stylesheets

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

### Internal stylesheets

Internal stylesheets are contained within `<style>` elements, which go inside the HTML `<head>`.

```html
<style>
    p {
        color: purple;
    }
</style>
```

### Inline styles

Inline styles are CSS declarations that *affect a single HTML element*, contained within a style attribute.

Add a `style` attribute to the element to specify its style.

```html
<span style="color: purple; font-weight: bold">span element</span>
```

> **Avoid using CSS in this way if possible.** It is a bad practice.

## 1.3 Selectors

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

### Type selectors

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

### Class selectors

The case-sensitive class selector starts with a dot `.` character. It will select everything in the document with that class applied to it.

```css
body {
    font-family: sans-serif;
}

.highlight {
    background-color: yellow;
}
```

### ID selectors

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

### Attribute selectors

## 1.4 Combinators

## 1.5 The box model

# 2 Text styling

# 3 Layout
