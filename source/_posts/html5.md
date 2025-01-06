---
title: HTML5
date: 2024-12-30 10:56:21
tags:
---

# 1 Getting started with HTML

## 1.1 What is HTML?

&emsp;&emsp;HTML (HyperText Markup Language) is the code that is used to structure a web page and its content.

## 1.2 

## 1.3 Including special characters in HTML

| Literal character | Character reference equivalent |
|:-----------------:|:------------------------------:|
| <                 | `&lt;`                         |
| >                 | `&gt;`                         |
| "                 | `&quot;`                       |
| '                 | `&apos;`                       |
| &                 | `&amp;`                        |

## 1.4 HTML comments

HTML has a mechanism to write comments in the code. Browsers ignore comments, effectively making comments invisible to the user.

```html
<p>I'm not inside a comment</p>
<!-- <p>I am!</p> -->
```

# 2 What's in the head?

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

# 3 Headings and paragraphs

In HTML, each paragraph has to be wrapped in a `<p>` element, like so:

```html
<p>I am a paragraph, oh yes I am.</p>
```

Each heading has to be wrapped in a heading element:

```html
<h1>I am the title of the story.</h1>
```

> There are six heading elements: h1, h2, h3, h4, h5, and h6. Each element represents a different level of content in the document.

# 4 Emphasis and importance

## 4.1 Emphasis and importance

```html
<p>I am <em>glad</em> you weren't <em>late</em>.</p>
<p>This liquid is <strong>highly toxic</strong>.</p>
<p>I am counting on you. <strong>Do not</strong> be late!</p>
<p>This liquid is <strong>highly toxic</strong> — if you drink it, <strong>you may <em>die</em></strong>.</p>
```

## 4.2 Italic, bold, underline…

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

# 5 Lists

## 5.1 Unordered lists

```html
<ul>
    <li>milk</li>
    <li>eggs</li>
    <li>bread</li>
    <li>hummus</li>
</ul>
```

## 5.2 Ordered lists

```html
<ol>
    <li>Drive to the end of the road</li>
    <li>Turn right</li>
    <li>Go straight across the first two roundabouts</li>
    <li>Turn left at the third roundabout</li>
    <li>The school is on your right, 300 meters up the road</li>
</ol>
```

## 5.3 Nesting lists

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

## 5.4 Description lists

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

# 6 Structuring documents



