# 一、JavaScript语言概述

> JavaScript诞生于1995年，主要是用于处理网页中的前端验证  
> 所谓前端验证，就是指检查用户输入的内容是否符合一定的规则，比如用户名的长度、密码的长度、邮箱的格式等

* 一个完整的JavaScript实现应该由以下三个部分组成
  * ECMAScript&emsp;浏览器对ECMAScript标准的实现
  * DOM&emsp;文档对象模型，用于操作网页
  * BOM&emsp;浏览器对象模型，用于操作浏览器
    ![JavaScript的三个组成部分](./pictures/JavaScript的三个组成部分.png)
* JavaScript语言的特点
  * 属于解释型语言
  * 有着类似于C和 Java的语法结构 
  * 动态语言
  * 基于原型的面向对象

## 1.HelloWorld

```html
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
        <script type="text/javascript">
            alert("HelloWorld");//提示窗口
            document.write("HelloWorld");//向body中输出一个内容
            console.log("你猜我在哪出来呢？");//向控制台输出一个内容
        </script>
    </head>
    <body>
    </body>
</html>
```

#### （2）编写的位置

> 写在标签的onclick属性中

* 编写在HTML标签的onclick属性中，点击时执行代码
  
  ```html
  <button onclick="alert('点我干嘛？');">点我一下</button>
  ```

* 将js代码写在超链接的href属性中，当点击超链接时，会执行js代码
  
  ```html
  <a href="javascript:alert('谁让你点我的？');"></a>
  <!-- 可以通过将href属性值设置为"javascript:;"，表示点击之后什么也不做 -->
  ```

* 虽然可以写在标签的属性中，但是他们属于结构与行为的耦合，不方便维护，不推荐使用
  
  > 写在head标签中的script标签中
  
  ```html
  <html>
  <head>
    <script type="text/javascript">
      alert('欢迎打开我们的网页！');
    </script>
  </head>
  </html>
  ```
  
  > 写在外部js文件中，然后通过head标签中的script标签引入
  
  ```html
  <html>
  <head>
    <script type="text/script" src="./js/script.js"></script>
  </head>
  </html>
  ```
  
  ```javascript
  alert("我是外部js文件中的alert语句");
  ```

* 可以在不同文件中被同时引用，也可以利用浏览器的缓存机制，推荐使用这种方式

* script标签一旦用于引入外部文件了，就不能在里面编写代码了，即便写了浏览器也会忽略。
  
  * 如果需要，则可以创建一个新的script标签，来编写内部javascript代码
  * 在前边的script标签代码会比在它后边的script标签代码先执行

#### （3）基本语法

* javascript严格区分大小写

* javascript每条语句都以分号&emsp;`;`&emsp;结尾
  
  * 如果不写分号，浏览器会自动添加，但是这会消耗一些系统资源
  * 而且有些时候浏览器会加错分号，所以在开发中**分号必须写**

* javascript会自动忽略多个空格和换行，所以我们可以利用空格和换行对代码进行格式化

* javascript中的注释
  
  ```javascript
  /*
  多行注释
  */
  // 单行注释
  ```

### 2.JS的数据和数据类型

#### （1）字面量和变量

* 字面量，一些不可改变的值，其实就是常量

* 变量，可以用来保存字面量，而且变量的值是可以任意改变的，更加方便我们的使用，所以在开发中都是通过变量去保存一个字面量，而很少直接使用字面量

* 声明变量

```javascript
var a;//声明并为变量赋值之后才能使用
console.log(a);

var b = 100;
console.log(b);
```

* 数据类型指的是字面量的类型，共有六种数据类型
  
  * string&emsp;字符串
  * number&emsp;数值
  * boolean&emsp;布尔值
  * null&emsp;空值
  * undefined&emsp;未定义
  * object&emsp;对象

* 其中String、Number、Boolean、Null、Undefined属于基本数据类型，而Object属于引用数据类型

#### （2）标识符

