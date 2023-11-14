# C Programming Language

## 1 About The C Programming Language

## 2 Types, Operators, and Expressions

### 2.1 Variable Names

&emsp;&emsp;Names are made up of letters and digits; the first character must be a letter. The underscore "_" counts as a letter; it is sometimes useful for improving the readability of long variable names. Don't begin variable names with underscore, however, since library routines often use such names.

&emsp;&emsp;It's wise to choose varibale names that are related to the purpose of the variable, and that are unlikely to get mixed up typographically.

### 2.2 Data Types and Sizes

> There are only flew basic data types in C:

* char&emsp;&emsp;&emsp;a single byte, capable of holding one character in the local character set.
* int&emsp;&emsp;&emsp;&emsp;an integer, typically reflecting the natural size of integers on the host machine. 
* float&emsp;&emsp;&emsp;single-precision floating point.
* double&emsp;&emsp;double-precision floating point.

> In addition, there are a number of qualifiers that can be applied to these basic types:

```c
short int sh;
long int counter;
/*
    The word "int" can be omitted in such declarations, and typically is.
*/
short sh;
long int counter;

/*
    The qualifier "singed" and "unsigned" may be applied to char or any integer.
*/
unsigned char c_1; //between 0 and 255
singed char c_2; //between -128 and 127

/*
    The type long double specifies extended-precision floating point.
*/
float f;
double d;
long double ld;
```

### 2.3 Constants

> An integer constant like 1234 is an int.

&emsp;&emsp;A long constant is written with a terminal "l" or "L", as in 123456789L; an integer  too big to fit into an int will also be taken as a long.

&emsp;&emsp;Unsigned constants are written with a terminal "u" or "U", and the suffix "ul" or "UL" indicates unsigned long.

> Floating-point constants contain a decimal point.

&emsp;&emsp;

## 3 Control Flow

## 4 Functions and Program Structure

## 5 Pointers and Arrays

## 6 Structures

## 7 Input and Output

