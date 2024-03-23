# 一、基础语法

```java
public class Hello{
    public static void main(String[] args){  //main方法，程序的主入口
        System.out.println("Hello, World!");  //输出语句
    }
}
```

> 代码注释 

```java
//单行注释

/*
    多行
    注释
*/
```

* 注释的内容不参与编译和运行，仅存在于源代码文件中
* 多行注释不允许嵌套

> 标识符命名规则（强制）：

* 只能由 26 个英文字母大小写、0-9、\_ 或 $ 组成；
* 不能以数字开头；
* 不能是关键字或保留字，但是可以包含关键字或保留字；
* Java 严格区分大小写，不限制标识符的长度，但是标识符内不能包含空格。

> 标识符命名规范（推荐但不强制）：

* 包名：多单词组成时所字母都小写；
* 类名、接口名：多单词组成时每个单词的首字符大写；
* 变量（属性）名、方法名：多单词组成时，除第一个单词之外每一个单词的首字母都大写； 
* 常量名：每一个字母都大写，多单词时每个单词之间用 `_` 连接。
## 1.数据类型
### 1）字面量和变量

> 字面量

![[Java字面量.png]]

> 变量

* Java 中的变量必须在声明之后使用，因为只有在声明后这个变量才会在内存中被加载；
* 局部变量声明之后不会被自动初始化，因此局部变量在使用之前必须先进行显式初始化（赋初值）；
* 变量都是定义在其作用域内的，只在这个作用域内有效，其作用域就是声明这个变量时所在的花括号内的范围；
* **同一个作用域内不可以声明两个同名的变量**（哪怕他们的类型不同），同一个变量不可以在同一个作用域内多次定义。

> 局部变量与成员变量

* 局部变量：定义在方法的形参列表或方法体内的变量。
* 成员变量（属性）：定义在类的 `{ }` 内部的变量。
* 二者相同点
	* 定义变量的格式相同：`数据类型 变量名 = 变量值;`
	* 都要求先声明，后使用；
	* 两种变量都有其对应的作用域。
* 二者不同点
	* 在类中声明的位置不同——成员变量直接定义在类的 `{ }` 内；局部变量声明在方法内、方法形参、代码块内、构造器形参和构造器内；
	* 关于权限修饰符——成员变量可以在声明时通过使用权限修饰符，指明其权限；局部变量不可以使用权限修饰符；
	* 默认初始化值的情况——成员变量，根据其数据类型都有对应的默认初始化值；局部变量没有默认初始化值，我们在调用局部变量之前一定要显式赋值（形参在调用时赋值即可）；
	* 在内存中加载的位置——非 static 的成员变量加载到堆空间中，static 的成员变量加载到方法区；局部变量都加载到栈空间。
### 2）基本数据类型

![[Java基本数据类型.png]]

* 整数字面值默认为 `int` 类型，可加后缀 L 将其指定为 `long` 类型；
* 小数字面值默认为 `double` 类型，可加后缀 F 将其指定为 `float` 类型；
* 整数和小数类型的取值范围大小关系：`double` >` float` > `long` > `int` > `short` > `byte`。
### 3）引用数据类型
## 2.运算符
### 1）算术运算符

![[Java算术运算符.png]]

* 计算时有小数参与，则算术运算的结果一定是小数，且**结果有可能是不精确的**；
* 整数之间的除法，结果是整数，采用**截断方式**，不会四舍五入；
* 小数参与除法运算，结果也可能是不精确的；
* 取模运算实际上也是除法运算，只是得到的结果是余数。
### 2）数据类型的转换

![[Java类型转换.png]]

* 隐式转换又叫**自动类型提升**，由程序自动完成：
	* 取值范围小的和取值范围大的进行运算，小的会先提升为大的，再进行运算；
	* byte、short、char 三种类型的数据在运算的时候，都会直接先提升为 int，然后再进行运算。

```java
byte a = 10;
byte b = 20;
int c = a + b; //自动类型提升为 int
```