> 在JS中所有可以由我们自主命名的都可以称为是标识符

* 变量名、函数名、属性名等都属于标识符
* 标识符的命名规则
  * 可以且仅可以含有字母、数字、`_`和`$`
  * 不能以数字开头
  * 标识符不能是ES中的关键字或保留字
* 命名规范：一般都采用小驼峰命名法
* JS底层保存标识符时，实际上采用的是Unicode编码，所以理论上讲，utf-8中的内容都可以作为标识符。也就是说可以用中文作为标识符，但是不建议把中文作为标识符来使用，因为这样会被人笑死的哈哈哈哈~~

#### （3）字符串

* Js中的字符串字面量需要使用一对引号引起来
* 双引号引`" "`和单引号`‘ ’`都可以，但是不要混合使用
* 引号不能嵌套：双引号里面不能放双引号、单引号内不能放单引号
  * 但是单引号内能放双引号，双引号内也能放单引号

```javascript
var str = "hello"
console.log(str);

str = "fdasfdas"fdasfdasfdas"fdsafdas";(n)
str = "fadsfdasf'fdsafdas'fdsafdas";(y)
str = 'fdsafdasf"fdsafdasfdas"dsafdas';(y)
str = "fdasfdsafda \"sfdsafdas\" fds";(y)//使用转义字符
```

* 转义字符&emsp;`\`
  * `\"`&emsp;一个双引号
  * `\'`&emsp;一个单引号
  * `\n`&emsp;换行符
  * `\t`&emsp;制表符
  * `\\`&emsp;一个反斜杠

#### （4）Number

* JS中的所有数值都是Number类型，包括整数和浮点数
* JS中number类型可以表示的范围
  * 如果要表示的数字超过了最大值，则会返回一个`Infinity`，表示正无穷
  * 如果要表示的数字小于了最小值，则会返回一个`-Infinity`，表示负无穷
  * 这里的超出范围并不是javascript的number类型变量的表示范围，而是浏览器在网页中所能显示的范围

```javascript
console.log(Number.MAX_VALUE);
//最大值：1.7976931348623157e+308

console.log(-Number.MAX_VALUE);
//最小值：-1.7976931348623157e+308
```

* `Infinity`是一个字面量，表示的意思就是number类型数据中的”无穷“，即一个超出了表示范围的值
  * `typeof Infinity = number`

```javascript
console.log(Infinity);//正无穷
console.log(-Infinity);//负无穷
```

* `NaN`是一个特殊的数字，表示Not A Number，也是一个字面量
  * `typeof NaN = number`

```javascript
var a = "hello" * "hello";//变量a的值就是 NaN
```

* 大于零的最小值

```javascript
console.log(Number.MIN_VALUE);
// 5e-34
```

* JS中的整数运算基本可以保证精确
* 使用JS进行浮点数运算，可能得到一个不精确的结果，所以千万不要使用JS进行对精确度要求较高的运算

#### （5）布尔值（Boolean）

* 布尔值只有两个
  * true
  * false

```javascript
var bool = true;//这不能加引号
console.log(typeof bool);//返回"boolean"
```

#### （6）null和Undefined

* Null（空值）类型的值只有一个，就是`null`
  * 专门用来表示一个为空的对象

```javascript
var a = null;
console.log(typeof a);//返回值为"object"
```

* Undefined（未定义）类型的值也只有一个，就是`undefined`
  * 当我们声明一个变量，但是并不给变量赋值时，他的值就是`undefined`

```javascript
var b;
console.log(typeof b);//返回值为"undefined"
```

#### （7）强制类型转换

### 3.JS运算符

typeof运算符：检查一个变量的类型

语法：`typeof 变量名`

### 4.JS流程控制

### 5.JS面向对象

### 6.JS数组

### 7.正则表达式

### 8.DOM

### 9.事件

### 10.定时器

### 11.JSON

自动生成图表网站
https://echarts.apache.org/zh/index.html
