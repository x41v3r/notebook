# 一、Java 基础语法

## 1.Hello， World!

```java
public class Hello{
    public static void main(String[] args){  //main方法，程序的主入口
        System.out.println("Hello, World!");  //输出语句
    }
}
```

### 代码注释

```java
//单行注释

/*
    多行
    注释
*/
```

* 注释的内容不参与编译和运行，仅存在于源代码文件中
* 多行注释不允许嵌套

### 标识符命名规则（强制）

* 只能由 26 个英文字母大小写、0-9、\_ 或 $ 组成；
* 不能以数字开头；
* 不能是关键字或保留字，但是可以包含关键字或保留字；
* Java 严格区分大小写，不限制标识符的长度，但是标识符内不能包含空格。

### 标识符命名规范（推荐但不强制）

* 包名：多单词组成时所字母都小写；
* 类名、接口名：多单词组成时每个单词的首字符大写；
* 变量（属性）名、方法名：多单词组成时，除第一个单词之外每一个单词的首字母都大写； 
* 常量名：每一个字母都大写，多单词时每个单词之间用 `_` 连接。

### 字面量和变量

**字面量：**

![Java字面量](./images/Java字面量.png)

**变量：**

* Java 中的变量必须在声明之后使用，因为只有在声明后这个变量才会在内存中被加载；
* 局部变量声明之后不会被自动初始化，因此局部变量在使用之前必须先进行显式初始化（赋初值）；
* 变量都是定义在其作用域内的，只在这个作用域内有效，其作用域就是声明这个变量时所在的花括号内的范围；
* **同一个作用域内不可以声明两个同名的变量**（哪怕他们的类型不同），同一个变量不可以在同一个作用域内多次定义。

**局部变量与成员变量：**

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

## 2.数据类型

### 1）基本数据类型

![Java基本数据类型](./images/Java基本数据类型.png)

* 整数字面值默认为 `int` 类型，可加后缀 L 将其指定为 `long` 类型；
* 小数字面值默认为 `double` 类型，可加后缀 F 将其指定为 `float` 类型；
* 整数和小数类型的取值范围大小关系：`double` >` float` > `long` > `int` > `short` > `byte`。

### 2）引用数据类型

## 3.运算符

### 1）算术运算符

![Java算术运算符](./images/Java算术运算符.png)

**说明：**

* 计算时有小数参与，则算术运算的结果一定是小数，且**结果有可能是不精确的**；
* 整数之间的除法，结果是整数，采用**截断方式**，不会四舍五入；
* 小数参与除法运算，结果也可能是不精确的；
* 取模运算实际上也是除法运算，只是得到的结果是余数。

### 2）数据类型的转换

![Java类型转换](./images/Java类型转换.png)

隐式转换又叫**自动类型提升**，由程序自动完成：

* 取值范围小的和取值范围大的进行运算，小的会先提升为大的，再进行运算；
* byte、short、char 三种类型的数据在运算的时候，都会直接先提升为 int， 然后再进行运算。

```java
byte a = 10;
byte b = 20;
int c = a + b; //自动类型提升为 int
```

强制转换是**截断**操作，需要加入强制转换：

* 格式：`目标数据类型 变量名 = (目标数据类型)被强转的数据`；
* 若被强转的数据过大，则在强转的结果就会发生错误。

### 3）字符串和字符的加操作

* 当 + 操作中出现字符串时（无论在前还是在后），这个 + 是字符串连接符，而不是算术运算符了。会将 + 前后的数据进行拼接，并会产生一个新的字符串；
* 连续进行 + 操作时，从左到右逐个执行；

![Java拼接运算符](./images/Java拼接运算符.png)

* 字符相加：

![Java字符的加操作](./images/Java字符的加操作.png)

# 二、Java 面向对象

# 三、Java 高级

## 1.常用 API

### 1）字符串操作

#### 模式匹配

#### 编码和解码

| String 类中的方法                          | 说明 |
|:------------------------------------------:|:---------------------:|
| `public byte[] getBytes()`                   | 使用默认方式进行编码  |
| `public byte[] getBytes(String charsetName)` | 使用指定方式进行编码  |
| `String(byte[] bytes)`                       | 使用默认方式进行解码 |
| `String(byte[] bytes, String charsetName)`   | 使用指定方式进行解码 |

