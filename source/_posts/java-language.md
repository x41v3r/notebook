---
title: "Java: The Language"
date: 2024-12-30 14:16:47
categories:
- Java
tags:
---

# 1 Running the first Java application

# 2 Java Language Basics 

## 2.1 Creating Variables and Naming Them

### 2.1.1 Variables

The Java programming language defines the following kinds of variables:

- **Instance Variables (Non-Static Fields)**: A instabce variable is any field declared without the `static` keyword. Non-static fields are also known as instance variables because *their values are unique to each instance of a class*.
- **Class Variables (Static Fields)**: A class variable is any field declared with the `static` modifier; this tells the compiler that *there is exactly one copy of this variable in existence*, regardless of how many times the class has been instantiated.
- **Local Variables**
- **Parameters**



### 2.1.2 Naming Variables

The rules and conventions for naming your variables can be summarized as follows:

- Variable names are case-sensitive.

- Subsequent characters may be letters, digits, dollar signs, or underscore characters.

## 2.2 Creating Primitive Type Variables

### 2.2.1 Primitive Types

The eight primitive data types supported by the Java programming language are:

|          |                                           |       |
|:--------:|:----------------------------------------:|:------:|
| `byte`   | an 8-bit signed two's complement integer |     |

1. `byte`: an 8-bit signed two's complement integer
2. `short`: a 16-bit signed two's complement integer
3. `int`: a 32-bit signed two's complement integer
4. `long`: a 64-bit two's complement integer
5. `float`: a single-precision 32-bit IEEE 754 floating point
6. `double`: a double-precision 64-bit IEEE 754 floating point
7. `boolean`: has only two possible values: `true` and `false`
8. `char`: a single 16-bit Unicode character

### 2.2.2 Initializing a field with a default value

| Data Type | Default Value (for fields) |
|:---------:|:--------------------------:|
| `byte`    |  0                         |
| `short`	|  0                         |
| `int`     |  0                         |
| `long`    |  0L                        |
| `float`   |  0.0f                      |
| `double`  |  0.0d                      |
| `char`    |  \u0000                    |
| `boolean` | false                      |



| `String (or any other object)` | null|

### 2.2.3 Creating values with literals


# 3 Classes and Objects


