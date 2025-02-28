---
title: "Java Language Basics"
date: 2024-12-30 14:16:47
categories:
- Java
tags: 
- Java
---

# 1 Creating Variables and Naming Them

## 1.1 Variables

The Java programming language defines the following kinds of variables:

* **Instance Variables (Non-Static Fields)**
* **Class Variables (Static Fields)**
* **Local Variables**
* **Parameters**

> In the Java programming language, the terms "field" and "variable" are both used

## 1.2 Naming variables

The rules and conventions for naming the variables can be summarized as follows:

1. A variable's name can be any legal identifier — an unlimited-length sequence of Unicode letters and digits, beginning with a letter, the dollar sign `$`, or the underscore character `_`. 
    * Variable names are case-sensitive. 
    * White space is not permitted.

> The convention, however, is to always begin the variable names with a letter, not `$` or`_`. Additionally, the dollar sign character, by convention, *is never used at all*. (Automatically generated variable names might sometimes include a dollar sign, but variable names we create ourselves should avoid using it.)

2. Subsequent characters may be letters, digits, dollar signs, or underscore characters. 

Conventions (and common sense) apply to this rule as well. 

When choosing a name for your variables, use full words instead of cryptic abbreviations. 

Doing so will make your code easier to read and understand. 

In many cases it will also make your code self-documenting; fields named cadence, speed, and gear, for example, are much more intuitive than abbreviated versions, such as s, c, and g. 

Also keep in mind that the name you choose must not be a keyword or reserved word.



If the name you choose consists of only one word, spell that word in all lowercase letters. If it consists of more than one word, capitalize the first letter of each subsequent word. The names gearRatio and currentGear are prime examples of this convention. If your variable stores a constant value, such as static final int NUM_GEARS = 6, the convention changes slightly, capitalizing every letter and separating subsequent words with the underscore character. By convention, the underscore character is never used elsewhere.





&emsp;&emsp;A variable is a storage area in memory where the data can continuously change within the same type range. It serves as the most fundamental storage unit in a program, consisting of three components: variable type, variable name, and stored value.

&emsp;&emsp;Java defines explicit data types for each kind of data and allocates memory space of varying sizes in memory accordingly. (Java is categorized as a **strongly-typed** programming language.)

> Variables are used to store data generated during the execution of a program in memory. (We use the variable name to access the data in this memory area.)