```java
String str = "ai你呦～";

//编码
byte[] bytes = str.getBytes("GBK");

//解码（String 的构造方法）
String res = new String(bytes,"GBK");
```

### 2）时间日期

## 2.异常处理

### 1）关于异常

![Java中的异常](./images/Java中的异常.png)

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

* 作用一：用来查询 bug 的关键参考信息
* 作用二：可以作为方法内部的一种特殊返回值，以便通知调用者底层的执行情况

### 2）异常的处理方式

#### JVM 的默认异常处理方式

&emsp;&emsp;把异常的名称，异常原因以及异常出现的位置等信息输出到控制台；程序停止执行，异常下面的代码就不会再执行了。

#### 自己处理（捕获异常）

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

好处：当代码出现异常时，**可以让程序继续往下执行**，不会停止。

> 如果 try 中没有遇到问题，怎么执行？
>
> > 会把 try 中的所有代码全部执行完毕，不会执行 catch 中的代码

> 如果 try 中可能遇到多个问题，怎么执行？
>
> > 我们需要写多个 catch，与之分别对应（不同的异常会有不同的处理方案）
> >
> > 细节：捕获的多个异常之间存在父子关系，则父类一定要写在下面，子类写在上面

> 如果 try 中遇到的问题没有被捕获到，怎么执行？
>
> > 使用 JVM **默认异常处理**方式

> 如果 try 中遇到了问题，那么 try 下面的其他代码还会执行吗？
>
> > 不会

**处理异常的方法：**

```java
int[] arr = {1,2,3,4,5};

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

#### 把异常交给调用者（抛出异常）

`throws` 关键字：写在方法定义处，表示声明一个异常；告诉调用者，使用本方法可能会有哪些异常

```java
public static String recordName() throws Exception{ //运行时异常可以不写；编译时异常必须写明
  Scanner scanner = new Scanner(System.in);
  String name = scanner.nextLine();

  if(name.length() < 3 || name.length() > 10){
      throw new Exception();
  }

  return name;
}
```

`throw` 关键字：写在方法内，结束方法，手动抛出异常对象，交给调用者，方法中后面的代码不会再继续执行了

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

### 3）自定义异常

&emsp;&emsp;自定义一个已有异常类的子类。

```java
class AgeOutOfBoundsException extends RuntimeException{
	public AgeOutOfBoundsException(){
	}
	public AgeOutOfBoundsException(String message){
		super(message);
	}
}
```

## 3.文件类 File

&emsp;&emsp;File 对象就**表示一个路径**，可以是文件的路径、也可以是文件夹的路径。这个路径可以是存在的，也允许是不存在的。

### 1）文件对象的三种构建方法

1. 根据字符串表示的路径，获取 File 对象

```java
String str = "C:\\Users\\x41v3r\\Desktop\\a.txt";
File file1 = new File(str);
System.out.println(file1);//C:\Users\x41v3r\Desktop\a.txt
```

2. 根据子路径的名称和父路径的名称创建文件对象

&emsp;父路径：C:\Users\x41v3r\Desktop

&emsp;子路径：a.txt

```java
String parent = "C:\\Users\\x41v3r\\Desktop";
String child = "a.txt";
File file2 = new File(parent,child);
System.out.println(file2);//C:\Users\x41v3r\Desktop\a.txt
```

3. 把一个 File 表示的路径和一个 String 表示的路径进行拼接

```java
File parent1 = new File("C:\\Users\\x41v3r\\Desktop");
String child1 = "a.txt";
File file3 = new File(parent1,child1);
System.out.println(file3);//C:\Users\x41v3r\Desktop\a.txt
```

### 2）判断和获取信息

```java
public boolean isDirectory()//判断此路径表示的 File 是否为文件夹
public boolean isFile()//判断此路径名表示的 File 是否为文件
public boolean exists()//判断此路径表示的 File 是否存在

public String getAbsolutePath()//返回文件的绝对路径，无论定义文件时使用的是什么路径（相对 or 绝对）
public String getPath()//返回定义文件时使用的路径
public String getName()//返回文件的名称，带后缀（如果调用的文件夹，那么返回的是文件夹的名字）

