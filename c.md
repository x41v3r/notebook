# 1 Introduction to C

&emsp;&emsp;C is a general-purpose programming language. It has been closely associated with the UNIX system where it was developed, since both the system and most of the programs that run on it are written in C. 

```c
#include <stdio.h>  //include information about standard library

main()  //define a funcation named "main"
{  //statements of "main" are enclosed in braces
    printf("hello, world\n");
}
```

> A C program begins executing at the begining of **main**. This means that every C program must have a **main** somewhere.

# 2 Types, operators, and expressions

## 2.1 Variable names

There are some restrications on the names of variables and symbolic constants:

* Names are made up of letters and digits; the first character must be a letter. 
* The underscore "_" counts as a letter, it is sometimes useful for **improving the readability of long variable names**. (Don't begin variable names with underscore, however, since library routines often use such names. )
* **Upper case and lower case letters are distinct**, so "x" and "X" are two different names. (Traditional C practice is to use lower case for variable names, and all upper case for symbolic constants.)

## 2.2 Data types and sizes

There are only a few basic data types in C:

| type    | description                                                   |
|:-------:|:-------------------------------------------------------------:|
| `char`  | A single byte, capable of holding one character in the local character set. |
| `int`   | An integer, typically reflecting the natural size of integers on the host machine.|
| `float` | Single-precision floating point.    |
| `double`| Double-precision floating point.    |

&emsp;&emsp;In addition, there are a number of qualifiers that can be applied to these basic types. 

`short` and `long` apply to integers:

```c
short int sh;
long int counter;
```

&emsp;&emsp;The word "int" can be omitted in such declarations, and typically is.

> The intent is that `short` and `long` should provide different lengths of integers where practical; `int` will normally be the natural size for a particular machine.

On a 32-bit mechine, `short` is often 16 bits, `long` 32 bits, and `int` either 16 or 32 bits.

On a 64-bit mechine, `short` is 16 bits, `long` 64 bits, and `int` 32 bits.

...

> Each compiler is free to choose appropriate sizes for its own hardware, subject only to the restriction that `short`s and `int`s are at least 16 bits, `long`s are at least 32 bits, and `short` is no longer than `int`, which is no longer than `long`.

## 2.3 Constants

&emsp;&emsp;An integer constant like `1234` is an `int`. A `long` constant is written with a terminal `l` or `L`, as in `123456789L`; an integer too big to fit into an `int` will also be taken as a `long`. The `unsigned int` constants are written with a terminal `u` or `U`, and the suffix `ul` or `UL` indicates `unsigned long`.

> The value of an integer can be specified in octal or hexadecimal instead of decimal.  
> &emsp;&emsp;A leading `0` on an integer constant means **octal**; a leading `0x` or `0X` means **hexadecimal**.  
> ```c
> int a = 037;  // 31 in octal
> int b = 0x1F;  // 31 in hexadecimal
>
> printf("a(037) = %d\n", a);  // a(037) = 31
> printf("b(0x1F) = %d\n", b);  // b(0x1F) = 31
> ```

&emsp;&emsp;Floating-point constants contain a decimal point (123.4) or an exponent (1e-2) or both; their type is `double`, unless suffixed. The suffixes `f` or `F` indicate a `float` constant; `l` or `L` indicate a `long double`.

&emsp;&emsp;A character constant is an integer, written as one character within single quotes, such as `'x'`. The value of a character constant is the numeric value of the character in the machine's character set.

## 2.4 Declarations

## 2.5 Operators and expessions

# 3 Control flow