* 强制转换是**截断**操作，需要加入强制转换：
	* 格式：`目标数据类型 变量名 = (目标数据类型)被强转的数据`；
	* 若被强转的数据过大，则在强转的结果就会发生错误。
### 3）字符串和字符的加操作

* 当 + 操作中出现字符串时（无论在前还是在后），这个 + 是字符串连接符，而不是算术运算符了。会将 + 前后的数据进行拼接，并会产生一个新的字符串；
* 连续进行 + 操作时，从左到右逐个执行；

![[Java拼接运算符.png]]

* 字符相加：

![[Java字符的加操作.png]]
### 4）自增自减运算符

 ![[Java自增自减运算符.png]]

![[Java自增自减运算符两种用法.png]]
### 5）赋值运算符

![[Java赋值运算符.png]]

* +=、-=、\*=、/=、%= 的底层都隐藏了一个强制类型转换

```java
short s = 1;
s += 1;
//在底层等同于 s = (short)(s+1)
```
### 6）关系运算符

![[Java关系运算符.png]]

* 关系运算符的结果都是 boolean 型，要么是 true，要么是 false
### 7）逻辑运算符

![[Java逻辑运算符.png]]

* 取反的感叹号要么不写，要么只写一次
### 8）短路逻辑运算符

![[Java短路逻辑运算符.png]]

* 所谓短路效果，就是指左边的表达式已经能够确定结果，则右边的表达式就没有必要再参与运行了，这种情况下程序根本不会执行右边的表达式。

```java
int a = 10;
int b = 10;
boolean result = ++a < 5 && ++b < 5;
System.out.println(result);
System.out.println(a);  //左侧的表达式执行了，a 的值是 11
System.out.println(b);  //右侧的表达式未执行，b 的值还是 10
```
### 9）三元运算符

* 格式：`关系表达式?表达式1:表达式2`
* 先执行关系表达式
	* 关系表达式为真，则执行表达式1
	* 关系表达式为假，则执行表达式2
* 三元运算符所表示的是一个表达式，**必须要被使用**，不是一个独立的程序语句。
### 10）运算符的优先级

* 别管那些乱七八糟的，加小括号就行了。
## 3.流程控制
### 1）顺序结构

&emsp;&emsp;按照各条代码之间编写的先后顺序，从上往下，依次执行。

```java
public class OrderDemo {
	public static void main(String[] args){
		System.out.println("努力做主人喜欢的事");
		System.out.println("大小姐驾到！统统闪开！");
		System.out.println("凛冬已至，故乡的梅花开了吗");
		System.out.println("心怀不惧，方能翱翔于天机");
	}
}
```
### 2）分支结构

> if 分支

![[Java分支结构.png]]

```java
// 第一种格式
if(关系表达式){
	语句体;
}

//第二种格式
if(关系表达式) {
	语句体1;
} else {
	语句体2;
}

//第三种格式
if(关系表达式1) {
	语句体1;
} else if(关系表达式2) {
	语句体2;
} 
  ...
  else {
	语句体n+1;
}

```

* if 语句中如果语句体只有一条语句，则大括号可以省略，但是不建议省略
* 如果是对一个布尔类型的变量进行判断，则不使用 `==`，直接将变量放到小括号里

> switch 分支（选择）

```java
// switch 语句，表示选择
switch(表达式){
	case 值1:
		语句体1;
		break;
	case 值2:
		语句体2;
		break;
	...
	default:  //当以上所有情况都不匹配的时候，就执行该处的语句体
		语句体n+1;
		break;
}
```

* 表达式允许的数据类型：byte、short、int、char、枚举（JDK5 以后可用）、String（JDK7 以后可用），不能用 double、float 和 long
* case 后面的值只能是字面量，不能是变量或表达式；各个 case 中的值不可以重复
* default 的位置和省略
* case 穿透
* JDK12 引入的 switch 新特性
* switch 和 if 第三种格式各自的使用场景
### 3）循环结构

