# 1 Types and Declarations

&emsp;&emsp;Every name (identifier) in a C++ program has a type associated with it.

&emsp;&emsp;This type determines what operations can be applied to the name (that is, to the entity referred to by the name) and how such operations are interpreted. For example:

```cpp
float x;        // x is a floating-point variable
int y = 7;      // y is an integer variable with the initial value 7
float f(int);   // f is a function taking an argument of type int and returning a floating-point number
```

&emsp;&emsp;These declarations would make the example meaningful. Because **y** is declared to be an **int**, it can be assigned to, used as an operand for **+**, etc.

> Notes:  
> &emsp;&emsp;On the other hand, **f** is declared to be a function that takes an **int** as its argument, so it can be called given the interger **2**.

## 1.1 Types

&emsp;&emsp;C++ has a set of fundamental types corresponding to the most common basic storage units of a computer and the most common ways of using them to hold data.

### 1.1.1 Booleans

&emsp;&emsp;A Boolean, **bool**, can have one of the two values: **true** or **false**, is used to express the result of logical operations. For example:

```cpp
void f(int a, int b)
{
    bool b1 {a==b};
    //If a and b have the same value, b1 becomes true; otherwise, b1 becomes false.
    // ...
}
```

&emsp;&emsp;By definition, **true** has the value **1** when converted to an integer and **false** has the value **0**.

&emsp;&emsp;Conversely, integers can be implicitly converted to **bool** values: nonzero integers convert to **true** and **0** converts to **false**. For example:

```cpp
bool b1 = 7;   // 7!=0, so b1 becomes true
bool b2 = -23; // -23!=0, so b2 becomes true

bool b3 {7};   // error: narrowing
bool b4 {1};   // true

int i1 = true;  // i1 becomes 1
int i2 {true};  // i2 becomes 1

int i3 = false; // i3 becomes 0
int i4 {false}; // i4 becomes 0

if(1)
{
    //This line is executed.
    cout << "an integer is converted to a boolean value implicitly" << endl;
}
```

&emsp;&emsp;In arithmetic and logical expressions, **bool**s are converted to **int**s implicitly; **integer arithmetic and logical operations are performed on the converted values**. For example:

```cpp
bool a = true;
bool b = true;
bool x = a+b;   // a+b is 2, so x becomes true
bool y = a||b;  // a||b is 1, so y becomes true ("||" means "or")
bool z = a−b;   // a-b is 0, so z becomes false
//The result of each expression above is implicitly converted to bool.
```

&emsp;&emsp;A pointer can be implicitly converted to a **bool**. A non-null pointer converts to **true**; pointers with the value **nullptr** convert to **false**. For example:

```cpp
void g(int∗ p)
{
    bool b = p;             // narrows to true or false
    bool b2 {p!=nullptr};   // explicit test against nullptr
    
    if(p)  //equivalent to p!=nullptr
    {
        // ...
    }
}
```

### 1.1.2 Character Types

#### Signed and Unsigned Characters

&emsp;&emsp;A plain **char** is neither **unsigned** nor **signed** by default. If a **char** has a specific behavior that is important to us, we can explicitly set the type to **signed char** or **unsigned char**.

```cpp
char fodo;  //may be signed, may be unsigned
unsigned char bar;  //definitely unsigned
signed char snark;  //definitely signed
```

&emsp;&emsp;On each implementation, the **char** type will be identical to that of either **signed char** or **unsigned char**, but these three names are still considered separate types.

> It is implementation-defined whether a plain **char** is considered signed or unsigned. This opens the possibility for some nasty surprises and implementation dependencies.

&emsp;&emsp;If we just use a char type to stand a character, **a plain char is enough**. But if we use a char type value as a "very short" integer, **it is meaningful to discuss whether a char variable is signed or unsigned**.

```cpp



```

#### Character Literals

&emsp;&emsp;A character literal is a single character enclosed in single quotes, for example, **'a'** and **'0'**. The type of a character literal is **char**.

```cpp
char c1 = 'a';
char c2 = '#';  // a special character is acceptable
char c3 = ' ';  // a space is also a character

char c4 = '';  // error: there must be a character inside the single quotes
char c5 = 'abc';  //warning: multi-character character constant, and c5 finally becomes 'c', the last character inside the single quotes
```

<!--error: there can only be no more than a character inside the single quotes-->

A few characters have standard names that use the backslash, \\, as an escape character:

|Name           |ASCII Name|C++ Name|
|:-------------:|:--------:|:------:|
|NewLine        |NL(LF)    |`\n`    |
|Horizontal tab |HT        |`\t`    |
|Backslash      |\         |`\\`    |

> Despite their appearance, these are all single characters.

```cpp
char c1 = '\n';
char c2 = '\t';
```









### 1.1.3 Integer Types

&emsp;&emsp;Like char, each integer type comes in three forms: "plain" **int**, **signed int**, and **unsigned int**. In addition, integers come in four sizes: **short int**, "plain" **int**, **long int**, and **long long int**. 

&emsp;&emsp;A **long int** can be referred to as plain **long**, and a **long long int** can be referred to as plain **long long**. Similarly, **short** is a synonym for **short int**, **unsigned** for **unsigned int**, and **signed** for **signed int**.

> There is no **long short int** equivalent to **int**.

&emsp;&emsp;The **unsigned** integer types are ideal for uses that treat storage as a bit array. 

> Unlike plain **char**s, plain **int**s are always signed. The signed **int** types are simply more explicit synonyms for their plain **int** counterparts, rather than different types.

> Using an unsigned instead of an int to gain one more bit to represent positive integers is almost never a good idea.
Attempts to ensure that some values are positive by declaring variables unsigned will typically be
defeated by the implicit conversion rules

#### Integer Literals

&emsp;&emsp;Integer literals come in three guises: **decimal, octal, and hexadecimal**. 




> Notes:  
> &emsp;&emsp;Using an **unsigned** instead of an **int** to gain one more bit to represent positive integers **is almost never a good idea**. Attempts to ensure that some values are positive by declaring variables **unsigned** will typically be defeated by the implicit conversion rules

1. Integer Literals


> Notes:  
> &emsp;&emsp;Decimal literals are the most commonly used and look as you would expect them to:
> &emsp;&emsp;

&emsp;&emsp;A literal starting with zero followed by **x** or **X** (**0x** or **0X**) is a hexadecimal (base 16) number. A literal starting with zero but not followed by **x** or **X** is an octal (base 8) number.

2. Types of Integer Literals





### 1.1.4 Floating-point Types

&emsp;&emsp;The floating-point types represent floating-point numbers. A floating-point number is an approximation of a real number represented in a fixed amount of memory. 

&emsp;&emsp;There are three floating-point types: **float** (single-precision), **double** (double-precision), and **long double** (extended-precision).

### 1.1.5 `void`

### 1.1.6 Sizes

### 1.1.7 Alignment

## 1.2 Declarations




## 1.3 Objects and Values

## 1.4 Aliases

# 2 Pointers, Arrays, and References



# 3 Structures, Unions, and Enumerations

# 4 Statements

# 5 Expressions



# 6 Select Operations

# 7 Functions

# 8 Exception Handling

# 9 Namespaces

# 10 Source Files and Programs

# 11 Classes

# 12 Construction, Cleanup, Copy, and Move

# 13 Overloading

# 14 Special Operators

# 15 Derived Classes

# 16 Class Hierarchies

# 17 Run-Time Type Information

# 18 Templates

# 19 