public long length()//返回文件的大小（字节数量），只能获取文件的大小，不能获取文件夹的大小
public long lastModified()//返回文件的最后修改时间（时间毫秒值）
```

### 3）创建和删除

```java
public void createFileTest() throws IOException{
	File file1 = new File("C:\\Users\\x41v3r\\Desktop\\a.txt");
	boolean b = file1.createNewFile();
	System.out.println(b);
	/*
		1.
			当前路径表示的文件不存在，则创建成功，返回 true
			当前路径表示的文件存在，则创建似乎白，返回 false
		2.如果当前路径的中指定的父级路径不存在
			则会引发异常 IOException
		3.createNewFile() 方法创建的一定是文件
	*/
}
```

```java
public void createDirTest() throws IOException{
	File file1 = new File("C:\\Users\\x41v3r\\Desktop\\aaa");
	boolean b1 = file1.mkdir();
	System.out.println(b);
	/*
		1.OS 中的路径是唯一的，如果当前路径已经存在，则创建失败，返回 false
		2.mkdir() 只能创建单级文件夹，不能创建多级文件夹
	*/

	File file2 = new File("C:\\Users\\x41v3r\\Desktop\\aaa\\bbb\ccc");
	boolean b2 = file2.mkdirs();
	System.out.println(b);
	/*
		mkdirs() 函数也可以创建多级文件夹，底层本质上是调用的 mkdir() 方法
	*/
}
```

```java
public void deleteTest() {
	File file1 = new File("C:\\Users\\x41v3r\\Desktop\\a.txt");
	boolean b = file1.delete();
	System.out.println(b);
	/*
		1.如果要删除的路径不存在

		2.
			如果删除的是文件，则直接删除，不走回收站
			如果删除的是空文件夹，则直接删除，同样不走回收站
			如果删除的是有内容的文件夹，则返回 false，删除失败
	*/
}
```

### 4）获取并遍历

```java
File f = new File("C:\\Users\\x41v3r\\Desktop\\aaa");

File[] files = f.listFiles();//获取 aaa 文件夹中的所有内容，把所有的的内容放到数组中返回
for(File file : files){
	//file 一次表示文件夹里面的每一个文件或文件夹
	System.out.println(file);
}
/*
1.当调用者 f 表示的路径不存在 或者 是文件时，返回 null
2.当调用者 f 表示的路径是一个空文件夹时，返回一个长度为 0 的数组
3.当调用者 f 表示的路径是一个有隐藏文件的文件夹时，会将里面的所有文件和文件夹的路径放在 File 数组中返回，包括隐藏文件
4.当调用者 f 表示的路径是一个需要有权限才能进入的文件夹时，返回一个 null
*/
```

## 4.输入输出流

&emsp;&emsp;IO 流用于存储和读取（文件中或网络中的）数据。

**IO 流的体系结构：**

![Java中io流体系结构](./images/Java中io流体系结构.png)

### 1）字节流

#### `FileOutputStream` 

&emsp;&emsp;操作本地文件的字节输出流，可以把程序中的数据写到本地文件中。

```java
//需求：写出一段文字到本地文件中

/*1.创建对象
  ->参数可以是字符串表示的路径，也可以是 File 对象
  ->如果路径指向的文件不存在，则会创建文件，但是需要保证文件的父级路径是存在的
  ->如果文件已经存在，则会清空文件，之后再写入内容
*/
FileOutputStream fileOutputStream = new FileOutputStream("a.txt");

/*2.写出数据
  ->write() 方法的参数是整数，但是实际写到本地文件中的是整数在 ASCII 上对应的字符
*/
fileOutputStream.write(97);

/*3.释放资源
  ->每次使用完流之后都要释放资源，否则会一直占用资源（程序执行结束之后，文件仍然被占用）
*/
fileOutputStream.close();
```

| 一次写入多个字符的方法                   | 作用                           |
| ---------------------------------------- | ------------------------------ |
| `void write(byte[] b)`                   | 一次写入一个字节数组的全部数据 |
| `void wirte(byte[] b, int off, int len)` | 一次写入一个字节数组的部分数据 |

```java
//1.一次写入一个字节数组的全部数据
byte[] bytes = {97,98,99,100,101};
fos.write(bytes);

//2.一次写入一个字节数组的部分数据
//参数列表 (字节数组, 起始索引, 个数)
byte[] bytes = {97,98,99,100,101,102,103};
fos.write(bytes, 1, 2);
```

换行写：

```java
String str1 = "kankelaoyezuishuai";
byte[] bytes1 = str.getBytes();
fos.write(bytes1);

