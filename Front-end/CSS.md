# 一、关于CSS

> 网页实际上是一个**多层的结构**，通过CSS可以为网页的每一层分别设置样式  
> 而最终我们能看到的只是网页最上边的一层  
> 总之，CSS的作用就是**设置网页中元素的样式**

## 1.CSS编写的位置

> 内联样式表：在标签内部通过style属性来设置元素的样式
  
* 问题：
    * 内联样式只能对一个标签生效，如果希望影响到多个元素，就必须在每一个元素中都复制一遍
    * 当样式发生变化时，我们必须一个一个地修改，非常不方便
    * 多条样式会写到同一行中，不能格式化，不便于程序的编写和阅读
* 注意：在实际开发时**不要使用内联样式**
    
```html
<p style="color:red;font-size:200px;">明天，你好</p>
```

> 内部样式表：将样式编写到head中的style标签里，通过CSS选择器来选中元素并为其设置各种样式
  
* 优点：可以同时为多个标签设置样式，并且修改时只需修改一处即可全部应用，方便对样式进行复用
* 问题：内部样式表只能对一个网页起作用，它里边的样式不能跨页面进行复用
    
```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
    
        <!-- 内部CSS代码，设置在style标签内 -->
        <style>
          p{
            color:green;
          }
        </style>
    
    </head>
    <body>
        <p>明天，你好</p>
        <p>今天天气真不错！</p>
        <p>落霞与孤鹜齐飞，秋水共长天一色。</p>
    </body>
</html>
```

> 外部样式表：将CSS样式写到一个外部的CSS文件中，然后通过link标签来引入外部的CSS文件  
  
* 优点：任何网页都可以对其进行引用，使样式可以在不同的页面之间进行复用
* 这是层叠样式表使用的最多实践
* 将样式编写到外部的CSS文件中，这样还可以充分利用浏览器的缓存机制，从而加快网页的加载速度，提高用户体验
    
```html
<!-- HTML文件 -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <link rel="stylesheet" href="./css/style.css"/>
        <!-- 引入css目录下的style.css文件 -->
    </head>
    <body>
        <p>明天，你好</p>
        <p>今天天气真不错！</p>
        <p>落霞与孤鹜齐飞，秋水共长天一色。</p>
    </body>
</html>
```

```css
/* style.css文件 */
p{
    color:tomato;
    font-size:50px;
}
```

## 2.CSS的基本语法

* CSS的基本语法：`选择器 声明块`
* 选择器：通过选择器可以选中页面中的指定元素，比如**选择器p**的作用就是选中页面中的所有p元素
* 声明块：通过声明块来指定要为元素设置的样式
    * 声名块由一个一个的声明组成
    * 声明是一个名值对结构，一个样式名对应一个样式值，名和值之间以英文冒号`:`连接
    * 声明块中的每个声明都以英文分号`;`结尾，最后一个声明可以不写分号，但是**最好也写上分号**，这样不容易出错

* CSS注释

```css
/*
    这是CSS中的注释
*/
```

# 二、选择器

## 1.常用选择器

* 元素选择器：根据标签名来选中指定的元素
  * 语法：`标签名{}`
  * 例子：
    * `p{ }`&emsp;选中页面中的所有p元素
    * `h1{ }`&emsp;选中页面中的所有h1元素
    * `div{ }`&emsp;选中页面中的所有div元素
* ID选择器：根据元素的id属性值**选中一个元素**
  * 语法：`#id属性值{}`
  * 例子：
    * `#box{ }`&emsp;选中页面中id属性为box的元素
    * `#red{ }`&emsp;选中页面中id属性为red的元素
  * 注意：页面元素的id不能重复，一个元素只能是一个id
* 类选择器：根据元素的class属性值**选中一组元素**
  * class属性是一个标签的属性，它和id类似，不同的是class可以重复使用，可以通过class属性来为元素分组
  * 语法：`.class属性值{ }`
  * 例子：
    * `.blue{ }`&emsp;选中页面中class属性为blue的所有元素
    * `.red{ }`&emsp;选中页面中class属性为red的所有元素
  * 一个元素可以设置多个class属性值，都写在双引号内，不同的属性值之间用空格隔开
