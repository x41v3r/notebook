# 1 About CSS

&emsp;&emsp;Cascading Style Sheet(CSS) is a stylesheet language used to describe the presentation of a document written in HTML or XML. CSS describes how elements should be rendered on screen, on paper, in speech, or on other media.

> Sample code

```html
<!-- index.html -->
<html>
    <head>
        <title>Hello CSS</title>
        <link rel="stylesheet" href="./css/style.css"/><!-- this is our link to the external stylesheet -->
        <style><!-- internal stylesheet  -->
            p {
                color: limegreen;
                /*
                    The text inside p element will be set to limegreen,
                    because our internal stylesheet is read last.
                */
            }
        </style>
    </head>
    <body>
        <p>
I'm learning CSS!
        </p>
        <p style="color: blue"><!-- the color of this p element will be set to blue, because the stylesheet is applied directly to the element itself  -->
I'm learning CSS again!
        </p>
    </body>
</html>
```

```css
/* /css/style.css */
/*
    this way is commonly used
*/
p {
    color: purple;
    font-size: 64px;
}
```

> Anatomy of a CSS ruleset

![css-ruleset](./images/css-ruleset.png)

Note the other important parts of the syntax:

* Apart from the selector, each ruleset must be wrapped in curly braces `{}`. 
    * Leave a space before the curly braces and after the selector.
* Within each declaration, we must use a colon `:` to separate the property from its value or values.
    * Leave a space before the property value(s) and after the colon.
* Within each ruleset, we must use a semicolon `;` to separate each declaration from the next one:

```css
p {
    color: red;
    width: 500px;
    border: 1px solid black;
}
```

# 2 Selectors

## 2.1 Element Selector

```css
/*

*/
body {

}


/*
    select any h2 element inside the h1 element
*/
h1 h2 {

}

/*
    select both h1 element and h2 elements on the page
*/
h1, h2 {

}

/*
    select any span element inside any p element
*/
p span {
   text-transform: uppercase;
   background-color: gold;
}
```

## 2.2 Class Selector

```css
.hightlight {
   text-transform: uppercase;
   background-color: gold;
}
.first {
    color: red;
}
```

```html
<p class="hightlight first">
In this in-depth course, you will learn about all the key features of CSS. This is the most comprehensive CSS course we've published to date. So if you want to become an expert in Cascading Style Sheets, this is the course for you.    
</p>
<p class="hightlight">
In this in-depth course, you will learn about all the key features of CSS. This is the most comprehensive CSS course we've published to date. So if you want to become an expert in Cascading Style Sheets, this is the course for you.    
</p>
```

## 2.3 Id Selector

```css
#name {

}
```

## 2.4 Universal Selector

```css
/*
    this means selecting everything on the page
*/
* {

}
```

# 3 Colors



# 4 



# 5