//写一个换行符
String strChange = "\r\n";//Windows 中的换行符
String strChange = "\n";//Linux 中的换行符
String strChange = "\r";//MacOS 中的换行符
byte[] bytesChange = strChange.getBytes();
fos.write(bytesChange);

String str2 = "666";
byte[] bytes2 = str2.getBytes();
fos.write(bytes2);
```

续写：

```java
FileOutputStream fileOutputStream = new FileOutputStream("a.txt", true);//设置 true 开启续写开关，默认关闭

fileOutputStream.write(97);

fileOutputStream.close();
```

#### `FileInputStream` 

&emsp;&emsp;操作本地文件的字节输入流，可以把本地文件中的数据读取到程序中来。

```java
/*1.创建文件输入刘对象
	->如果文件不存在，则直接报错，不会创建文件
*/
FileInputStream fis = new FileInputStream("b.txt");

/*2.读数据
	->每次读取一个字节，读出来返回的是字符在 ASCII 上对应的数字
	->读到文件末尾了，再调用一个 read() 方法，返回 -1
*/
fis.read();

/*3.释放资源
*/
fis.close();
```

字节输入流循环读取：

```java
int b;
while((b = fis.read()) != -1){
	System.out.print((char)b);
}
```

一次读取多个字节：

```java
byte[] bytes[] = new byte[2];
fis.read(bytes);
//注意：一次读取多个数据，每次读取数据的个数即为数组的长度
//有返回值：表示本次读取到了多少个字节的数据，如果这次没有读到数据，则返回 -1
```

新的循环读取：

```java
byte[] bytes = new byte[5];

int num;
while((num = fis.read(bytes)) != -1){
  String str = new String(bytes, num);
  System.out.print(str);
}
```

### 2）字符流

&emsp;&emsp;读取纯文本文件时，不应当使用字节流，因为不同语言的文字所占的字节数可能不同，按字节读取会导致出现乱码。

产生乱码的原因有两个：

* 读取数据时未读完整个汉字（不好解决）
* 编码和解码的方式不统一（容易解决）

因此我们引入了字符流：

![Java字符流](./images/Java字符流.png)

&emsp;&emsp;字符流的底层其实就是字节流。

特点：

* 输入流：一次读一个字节，遇到中文时，一次读多个字节
* 输出流：底层会把数据按照指定的编码方式进行编码，变成字节在写到文件中

#### `FileWriter`

```java

```

#### `FileReader`

1. 创建字符输入对象

| 构造方法                         | 说明                                         |
|:--------------------------------:|:--------------------------------------------:|
|`public FileReader(File file)`      |通过文件对象，创建字符输入流关联本地文件      |
|`public FileReader(String pathname)`|通过文件路径字符串，创建字符输入流关联本地文件|

* 若文件不存在，则直接报错

2. 读取数据

| 成员方法                     |说明|
|:----------------------------:|:---:|
|`public int read()`             |读取一个数据，返回值为读取到的数据，读到末尾返回 -1|
|`public int read(char[] buffer)`|读取多个数据，返回值为本次读取到的字符的个数，本次未读到任何数据则返回 -1|

对于空参 read 方法：
* 按字节进行读取，遇到中文，一次读多个字节，读取后解码，返回一个整数
* 读到文件末尾了，`read` 方法返回 -1
* 在读取到数据之后，方法的底层会解码并转化为十进制，并最终把这个十进制作为方法的返回值（这个十进制数据也是就是当前字符在字符集上对应的数字）

3. 释放资源

| 成员方法           | 说明     |
|:------------------:|:--------:|
| `public int close()` | 释放资源 |

### 3）缓冲流

```java

```

### 4）流中的异常处理

错误思路：

![Java流中的异常处理](./images/Java流中的异常处理.png)

正确思路：

![Java流的异常处理正确方式](./images/Java流的异常处理正确方式.png)

正确实现：

```java
public static void iOExcecptionTest() {
	FileInputStream fis = null;//确定为未初始化
	FileOutputStream fos = null;//
		
	try {
		fis = new FileInputStream("/home/x41v3r/Desktop/MAD-81.mp4");
		fos = new FileOutputStream("/home/x41v3r/Desktop/MAD-81(new).mp4");
		int b = fis.read();
	}catch(IOException e) {
		e.printStackTrace();
	}finally {
		if(fis != null) {
			try {
				fis.close();
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
		if(fos != null) {
			try {
				fos.close();
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
	}
}
```

## 5.多线程



## 6.反射



