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