* 通配选择器：选中页面中的所有元素
  * 语法：`*{ }`

#### （2）复合选择器

* 交集选择器：选中同时符合多个条件的元素
  * 语法：`选择器1选择器2选择器3选择器4{ }`
  * 例子：
    * `div.red{ }`
    * `div#box1{ }`
    * `.a.b.c{ }`
  * 交集选择器中如果有元素选择器，则**必须使用元素选择器开头**，且元素选择器好像最多也只能有一个
* 选择器分组（并集选择器）：同时选中多个选择器对应的元素
  * 语法：`选择器1,选择器2,选择器3,选择器4{ }`
  * 例子：
    * `h1,span,div{ }`
    * `#b1,.pss,h1,span,div.red{ }`
* 一般**不推荐在选择器中使用id选择器和其它选择器复合**，因为仅仅使用id选择器就可以唯一确定某个元素了，根本不需要和其它选择器复合

#### （3）父子兄弟选择器（关系选择器）

```html
<!doctype html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>关系选择器</title>
  </head>
  <body>

    <div>
      <p>
        我是div中的p元素
        <span>我是p元素中的span</span>
      </p>
      <span>我是div中的span元素</span>
      <span>我是div中的span元素</span>
      <span>我是div中的span元素</span>
      <span>我是div中的span元素</span>
    </div>

    <span>我是div元素外的span元素</span>

  </body>
</html>
```

> 元素之间的关系

* 父元素：直接包含子元素的元素叫做父元素

* 子元素：直接被父元素包含的元素是子元素

* 祖先元素：直接或间接包含后代元素的元素叫做祖先元素，一个元素的父元素也是它的祖先元素

* 后代元素：直接或间接被祖先元素包含的元素叫做后代元素，子元素也是后代元素

* 兄弟元素：拥有相同父元素的元素是兄弟元素
  
  > 选择器的写法

* 子元素选择器：选中指定父元素的指定子元素
  
  * 语法：`父元素 > 子元素`

* 后代元素选择器：指定元素内的指定后代元素
  
  * 语法：`祖先 后代`

* 兄弟选择器（选择下一个兄弟）
  
  * 语法：`前一个 + 后一个`
    
    ```html
    <style>
    p + span{
    color: green;
    }
    /*
    在同一个父元素下的多个子元素中
    选定p元素后面的第一个span元素（只会对p元素后边紧挨的第一个span元素生效，中间不能有其它任何元素，必须是紧挨着的，且只有第一个会生效）
    */
    </style>
    ```

* 兄弟选择器（选择下边所有的指定兄弟）
  
  * 语法：
    
    ```html
    <style>
    p ~ span{
    color: green;
    }
    /*
    在同一个父元素下的多个子元素中
    选定p元素后面所有的span元素（对p元素后面的所有span兄弟元素都会生效）
    */
    </style>
    ```
    
    > 混合使用

#### （4）属性选择器

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8"/>
    <title>属性选择器</title>
    <style>
      /* 选中设置了title属性的p元素 */
      p[title]{

      }

      /* 选中设置了title属性，且属性值为asd的p元素 */
      p[title=asd]{

      }

      /* 选中设置了title属性，且属性值以asd开头的p元素 */
      p[title^=asd]{

      }

      /* 选中设置了title属性，且属性值以asd结尾的p元素 */
      p[title$=asd]{

      }

      /* 选中设置了title属性，且属性值中含有asd（任意位置）的p元素 */
      p[title*=asd]{

      }
</style>
  </head>
  <body>
    <p title="asd">asdfghjkzxcvbnmqwertyui</p>
    <p title="asdfg">asdfghjkzxcvbnmqwertyui</p>
    <p title="asdfghjkl">asdfghjkzxcvbnmqwertyui</p>
    <p title="fdsgdgdfasd">asdfghjkzxcvbnmqwertyui</p>
    <p title="fsadfsdaasdfsagasf">asdfghjkzxcvbnmqwertyui</p>
    <p>asdfghjkzxcvbnmqwertyui</p>
    <p>asdfghjkzxcvbnmqwertyui</p>
    <p>asdfghjkzxcvbnmqwertyui</p>
  </body>
