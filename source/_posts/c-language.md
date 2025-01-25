---
title: "C Language"
date: 2024-12-22 23:08:36
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

## 2.3 Constants

&emsp;&emsp;An integer constant like `1234` is an `int`. A `long` constant is written with a terminal `l` or `L`, as in `123456789L`; an integer too big to fit into an `int` will also be taken as a `long`. The `unsigned int` constants are written with a terminal `u` or `U`, and the suffix `ul` or `UL` indicates `unsigned long`.

```c
int a = 1234;
unsigned int ua = 1234u;

long b = 1234567890L;
unsigned long ub = 1234567890UL;
```

The value of an integer *can be specified in octal or hexadecimal instead of decimal*: A leading `0` on an integer constant means **octal**; a leading `0x` or `0X` means **hexadecimal**.  

```c
int a = 037;  // 31 in octal
int b = 0x1F;  // 31 in hexadecimal

printf("a(037) = %d\n", a);  // a(037) = 31
printf("b(0x1F) = %d\n", b);  // b(0x1F) = 31
```

&emsp;&emsp;Floating-point constants contain a decimal point (123.4) or an exponent (1e-2) or both; their type is `double`, unless suffixed. The suffixes `f` or `F` indicate a `float` constant; `l` or `L` indicate a `long double`.

```c
double d = 12.34;
float f = 12.34f;
long double ld = 12.34L;
```

&emsp;&emsp;A character constant is an integer, written as one character within single quotes, such as `'x'`. The value of a character constant is the numeric value of the character in the machine's character set.

```c
char c = 'x';
```

> &emsp;&emsp;For example, in the ASCII character set the character constant `'0'` has the value `48`, which is unrelated to the numeric value `0`. If we write `'0'` instead of a numeric value like `48` that depends on character set, *the program is independent of the particular value and easier to read*.

```c
char c = '0';
int ci = c;  //ci = 48 
```

## 2.4 Declarations

&emsp;&emsp;*All variables must be declared before use*, although certain declarations can be made implicitly by context.

A declaration specifies a type, and contains a list of one or more variables of that type, as in:

```c
int lower, upper, step;
char c, line[100];
```

Variables can be distributed among declarations in any fashion; the lists above could equally well be written as:

```c
int lower;
int upper;
int step;
char c;
char line[1000];
```

> &emsp;&emsp;This latter form takes more spaces, but is convenient for adding a comment to each declaration for subsequent modifications.

&emsp;&emsp;A variable may also be initialized in its declaration.

If the name is followed by an equals sign and an expression, the expression serves as an initializer, as in:

```c
char esc = '\\';
int i = 0;
int limit MAXLINE+1;
float eps = 1.0e-5;
```

## 2.5 Operators

### 2.5.1 Arithmetic operators

&emsp;&emsp;The C arithmetic operators are the symbols that are used to perform mathematical operations on operands. 

There are **a total of 9 arithmetic operators** in C to provide the basic arithmetic operations such as addition, subtraction, multiplication, etc.

| Operator | Arithmetic Operation   | Syntax  |
|:--------:|:----------------------:|:-------:| 
| `+`      | Add two operands.      | `x + y` |
| `–`      | Subtract the second operand from the first operand. | `x – y` |
| `*`      | Multiply two operands. | `x * y` |
| `/`      | Divide the first operand by the second operand. | `x / y` |
| `%`      | Calculate the remainder when the first operand is divided by the second operand. | `x % y` |
| `--`     | Decreases the integer value of the variable by one. | `--h` or `h--` |
| `++`     | Increases the integer value of the variable by one. | `++h` or `h++` |
| `+`      | Returns the value of its operand. | `+h` |
| `-`      | Returns the negative of the value of its operand. | `-h` |

