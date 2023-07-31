# Web Front-end Development

* Tim Berners Lee created the World Wide Web in 1994.
* This has established a unified standard specification for the development of web pages, which is also the current web development standard.
* The web pages we are currently writing need to follow this W3C standard specification.

| Structure | Performance |  Behavior  |
| --------- | ----------- | ---------- |
| HTML      | CSS         | JavaScript |

## 1 HTML

> HTML: Hypertext Mark-up Language

### 1.1 The basic structure of a web page

```html
<!DOCTYPE html>  <!-- The document declaration tells the browser the HTML version of the webpage, which indicates that it is in accordance with the HTML5 standard. -->
<html> <!-- The root tag of HTML, all content of the webpage should be written within the root tag. -->
    <head> <!-- The header of a webpage, where the internal content is generally not displayed in the browser, is used to assist the browser or search engine in parsing the webpage. -->
        <meta charset="utf-8"/> <!-- Meta tag is used to set metadata. Here, the character set for browser parsing of web pages is specified as utf-8. -->
        <title>This is the first webpage.</title> <!-- Title element, whose content is displayed within the browser tags. -->
    </head>
    <body><!-- Main body of the web page, all content that needs to be displayed is written within the body element. -->
        <!-- I am a comment and will not be displayed on the webpage. -->
        <p>Hello,World</p>
    </body>
</html>
```
* Tags usually appear in pairs, but there are some self ending tags.
    * complete tags&emsp;`<p>content</p>`
    * self ending tags &emsp;`<img >` or `<img />` (Both of these are correct.)
* There are only multiline comments in HTML, no single line comments. And comment tags are not allowed to be nested, otherwise the outer layer comment tag will end prematurely.
* Except for annotations, the content directly written in the body tag will be displayed on the page (in the specified style and layout).

### 1.2 Entity

> Sometimes in HTML, we cannot directly write some special symbols, such as multiple consecutive spaces, greater than and less than signs on both sides of the letter. 
> Multiple consecutive spaces in HTML source code, no matter how many, will be automatically parsed by the browser as one by default.

```html
<!--
    If you have to use these special symbols in a web page, you need to use entities (Escape character) in html.
    Format of entity:
        &entity_name;
-->
&emsp;   <!-- a space -->
&gt;  <!-- a greater-than symbol -->
&lt;  <!-- a less-than symbol -->
&copy;  <!-- a Copy right symbol -->
```

### 1.3 The Meta Tag

> The meta element is used to set the web page metadata.   
> The metadata is not for users to see, but for web page parsing information provided to browsers.

```html
<meta charset="UTF-8"/>
<!-- set the charset of the web page -->

<meta name="keywords" content="HTML5,前端"/>
<!--
    The name of this metadata is "keywords". 
    Set keywords for web pages to facilitate search engines.
    We can set multiple keywords for a webpage at the same time, with each keywords separated by an English comma.
 -->

<meta name="description" content="这是一个非常不错的网站"/>
<!-- 
    The name of this metadata is "description". 
    It is used to set a description of the website, which will be displayed in the description information of search results in search engines. 
 -->

<meta http-equiv="refresh" content="3;url=https://www.baidu.com"/>
<!--
    Refresh within 3 seconds and redirect to the specified URL.
-->
```

### 1.4 Semantic Tags

```html
<!-- title tags (block element)-->
<h1>first level title</h1>
<h2>second level title</h2>
<h3>third level title</h3>
<h4>forth level title</h4>
<h5>fifth level title</h5>
<h6>sixth level title</h6>

<!-- hgroup -->
<hgroup>
    <h1>main title</h1>
    <h2>subtitle</h2>
</hgroup>

<!-- p (block element) -->
<p>this is a paragraph</p>

<!-- div (block element) -->
<div></div>

<!-- span (inline element) -->
<span></span>
```
* Semantic tags are divided into to categories: 
    * Block elements
    * Inline elements
* Generally, inline elements are placed within block elements, but block elements are not allowed to be placed within inline elements. But there are some exceptions: 
    * Basically, anything can be placed within a block element, but no block element can be placed within a p element. (the p element is also a block element)
    * Basically, nothing can be placed within an inline element, but anything can be palced in an a element. (the a element is also an inline element) 

### 1.5 HTML Tabulation

## 2 CSS

> CSS: Cascading Style Sheets

## 3 JavaScript