</html>
```

#### （5）伪类选择器

> 伪类：不存在的类、特殊的类

* 伪类用来描述一个元素的特殊状态
  
  * 一般情况下使用英文冒号`:`开头

* 根据所有子元素进行排序
  
  * `:first-child`&emsp;第一个子元素
  * `:last-child`&emsp;最后一个子元素
  * `:nth-child(num)`&emsp;第num个子元素
    * n&emsp;第1到正无穷个元素全部选中
    * 2n或even&emsp;所有偶数位的元素
    * 2n+1或odd&emsp;所有奇数位的元素

* 在子元素中的同类型元素中进行排序
  
  * `span:first-of-type`&emsp;子元素中的第一个span元素
  * `span:last-of-type`&emsp;子元素中的最后一个span元素
  * `span:nth-of-type(num)`&emsp;子元素中第num个span元素
    * 特殊值与上述同理

* `:not()`&emsp;否定伪类，将符合条件的元素从选择器中去除
  
  > 超链接伪类

* `a:link`&emsp;表示没有被访问过的链接

* `a:visited`&emsp;表示访问过的链接

* `a:hover`&emsp;表示上方有鼠标移入的链接

* `a:active`&emsp;表示被鼠标点击的链接

* 注意事项
  
  * 超链接伪类只能用于a标签，想也知道的
  * 由于隐私的原因，所以visited这个伪类只能修改链接的颜色，链接的其它属性都按照link伪类的设置显示出来
  * hover和active，在相关事件发生时，会覆盖掉之前设置的任何样式，显示他们各自设置的样式
  * 超链接的这个几个伪类，同时写时的顺序问题

#### （6）伪元素选择器

> 伪元素：表示页面中一些特殊的并不存在的元素（特殊的位置）

* 伪元素，使用&emsp;**::**&emsp;开头
  
  ```html
  <!DOCTYPE html>
  <html>
    <head>
        <meta charset="utf-8">
        <title>伪元素选择器</title>
        <style>
            p{
                font-size: 30px;
            }
  
      /* 选中p中的第一个字母 */
      p::first-letter{
        font-size:100px
      }
      /* 选中p中的第一行，这第一行的范围可能会随着浏览器的变化而变化 */
      p::first-line{
        background-color: yellow;
      }
      /* 选中p中被鼠标选中的部分 */
      p::selection{
        background-color: yellowgreen;
      }
  
      /* 选中 元素内容的开头 和 开始标签 之间（缝）的位置 */
      div::before{
        content: 'hello';
        font-size: 10px;
        color: red;
      }
      /* 选中 元素内容的末尾 和 结束标签 之间的（缝）位置 */
      div::after{
        content: 'hello';
        font-size: 100px;
        color: green;
      }
      /* 这两个选择器应用的很多 */
      /* content属性用于给选中的这两个位置设置内容，使得其设置的样式有意义 */
        </style>
    </head>
    <body>
        <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Deserunt, atque nostrum? Corrupti excepturi facilis nisi aliquam at, voluptatum optio maiores cupiditate repudiandae sint natus maxime architecto ea, ad culpa. Sit!
        </p>
    </body>
  </html>
  ```

### 3.一些基础知识

#### （1）继承

&emsp;&emsp;我们为一个元素设置了一个样式，同时这个样式也会自动应用到它的**后代元素**（只要是这个元素内的元素，都会被应用这个样式）上。  
&emsp;&emsp;继承的设计是为了方便我们的开发，利用继承我们可以将一些通用的样式统一设置到共同的祖先元素上，这样只需设置一次即可使得所有的元素都具有该样式。

```html
<!DOCTYPE html>
<html>
  <head>
    <meta chatset="UTF-8">
    <style>
      p{
        color:yellowgreen;
      }
      div{
        color:green;
      }
    </style>
  </head>
  <body>
    <div>
      这是div标签
      <span>这是div标签内的span标签</span>
    </div>
    <p>
      这是p标签
      <span>这是p标签内的span标签</span>
    </p>
  </body>