```c
// C program to demonstrate syntax of arithmetic operators
#include <stdio.h>

int main()
{
    int a = 10, b = 4, res;

    // printing a and b
    printf("a is %d and b is %d\n", a, b);

    res = a + b; // addition
    printf("a + b is %d\n", res);

    res = a - b; // subtraction
    printf("a - b is %d\n", res);

    res = a * b; // multiplication
    printf("a * b is %d\n", res);

    res = a / b; // division
    printf("a / b is %d\n", res);

    res = a % b; // modulus
    printf("a %% b is %d\n", res);

    printf("Post Increment and Decrement\n");
   
    // post-increment example:
    // res is assigned 10 only, a is not updated yet
    res = a++;
    printf("a is %d and result is %d\n", a, res); // a becomes 11 now
    
    // post-decrement example:
    // res is assigned 11 only, a is not updated yet
    res = a--;
    printf("a is %d and result is %d\n", a, res); // a becomes 10 now

    printf("\nPre Increment and Decrement\n");

    // pre-increment example:
    // res is assigned 11 now since a is updated here itself
    res = ++a;
    // a and res have same values = 11
    printf("a is %d and result is %d\n", a, res);

    // pre-decrement example:
    // res is assigned 10 only since a is updated here itself
    res = --a;
    // a and res have same values = 10
    printf("a is %d and result is %d\n", a, res);

    return 0;
}
```

### 2.5.2 Assignment operators

&emsp;&emsp;Assignment operators are used for assigning value to a variable.

The left side operand of the assignment operator is a variable and right side operand of the assignment operator is a value. 

The value on the right side must be of **the same data-type** of the variable on the left side otherwise the compiler will raise an error. 

* `=` is the simplest assignment operator, which is used to assign the value on the right to the variable on the left.
* `+=` is combination of `+` and `=` operators and `(a += b)` can be written as `(a = a + b)`.
* `-=` is combination of `-` and `=` operators and `(a -= b)` can be written as `(a = a - b)`.
* `*=` is combination of `*` and `=` operators and `(a *= b)` can be written as `(a = a * b)`.
* `/=` is combination of `/` and `=` operators and `(a /= b)` can be written as `(a = a / b)`.

```c
// C program to demonstrate working of Assignment operators

#include <stdio.h>

int main()
{
    // Assigning value 10 to a
    // using "=" operator
    int a = 10;
    printf("Value of a is %d\n", a);

    // Assigning value by adding 10 to a
    // using "+=" operator
    a += 10;
    printf("Value of a is %d\n", a);

    // Assigning value by subtracting 10 from a
    // using "-=" operator
    a -= 10;
    printf("Value of a is %d\n", a);

    // Assigning value by multiplying 10 to a
    // using "*=" operator
    a *= 10;
    printf("Value of a is %d\n", a);

    // Assigning value by dividing 10 from a
    // using "/=" operator
    a /= 10;
    printf("Value of a is %d\n", a);

    return 0;
}
```

### 2.5.3 Logical operators

&emsp;&emsp;Logical operators in C are used to combine multiple conditions/constraints. *Logical Operators returns either 0 or 1, it depends on whether the expression result is `true` or `false`.*

There are 3 logical operators in the C language:

1. Logical AND (`&&`)

```c
// C program for Logical
// AND Operator
#include <stdio.h>

// Driver code
int main()
{
    int a = 10, b = 20;

    if (a > 0 && b > 0) 
    {
        printf("Both values are greater than 0\n");
    }
    else 
    {
        printf("Both values are less than 0\n");
    }
    return 0;
}
```

2. Logical OR (`||`)

```c
// C program for Logical
// OR Operator
#include <stdio.h>

// Driver code
int main()
{
    int a = -1, b = 20;

    if (a > 0 || b > 0) 
    {
        printf("Any one of the given value is "
               "greater than 0\n");
    }
    else 
    {
        printf("Both values are less than 0\n");
    }
    return 0;
}
```

3. Logical NOT (`!`)

```c
// C program for Logical
// NOT Operator
#include <stdio.h>

// Driver code
int main()
{
    int a = 10, b = 20;

    if (!(a > 0 && b > 0)) 
    {
        // condition returned true but
        // logical NOT operator changed
        // it to false
        printf("Both values are greater than 0\n");
    } 
    else 
    {
        printf("Both values are less than 0\n");
    }
    return 0;
}
```

&emsp;&emsp;When the result can be determined by evaluating the preceding Logical expression without evaluating the further operands, it is known as **short-circuiting**.

### 2.5.4 Bitwise operators

&emsp;&emsp;The following 6 operators are bitwise operators (also known as **bit operators** as they work at the bit-level).  

