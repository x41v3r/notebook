# 1 Fundamentals of Python

## 1.1 Hello Python

> Variables

&emsp;&emsp;We can create a variable by assigning a value to a label using the equal sign or the assignament operator.

```python
name = "Xaiver"
age = 39
```

* A variable name can be composed of characters, numbers and underscore character but **it cannot start with a number**.
* If we are going to create a variable, we should be assigning it to a value or using a variable that already exists. A single newly created variable name in a line is not a Python code.
* A keyword is something that is used to write pyhton like `for`, `if`,`while`, `import` these are all  words that have very specific meanings within python, so **we cannot use them for a variable name**.

> Expressions and Statements

&emsp;&emsp;An expression is any sort of code that returns a value.

```python
1+1
"Xaiver"
```

&emsp;&emsp;A porgram is formed by a series of statements and each statement is put on its own line like we have these two lines here, **but we can use a semicolon to have more than one statement on a single line**.

```python
# each statement is put on its own line
name = "Xaiver"
print(name)

# using a semicolon
name = "Xaiver"; print(name)
```

> Comments

```python
# Everything after a hash mark is ingnored.
# This is a inline comment.
```

## 1.2 Data Types

```python
name = "Xaiver"

# We can use a type() function to get a variable's data type.
print(type(name))  # str

# We can use a isintance(variable_name, data_type) function to determine whether the variable is of the specified data type.
print(isinstance(name, str))  # True

# Functions above works same for other data types.
```

> Strings

> Booleans

> Number Data Types

> Enums

> Lists

> Tuples

> Sets

## 1.3 Operators

> Arithmetic Operators

| Operator | Expression | Result |
|:--------:|:----------:|:------:|
|    +     |   `1 + 1`  |    2   |
|    -     |   `2 - 1`  |    1   |
|    *     |   `2 * 2`  |    4   |
|    /     |   `4 / 2`  |    2   |
|    %     |   `4 % 3`  |    1   |
|    **    |  `4 ** 2`  |   16   |
|    //    |  `5 // 2`  |    2   |

> Comparison Operators

```python
a = 1
b = 2
```

| Operator | Expression | Result |
|:--------:|:----------:|:------:|
|   ==     |  `a == b`  | False  |
|   !=     |  `a != b`  | Ture   |
|   >      |  `a > b`   | False  |
|   <      |  `a < b`   | True   |
|   >=     |  `a >= b`  | False  |
|   <=     |  `a <= b`  | Ture   |

> Boolean Operators

> Bitwise Operators

> is & in Operators

## 1.4 Control Statements

## 1.5 Functions

# 2 Object Oriented Programming with Python 

# 3 Intermediate Python Programming
