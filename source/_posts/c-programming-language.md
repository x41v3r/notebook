---
title: "C Programming Language"
date: 2024-12-22 23:08:37
categories:
- C
tags:
- C
---

# 1 Introduction to C

&emsp;&emsp;C is a general-purpose programming language. It has been closely associated with the UNIX system where it was developed, since both the system and most of the programs that run on it are written in C. 

```c
#include <stdio.h>  //include information about standard library

main()  //define a funcation named "main"
{  //statements of "main" are enclosed in braces
    printf("hello, world\n");
}
```

> &emsp;&emsp;A C program begins executing at the beginning of **main**. This means that every C program must have a **main** somewhere.

# 2 Types, operators, and expressions

## 2.1 Variable names

There are some restrictions on the names of variables and symbolic constants:

* Names are made up of letters and digits; the first character must be a letter. 
* The underscore `_` counts as a letter, it is sometimes useful for **improving the readability of long variable names**. (Don't begin variable names with underscore, however, since library routines often use such names. )
* **Upper case and lower case letters are distinct**, so "x" and "X" are two different names. (Traditional C practice is to use lower case for variable names, and all upper case for symbolic constants.)

## 2.2 Data types and sizes

There are only a few basic data types in C:

| type    | description                                                                          |
|:-------:|:------------------------------------------------------------------------------------:|
| `char`  | **A single byte**, capable of holding one character in the local character set.      |
| `int`   | An integer, *typically reflecting the natural size of integers on the host machine*. |
| `float` | Single-precision floating point.                                                     |
| `double`| Double-precision floating point.                                                     |

&emsp;&emsp;In addition, there are a number of qualifiers that can be applied to these basic types. 

`short` and `long` apply to integers:

```c
short int sh;
long int counter;
```

&emsp;&emsp;The word "int" can be omitted in such declarations, and typically is.

```c
short sh;
long counter;
```

> &emsp;&emsp;The intent is that `short` and `long` should provide different lengths of integers where practical; `int` will normally be the natural size for a particular machine.

On a 32-bit machine, `short` is often 16 bits, `long` 32 bits, and `int` either 16 or 32 bits.

On a 64-bit machine, `short` is 16 bits, `long` 64 bits, and `int` 32 bits.

...

> &emsp;&emsp;Each compiler is free to choose appropriate sizes for its own hardware, subject only to the restriction that *`short`s and `int`s are at least 16 bits, `long`s are at least 32 bits, and `short` is no longer than `int`, which is no longer than `long`*.