They are used to perform bitwise operations in C.

```c
// C Program to demonstrate use of bitwise operators

#include <stdio.h>
int main()
{
    // a = 5 (00000101 in 8-bit binary), b = 9 (00001001 in
    // 8-bit binary)
    unsigned int a = 5, b = 9;

    // The result is 00000001
    printf("a = %u, b = %u\n", a, b);
    printf("a&b = %u\n", a & b);

    // The result is 00001101
    printf("a|b = %u\n", a | b);

    // The result is 00001100
    printf("a^b = %u\n", a ^ b);

    // The result is 11111111111111111111111111111010
    // (assuming 32-bit unsigned int)
    printf("~a = %u\n", a = ~a);

    // The result is 00010010
    printf("b<<1 = %u\n", b << 1);

    // The result is 00000100
    printf("b>>1 = %u\n", b >> 1);

    return 0;
}
```

<a href="https://www.geeksforgeeks.org/assignment-operators-in-c-c/"> knowledge webpage </a>

## 2.6 Type conversions

## 2.7 Expressions

# 3 Control flow

## 3.1 Statements and blocks

&emsp;&emsp;An expression such as `x = 0` or `i++` or `printf(...)` becomes a *statement* when it is followed by a semicolon `;`, as in

```c
x = 0;
i++;
printf(...);
```

> In C, semicolon is a statement terminator, rather than ...

&emsp;&emsp;Curly braces `{` and `}` are used to group declarations and statements together into a compound statement, or block, so that *they are syntactically equivalent to a single statement*.

## 3.2 Branches

### 3.2.1 if-else

&emsp;&emsp;The **if-else** statement is used to express decisions. Formally, the syntax is

```c
if (expression)
    statement1;
else
    statement2;
```

where the `else` part is optional.

> &emsp;&emsp;The *expression* is evaluated, if it is true (*that is, if expression has a non-zero value*), **statement1** is executed. If it is false (*expression is zero*) and if there is an `else` part, **statement2** is executed instead.

&emsp;&emsp;Since an `if` simply tests the numeric value of an expression, certain coding shortcuts are possible. The most obvious is writing

```c
if(expression)
```

instead of 

```c
if(expression != 0)
```

> &emsp;&emsp;Sometimes this is natural and clear; at other times it can be cryptic.

---

&emsp;&emsp;Because the else part of an if-else is optional, there is an ambiguit when an else is omitted from a nested if sequence.

This is resolved by associating the else with closest previous else-if. For example, in

```c
if (n > 0)
    if (a > b)
        z = a;
    else
        z = b;
```

the else goes with the inner if.

---

### 3.2.2 else-if

&emsp;&emsp;The construction

```c
if (expression)
    statement;
else if (expression)
    statement;
else if (expression)
    statement;
else if (expression)
    statement;
else
    statement;
```

is the most general way of writing a *multi-way decision*. 

> &emsp;&emsp;The expression are evaluated in order; *if any expression is true, the statement associated with it is executed, and this terminates the whole chain*. The last `else` part handles the “none of the above” or default case where none of the other conditions is satisfied.

&emsp;&emsp;Sometimes there is no explicit action for the default; in that case the trailing

```c
else
    statement
```

can be ommitted, it may be used for error checking to *catch an "impossible" condition*.

### 3.2.3 switch

&emsp;&emsp;The **switch** statement is a multi-way decision that tests whether an expression matches one of a number of constant integer values, and branches accordingly.

```c
switch (expression)
{
    case const-expr: statements
    case const-expr: statements
    default: statements
}
```

Each **case** is labeled by one or more integer-valued constants or constant expressions.

If a case matches the expression value, *execution **starts** at the case. (All case expressions must be different.)*

The case labeled **default** is executed if none of the other cases are satisfied. (A default is optional.)

If there isn't a "default" and if none of the cases match, *no action at all takes place*.

Cases and the defult clause can occur in any order.

## 3.3 Loops

### 3.3.1 while

### 3.3.2 for

### 3.3.3 do-while

## 3.4 break and continue

## 3.5 goto

# 4 Functions and program structure

## 4.1 Basics of functions