```java
//for 循环
for(初始化语句;条件判断语句;条件控制语句){
	循环语句体;
}

//while 循环
while(){
	
}

//do...while 循环
do {
	
} while();
```

* 累加的思想

```java
for(int i = 1;i <= 100;i++){
	int sum = 0;
	sum += i;
}
System.out.print(sum);//报错，找不到变量 sum

for(int i = 1;i <= 100;i++){
	int sum = 0;
	sum += i;
	System.out.println(sum);//最终的输出结果为100，因为每次循环重新定义 sum，每次循环的初始值为 0
}

int sum = 0;
for(int i = 1;i <= 100;i++){
	sum += i;
}
System.out.println(sum);//输出正确结果 5050
```
## 4.数组
## 5.集合

> 集合和数组的区别

* 长度：数组的长度固定；集合的长度可变（自动伸缩，可长可短）
* 存储类型：数组既可以存储基本数据类型，又可以存储引用数据类型；集合**只能存储引用数据类型或者基本数据类型对应的包装类**

> 各基本数据类型**对应的包装类**：

| 基本数据类型  | 对应的包装类    |
| ------- | --------- |
| byte    | Byte      |
| short   | Short     |
| char    | Character |
| int     | Integer   |
| long    | Long      |
| float   | Float     |
| double  | Double    |
| boolean | Boolean   |
### 1）ArrayList

> 基本使用

```java
ArrayList<String> list = new ArrayList<>();

//向集合中加入元素，这一定会成功，一定返回 true
list.add("aaa");
list.add("bbb");
list.add("ccc");
list.add("ddd");

//从集合中删除元素，可能会失
list.remove("aaa");// true
list.remove("eee");// false

//重载后的删除
String str = list.remove(0);// 按照索引删除，执行成功则会返回所删除的元素

//修改，把指定的索引位置的元素改成指定的值，并返回被覆盖的那个值
String str = list.set(0,"eee");

//查询，返回指定索引位置的值
String str = list.get(0);

//获取集合的长度，即集合中元素的个数
int len = list.size();
```
### 2）

# 二、面向对象

## 1.

# 三、Java 高级

## 1.常用 API

### 1）

## 2.异常处理

> Java 中的异常

![[Java中的异常.png]]

```java
class ExceptionDemo{
	public static void main(String[] args){
		
	}
	
	public void parseExceptionDemo(){
		String time = "2024年3月15日";
		SimpleDateFormat sdf = new SinpleDateFormat("yyyy年mm月dd日");
		Date date = sdf.parse(time);
		System.out.println(date);	
	}//引发编译时异常
	
	public void RuntimeExceptionDemo(){
		int[] arr = {1,2,3,4,5};
		System.out.println(arr[10]);
	}//引发运行时异常
}
```

> 异常的作用

* 作用一：用来查询 bug 的关键参考信息
* 作用二：可以作为方法内部的一种特殊返回值，以便通知调用者底层的执行情况

> JVM 的默认异常处理方式

&emsp;&emsp;把异常的名称，异常原因以及异常出现的位置等信息输出到控制台；程序停止执行，异常下面的代码就不会再执行了。

> 自己处理异常（捕获异常）

```java
try{
	可能出现异常的代码;
}catch(异常类名 变量名){
	异常的处理代码;
}

int[] arr = {1,2,3,4,5};
try{
	System.out.println(arr[10]);//会出现数组访问越界 的异常
	//此处出现了异常，程序会在这里创建一个 ArrayIndexOutOfBoundsException 的对象
	//	new ArrayIndexOutOfBoundsException();
	//	拿着这个对象和 catch 括号中进行对比，看看括号中的变量是否可以接收这个对象
	//    如果能被接收，就表示该异常被捕获，执行 catch 里面对应的代码
}catch(ArrayIndexOutOfBoundsException e){
	System.out.println("索引越界了");
}
System.out.println("看看我执行了吗");//无论上述代码是都发生异常，后续语句都会执行
```

