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
        <style></style>  <!-- Internal stylesheet -->
        <script></script>  <!-- Internal JavaScript codes -->
        <link src="path_to_file"/>  <!-- External stylesheet or JavaScript  -->
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

## 6.1 

A "typical website" could be structured something like this:

<img src="/images/webpage-structure-sample.png"/>

```html
<!doctype html>
<html lang="en-US">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width" />
        <title>My page title</title>
        <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:300|Sonsie+One" rel="stylesheet" />
        <link rel="stylesheet" href="style.css" />
    </head>
    <body>
    
        <!-- The main header used across all the pages of our website -->
        <header>
          <h1>Header</h1>
        </header>

        <!-- navigation bar -->
        <nav>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Our team</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="#">Contact</a></li>
            </ul>

            <!-- A Search form: another common non-linear way to navigate through a site. -->
            <form>
                <input type="search" name="q" placeholder="Search query" />
                <input type="submit" value="Go!" />
            </form>
        </nav>

        <!-- Our page's main content -->
        <main>
            <!-- An article -->
            <article>
                <h2>Article heading</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Donec a diam
                    lectus. Set sit amet ipsum mauris. Maecenas congue ligula as quam
                    viverra nec consectetur ant hendrerit. Donec et mollis dolor. Praesent
                    et diam eget libero egestas mattis sit amet vitae augue. Nam tincidunt
                    congue enim, ut porta lorem lacinia consectetur.
                </p>
                <section>
                    <h3>Subsection</h3>

                    <p>
                        Donec ut librero sed accu vehicula ultricies a non tortor. Lorem
                        ipsum dolor sit amet, consectetur adipisicing elit. Aenean ut
                        gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id
                        dolor.
                    </p>

                    <p>
                        Pelientesque auctor nisi id magna consequat sagittis. Curabitur
                        dapibus, enim sit amet elit pharetra tincidunt feugiat nist
                        imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed
                        odio eros.
                    </p>
                </section>

                <section>
                    <h3>Another subsection</h3>

                    <p>
                        Donec viverra mi quis quam pulvinar at malesuada arcu rhoncus. Cum
                        soclis natoque penatibus et manis dis parturient montes, nascetur
                        ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at
                        sem facilisis semper ac in est.
                    </p>

                    <p>
                        Vivamus fermentum semper porta. Nunc diam velit, adipscing ut
                        tristique vitae sagittis vel odio. Maecenas convallis ullamcorper
                        ultricied. Curabitur ornare, ligula semper consectetur sagittis,
                        nisi diam iaculis velit, is fringille sem nunc vet mi.
                    </p>
                </section>
            </article>

            <!-- the aside content can also be nested within the main content -->
            <aside>
                <h2>Related</h2>
                <ul>
                    <li><a href="#">Oh I do like to be beside the seaside</a></li>
                    <li><a href="#">Oh I do like to be beside the sea</a></li>
                    <li><a href="#">Although in the North of England</a></li>
                    <li><a href="#">It never stops raining</a></li>
                    <li><a href="#">Oh well…</a></li>
                </ul>
            </aside>
        </main>

        <!-- The footer that is used across all the pages of our website -->
        <footer>
            <p>©Copyright 2050 by nobody. All rights reversed.</p>
        </footer>
    </body>
</html>
```

## 6.2 Non-semantic wrappers

Sometimes we'll come across a situation where *we can't find an ideal semantic element to group some items together or wrap some content*.

Sometimes we might want to just group a set of elements together to affect them all as a single entity with some **CSS** or **JavaScript**.

For cases like these, **HTML** provides the `<div>` and `<span>` elements.

> We should use these elements preferably with a **suitable class attribute**, to provide some kind of label for them so they can be easily targeted.

`<span>` is an inline non-semantic element.

```html
<p>
    The King walked drunkenly back to his room at 01:00, the beer doing nothing to
    aid him as he staggered through the door.
    <span class="editor-note">
        [Editor's note: At this point in the play, the lights should be down low].
    </span>
</p>
```

`<div>` is a block level non-semantic element.

```html
<div class="shopping-cart">
    <h2>Shopping cart</h2>
    <ul>
        <li>
            <p>
                <a href=""><strong>Silver earrings</strong></a>: $99.95.
            </p>
            <img src="../products/3333-0985/thumb.png" alt="Silver earrings" />
        </li>
        <li>…</li>
    </ul>
    <p>Total cost: $237.89</p>
</div>
```

## 6.3 Line breaks and horizontal rules

