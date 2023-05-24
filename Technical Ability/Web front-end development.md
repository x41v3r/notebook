# Web front-end development

* Tim Berners Lee created the World Wide Web in 1994.
* This has established a unified standard specification for the development of web pages, which is also the current web development standard.
* The web pages we are currently writing need to follow this W3C standard specification.

| Structure | Performance |  Behavior  |
| --------- | ----------- | ---------- |
| HTML      | CSS         | JavaScript |

## 1 HTML

> HTML: Hypertext Mark-up Language

### 1.1 basic structure

```html
<!DOCTYPE html> <!-- The document declaration tells the browser the HTML version of the webpage, which indicates that it is in accordance with the HTML5 standard. -->
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
    * complete tag&emsp;`<p>content</p>`
    * self ending tags &emsp;`<img >` or `<img />` (Both of these are correct.)
* HTML only has multiline comments, and comment tags are not allowed to be nested, otherwise the outer layer comments will end prematurely. Except for annotations, the content directly written in the body tag will be displayed on the page (in the specified style and layout).

### 1.2 entity

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

### 1.3

## 2 CSS

> CSS: Cascading Style Sheets



## 3 JavaScript


