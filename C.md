# C Programming Language

## 1 C Basic Grammer

### 1.1 Hello, World

```c
// include the head files
#include …
/*
Main function is the entry of the program.
Void means that the main function does not return a value.
What is inside {} is the function body of the function.
*/
void main()
{
    //program statement ending with an English semicolon
    printf(“hello,world”); 
	//this is a single-line comment
	/*
        multiline comment
        this is a comment
        this is also a comment
	*/
}
//C language is strictly case sensitive
//The C program consists of statements, each of which must be ended with an English semicolon
//Curly braces always appear in pairs
```

#### 1.1.1 c operating mechanism

![](./pictures/c/c_operation_mechanism.png)

![](./pictures/c/c_operating_mechanism.png)

#### 1.1.2 c language identifier naming convention

> The character sequence used by C to name various variables and functions is called an identifier, and any place in the program that can be named by ourselves is called an identifier.

Naming rules:
* Composed of 26 uppercase and lowercase English letters, 0-9, underline, or $, and not allowed to start with a number.
* Keywords and reserved words cannot be used, but keywords and reserved words can be included.
* The C identifier is strictly case sensitive and has unlimited length.
* The C identifier cannot contain spaces.

#### 1.1.3 c standard library

&emsp;&emsp;The C language standard library is a set of C built-in functions, constants, and header files, such as "stdio.h", "stdlib.h", "math.h", and so on. The `printf( )` function under "stdio.h" is the most commonly used library function. The statement `system ("command");` implements the function of calling system commands.

### 1.2 Variable and Constant

#### 1.2.1 data types in c (Linux amd64)

> Integer

|   Data Type    | Memory Space |              Value Range              |
| -------------- | ------------ | ------------------------------------- |
| short          | 2 Bytes      | -32768\~32767                         |
| unsigned short | 2 Bytes      | 0\~65535                              |
| int            | 4 Bytes      | -2147483648\~2147483647               |
| unsigned int   | 4 Bytes      | 0\~4294967295                         |
| long           | 8 Bytes      | Anyway, it's a very large range.      |
| unsigned long  | 8 Bytes      | Anyway, it's also a very large range. |

> Floating-point

| Data Type | Memory Space |    Value Range     |
| --------- | ------------ | ------------------ |
| float     | 4 Bytes      | 1.2E-38\~3.4E+38   |
| double    | 8 Bytes      | 2.3E-308\~1.7E+308 |

> Character

```c
char c = 'a';
printf("output: %c\n", c);
```

> Boolean

#### 1.2.2 steps for using variables

```c
int num; //declaraton

num = 60; //assign a variable

printf(“num=%d”,num);  //to use it

int num = 60;  //Initialize while declaring
```
&emsp;&emsp; We need to initialize it after declaring the variable. Because when defining variables, its memory space may not be empty, and there may be invalid data stored, leading to abnormal program execution and exit.

#### 1.2.3 define a constant (two methods)

> macro constant

```c
#define DAY 7

int main()
{
    printf("There is %d days in a week\n",DAY);
    DAY = 8;//error, we cannot change its value
    return 0;
}
```

> const variable constant

```c
int mian()
{
    const int day = 7;
    printf("There is %d days in a week\n",day);
    day = 9;//error, we cannot change its value
    return 0;
}
```

#### 1.2.4
