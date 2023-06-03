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
      <title>This is the first webpage.</title> <!-- title标签 网页标签内的显示内容 -->
  </head>
  <body><!-- 网页主体 所有需要显示的网页内容都写在body内-->
      <!-- 我是一个注释，不会显示在浏览器中 -->
      <p>Hello,World</p>
  </body>
</html>
```
* Tags usually appear in pairs, but there are some self ending tags.
    * complete tags&emsp;`<p>content</p>`
    * self ending tags &emsp;`<img >` or `<img />` (Both of these are correct.)
* HTML only has multiline comments, and comment tags are not allowed to be nested, otherwise the outer layer comments will end prematurely. Except for annotations, the content directly written in the body tag will be displayed on the page (in the specified style and layout).

### 1.2 Entity

> Sometimes in HTML, we cannot directly write some special symbols, such as multiple consecutive spaces, greater than and less than signs on both sides of the letter. 
> Multiple consecutive spaces in HTML source code, no matter how many, will be automatically parsed by the browser as one by default.

```html
<!--
  如果必须在网页中使用这些特殊符号，那么就需要使用html中的实体（转义字符）。
  实体的格式：
    &实体名;
-->
&emsp;   <!-- a space -->
&gt;  <!-- great than -->
&lt;  <!-- less than -->
&copy;  <!-- Copy right -->
```

### 1.3 The meta tag

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

### 1.4 Semantic tags

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

<!-- p (block element)-->
<p>this is a paragraph</p>

<!-- div (block element) -->
<div></div>

<!-- span (inline element) -->
<span></span>
```

### 1.5 HTML Tabulation



## 2 CSS

> CSS: Cascading Style Sheets



## 3 JavaScript