</html>
```

* 并不是所有的样式都会被继承，**背景相关、布局相关等**这些样式都不会被继承

#### （2）选择器的权重

> &emsp;&emsp;样式的冲突：当我们通过不同的选择器，选中相同的元素，并且为同样的样式设置不同的值时，就发生了冲突。发生冲突时，应用哪个样式由选择器的权重（优先级）决定。

* 选择器的权重（从做到右递减）：内联样式（1000） > id选择器（100） > 类和伪类选择器（10） > 元素选择器（1） > 通配选择器（0） > 继承的样式（没有优先级）
  * 优先级高的样式会覆盖掉优先级低的样式，并显示出来。
  * 交集选择器，比较优先级时，我们需要**将所有选择器的优先级进行相加运算**，最后优先级越高，则越优先显示；分组选择器是单独计算的。
  * 选择器优先级的累加不会超过其最大数量级，类选择器的优先级在累加之后再高也不会超过id选择器的优先级。
  * 选择器写得越具体，优先级越高
  * 如果优先级计算后相等，则**优先使用编写位置相对靠下的样式**
  * 我们可以在某一个样式值的后边添加一个`!important`（和样式值之间用一个空格隔开），则此时该样式会获取到最高的优先级，甚至超过内联选择器的优先级。但是这种方式一定要**慎用**！

#### （3）属性值单位

> 长度单位

* 像素：组成屏幕上图像的最小的发光点
  
  * 不同屏幕的大小是不同的，像素越小则则屏幕的显示效果越清晰
  * 所以，同样的200px在不同的设备下显示效果是不一样的

* 百分比：设置属性相对余其父元素属性的百分比
  
  * 设置百分比，可以使得子元素跟随其父元素的改变而自动改变

* em：相对于该元素自身的字体大小（默认为16px）的倍数
  
  * 1em = 1 * font-size
  * em会根据字体大小的改变而改变

* rem：相对于html根元素的字体大小的倍数
  
  * 与该元素自身的字体大小无关
    
    > 颜色单位：在CSS中，我们可以直接使用颜色名来设置各种颜色，但是在CSS中直接使用颜色名是极其不方便的

* RGB值：通过三种颜色不同的浓度来调配出不同的颜色
  
  * R-red，G-green，B-blue
  * 每一种颜色的范围都在0~255（0%~100%）之间
  * 语法 `RGB(红色,绿色,蓝色)`

* RGBA：就是在RGB的基础上增加了一个a，表示 不透明度
  
  * 1-完全不透明，0-完全透明，.5-半透明
  * 语法 `RGBA(红色,绿色,蓝色,不透明度)`

* 十六进制的RGB值
  
  * 语法：#红素绿色蓝色
  * 颜色浓度：00~ff
  * 如果颜色恰好两位两位重复，那么可以进行简写
    * #aabbcc——#abc
    * #ffff00——#ff0

* HSL/HSLA值：
  
  * H-色相（0~360），S-饱和度（0%~100%），L-亮度（0%~100%）
  * 语法：`HSL(hue,saturation,lightness)`

### 4.布局

#### （1）文档流（normal flow）

> 网页是一个多层的结构，一层摞着一层

* 通过CSS可以分别为每一层来设置样式，作为用户来讲只能看到最顶上的一层

* 这些层中最底下的一层，我们称为 “文档流” ，文档流是网页的基础，我们所创建的元素**默认都是在文档流中进行排列的**

* 对于我们来说，元素主要有两个状态
  
  * 在文档流中
  * 不在文档流中（脱离文档流）

* 文档流中的元素分类
  
  * 块元素
    
    * 在页面中独占一行（无论宽度如何，都会独占一行）
    * 默认宽度是父元素的全部（会把它的父元素撑满）
    * 默认高度是被内容（子元素）撑开
  
  * 行内元素
    
    * 不会独占一行，只占自身的大小
    * 在页面中自左向右水平排列，如果一行之中不能容纳下所有的行内元素，则行内元素会自动换到下一行继续自左向右排列（和我们的书写习惯一致）
    * 行内元素的默认宽度和高度都是被内容撑开

#### （2）盒子模型（盒模型、框模型）

![CSS盒模型示意图](./pictures/CSS盒模型示意图.png)

> CSS将页面中的所有元素都设置为了（看作是）一个矩形盒子

* 将元素设置为矩形的盒子后，对页面的布局操作就变成了**将不同的盒子摆放到不同的位置**

* 每一个盒子都由四个部分组成：内容区、内边距、边框、外边距
  
  > 内容区（content，元素中所有的子元素和文本内容都在内容区中排列）

* 内容区的大小由width和height两个元素来设置
  
  * width&emsp;设置内容区的宽度
  * height&emsp;设置内容区的高度

> 边框（border，边框的大小会也影响到整个盒子的大小）

* 设置边框时至少需要设置三个样式，**缺一不可**
  
  * `border-width`&emsp;边框的宽度，其实这个可以不写，因为它会有一个默认值，一般都是3个像素
    * 写4个值（之间用空格隔开）：分别对应设置&emsp;**上、右、下、左（从上边开始顺时针旋转）**&emsp;各自的边框宽度
    * 写3个值（之间用空格隔开）：分别对应设置&emsp;**上、左右、下**&emsp;的边框宽度，左右边框设置成相同的宽度
    * 写2个值（之间用空格隔开）：分别对应设置&emsp;**上下、左右**&emsp;的边框宽度，左右边框设置成相同的宽度，上下边框设置成相同的宽度
    * 写1个值：将四个方向的边框都设置成相同的宽度
  * `border-color`&emsp;指定边框的颜色（`border-color`也可以省略不写，如果省略了则自动使用同一个声明块下的`color`的颜色值），同样可以用来分别指定四个边的颜色，规则同上
  * border-style&emsp;指定边框的样式（这个绝对不能省略，因为其默认值是none，表示没有边框），同样可以用来分别指定四个边的样式，规则亦同上
    * solid&emsp;实线
    * dotted&emsp;点状虚线
    * dashed&emsp;虚线
    * double&emsp;双线

* 对于边框的宽度，除了borde r-width还有一组border-xxx-width，xxx可以是top、right、bottm和left。当然，这对于border-color和border-style同样适用

* border简写属性：通过该属性可以同时设置边框的所有相关样式，并且没有顺序要求
  
  * `border: 10px orange solid`（三个值的顺序是任意的）
  
  * 除了border以外还有四个border-xxx（border-top、border-left、border-bottom和border-right），分别对用设置四条边的样式
  
  * 也可以为border-xxx只设置一个值——none，表示去掉指定的边框
    
    ```html
    <html>
    <head>
    <style>
    .box{
      /* 设置content区的样式 */
      width:200px;
      height:200px;
    
      /* 设置border的样式 */
      border-width:10px;
      border-color:red;
      border-style:solid;
    
      /* 边框以内的部分，包括内边距和内容区，背景颜色 */
      background-color:#bfa;
    }
    </style>
    </head>
    <body>
    <div class="box">asdfghjkl</div>
    </body>
    ```

</html>
```
> 内边距（padding，内容区和边框之间的距离）
* 一共有4个方向的内边距
  * padding-top
  * padding-right
  * padding-bottom
  * padding-left
* 内边距的设置会影响到盒子的大小
* 背景颜色会延申到内边距上
* 内边距的简写属性，可以同时指定四个方向的内边距，规则和border-width一样

```html

```

>  外边距（margin，盒子之间的距离）

* 到这了

> 注意事项

* 一个盒子的可见框（边框和边框以内的内容）的大小由内容区、内边距和边框共同决定的。所以在计算盒子的大小时，需要将这三个区域的大小加到一起计算
* 

#### （3）浮动

### 5.定位

### 6.字体

### 7.表格与表单