* 好处：当代码出现异常时，**可以让程序继续往下执行**，不会停止
* 如果 try 中没有遇到问题，怎么执行？
	* 会把 try 中的所有代码全部执行完毕，不会执行 catch 中的代码
* 如果 try 中可能遇到多个问题，怎么执行？
	* 我们需要写多个 catch，与之分别对应（不同的异常会有不同的处理方案）
	* 细节：捕获的多个异常之间存在父子关系，则父类一定要写在下面，子类写在上面
* 如果 try 中遇到的问题没有被捕获到，怎么执行？
	* 使用 JVM **默认异常处理**方式
* 如果 try 中遇到了问题，那么 try 下面的其他代码还会执行吗？
	* 不会
* 处理异常的方法

```java
int[] arr = {1,2,3,4,5}

try{
	System.out.println(arr[10]);
}catch(ArrayIndexOutOfBoundsException e){
	//public String getMessage()  返回此 throwable 的详细消息字符串
	String message = e.getMessage();
	System.out.println(message);
	
	//public String toString()  返回此 throwable 的尖简短描述
	String str = e.toString();
	System.out.println(str);

	//public void printStackTrace()   在底层利用 System.err.println() 把异常的错误信息输出到控制台（跟 JVM 默认异常处理方式的不同：仅仅打印信息，不终止程序的运行）
	e.printStackTrace();
}
```

> 把异常交给调用者（抛出异常）

* throws：写在方法定义处，表示声明一个异常；告诉调用者，使用本方法可能会有哪些异常
	* 运行时异常可以不写；编译时异常必须写明

```java
public static String recordName() throws Exception{
    Scanner scanner = new Scanner(System.in);  
    String name = scanner.nextLine();  
  
    if(name.length() < 3 || name.length() > 10){  
        throw new Exception();  
    }  
  
    return name;  
}
```

* throw：写在方法内，结束方法，手动抛出异常对象，交给调用者，方法中后面的代码不会再继续执行了

```java
public static void main(){
	int[] arr = null;
	int max = 0;
	
	try{
		max = getMax(arr);
	}catch(NullPointerException e){
		System.out.println("空指针异常");
	}catch(ArrayIndexOutOfBoundsException e){
		System.out.println("索引越界异常");
	}
	
	System.out.println(max);
}

//public static int getMax(int[] arr) throws NullPointerException, ArrayIndexOutOfBoundsException {
//运行时异常，可不写
public static int getMax(int[] arr){
	if(arr == null){
		//手动创建一个异常对象，并把这个异常对象交给本方法的调用者处理
		//此时方法就会结束，下面的代码就不会继续执行
		throw new NullPointerException();
	}

	if(arr.length == 0){
		throw new ArrayIndexOutOfBoundsException();
	}
	
	int max = arr[0];
	for(int i = 1;i < arr.length;i++){
		if(arr[i] > max){
			max = arr[i];
		}
	}
	return max;
}
```

> 自定义异常

```java
class AgeOutOfBoundsException extends RuntimeException{
	public AgeOutOfBoundsException(){
	}
	public AgeOutOfBoundsException(String message){
		super(message);
	}
}
```

* 作用：让控制台的报错信息更加的见名知义
## 3.File

&emsp;&emsp;File 对象就**表示一个路径**，可以是文件的路径、也可以是文件夹的路径。这个路径可以是存在的，也允许是不存在的。

&emsp;&emsp;File 类常见的构造方法：

| 方法名称                                     | 说明                         |
| ---------------------------------------- | -------------------------- |
| public File(String pathname)             | 根据文件路径创建文件对象               |
| public File(String parent, String child) | 根据父路径名字符串和子路径名字符串创建文件对象    |
| public File(File parent, String child)   | 根据父路径名对应文件对象和子路径名字符串创建文件对象 |




```java


```

## 4.IO 流



## 5.反射



[[JavaWeb]]
[[Maven]]
[[Mybatis]]
[[Spring Framework]]