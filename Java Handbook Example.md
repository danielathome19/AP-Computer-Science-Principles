<h1>Handbook on Programming in Java</h1>

**AP Computer Science Principles 2023-2024**

Daniel Szelogowski





___





<h1>Table of Contents</h1>

- [TODO: remove single lines, replace double lines with single](#todo-remove-single-lines-replace-double-lines-with-single)
- [1. Compiling and Running](#1-compiling-and-running)
- [2. Data Types](#2-data-types)
  - [2.1 Variable Naming Conventions](#21-variable-naming-conventions)
- [3. Console I/O](#3-console-io)
- [4. Arithmetic Operations](#4-arithmetic-operations)
  - [4.1 Type Casting](#41-type-casting)
  - [4.2 Math Functions](#42-math-functions)
- [5. Assignment Operations](#5-assignment-operations)
- [6. Comments](#6-comments)
  - [6.1 Documentation Comments (Javadoc)](#61-documentation-comments-javadoc)
- [7. Decision Structures](#7-decision-structures)
- [8. Conditional Operators](#8-conditional-operators)
- [9. Logic Operators](#9-logic-operators)
- [10. Advanced Decision Structures](#10-advanced-decision-structures)
- [11. String Methods](#11-string-methods)
- [12. Random Generation](#12-random-generation)
- [13. Looping Structures](#13-looping-structures)
- [14. Functions/Methods](#14-functionsmethods)
  - [14.1 Static Methods](#141-static-methods)
- [15. Elementary Data Structures](#15-elementary-data-structures)
  - [15.1 Arrays/Lists](#151-arrayslists)
  - [15.2 Matrices and *n*-D Arrays](#152-matrices-and-n-d-arrays)
  - [15.3 Enumerations (enums)](#153-enumerations-enums)
- [References](#references)

<!-- 
- [16. Major Keywords](#16-major-keywords)
- [17. Error Handling](#17-error-handling)
- [18. Working with Files](#18-working-with-files)
- [19. Major Language Features](#19-major-language-features)
  - [19.1 Classes](#191-classes)
  - [19.2 Inheritance](#192-inheritance)
  - [19.3 Generic Typing (Templates)](#193-generic-typing-templates)
  - [19.4 Pointers](#194-pointers)
- [20. Importing Local Libraries](#20-importing-local-libraries)
- [21. Working with Time](#21-working-with-time)
- [22. Importing Libaries from Package managers](#22-importing-libaries-from-package-managers)
- [23. Bitwise Operators](#23-bitwise-operators)
- [24. Common Data Structures](#24-common-data-structures)
- [25. Advanced Language Features](#25-advanced-language-features)
-->





___





# 1. Compiling and Running

To quickly run a program in the command line/terminal, use the `java <FILENAME.java>` command.

**Ex:**

Main.java:
```java
public class Hello {
  public static void main(String[] args) {
    // Note that every line in java ends in a semicolon
    // unless there are braces at the end
    System.out.println("Hello, world!");
  }
}
```

```sh
$ java Main.java
>    Hello, world!
```

To compile source code to a `.class` file, use `javac <FILENAME.java>` and then call the `java` command without the file extension.

**Ex:**

```sh
$ javac Main.java
$ java Main
>    Hello, world!
```



___





# 2. Data Types

Java programs most commonly feature the following primitive types:

* `int` (integer) - a whole number, positive or negative (32 bits)
* `double` (double-precision floating-point) - a number with a decimal (64 bits with 15 bits of precision)
* `char` (character) - a single keyboard (ASCII) character (1 byte)
* `boolean` - either `true` or `false`

Less commonly, `float` is also used for smaller floating-point numbers (32 bits) and `long` is used for larger integers (64 bits).

We also have the `final` keyword, which can be used to make immutable (constant) variables that cannot be modified after creation.

```java
int x = 1;
final double PI = 3.14159;
char c = 'A';
boolean t = true;
```

It is important to note that in Java, there is no ***primitive*** type for strings. Instead, use the `String` class, which can be set like a primitive type but also provides a large array of string manipulation methods.

```java
String hello = "Hello, world!";
```





## 2.1 Variable Naming Conventions

Variable names in most programming languages (including Java) typically include upper- and lower-case letters, numbers, and underscores. 

No other special characters are allowed (as they may be confused with a programming operator by the compiler); likewise, numbers should exclusively appear at the END of the variable name. Underscores may appear anywhere in the name, but are typically used to denote a private variable (at the beginning, e.g., `_balance`) or to separate words in [snake case](https://en.wikipedia.org/wiki/Snake_case) (e.g., `full_name`).

**Ex:**
```java
// Acceptable:
abc123
abc_123
ABc_
abc
ABC
_abc
__abc__
_a_b_c_1

// Not acceptable:
my-var
123abc
$!abc
```

___





# 3. Console I/O

Java features 3 different methods for printing:

* `System.out.println(...)` - print with a line break (newline) at the end
* `System.out.print(...)` - print without a line break at the end
* `System.out.printf(stringWithFormatSpecifiers, var1, var2...)` - print a formatted string (i.e., using string interpolation to print variables in-place instead of using concatenation); see [https://www.geeksforgeeks.org/format-specifiers-in-java/ and ](https://www.digitalocean.com/community/tutorials/java-printf-method)





___





# 4. Arithmetic Operations

???

* `+` - add
* `-` - subtract
* `*` - multiply
* `/` - divide
* `%` - modulus (remainder from long division)







## 4.1 Type Casting

???

**Ex:**

```java
int miles = 50;
int gallons = 3;
double mpg = miles/(double)gallons;
// or double mpg = (double)miles/(double)gallons;
// or double mpg = (double)miles/gallons;
```





## 4.2 Math Functions

???

* `Math.abs(x)` -
* `Math.pow(x)` - 



___





# 5. Assignment Operations

???

* `x = y` - set `x` equal to value `y`
* `x += y` - shorthand for `x = x + y`
* `x -= y` - shorthand for `x- = x - y`
* `x *= y` -
* `x /= y` -
* `x %= y` -
* `x++` or `++x` - shorthand for `x += 1`
* `x--` or `--x` - shorthand for `x -= 1`





___





# 6. Comments

???

```java
// line comment

/* block
comment
across
multiple lines
*/

/* Properly
 * formatted
 * block
 * comment
 * usually for metadata (author, date, etc.)
 */
```


## 6.1 Documentation Comments (Javadoc)

???

```java
/**
 * Returns x to the power of y (x^y).
 *
 * @param  x  an int
 * @param  y  an int
 * @return    x^y
 */
public int pow(int x, int y) {
  return Math.pow(x, y);
}
```





___





# 7. Decision Structures

???

* `if`
* `else if`
* `else`





___





# 8. Conditional Operators

???

* `==` - exactly equals (for primitive types)
* `!=` - not equal to
* `>` - greater than
* `<` - less than
* `=>` - greater than or equal to
* `<=` - less than or equal to

For objects (non-primitive types):
* `x.equals(y)` - check if two objects have the same value (like Strings)
* `x.compareTo(y)` - check the difference between two objects' values





___





# 9. Logic Operators

???

* `x && y` - AND (x AND y)
* `x || y` - OR (x OR y)
* `!x` - NOT (NOT x)





___





# 10. Advanced Decision Structures

???

* `switch`
* `?:` - ternary operator for conditional assignment (`String x = "Hello" if y == true else "World";`)





___





# 11. String Methods

???

* `substring(end)` or `substring(start, end)`
* `.toUpperCase()`
* 



___





# 12. Random Generation

???

* `Math.random()`





___





# 13. Looping Structures

???

* `while (condition)` - 
* `for (...; ...; ...)` - 
* `for (x : y)` (for-each/enhanced for) - 
* `do {} while (...)`





___





# 14. Functions/Methods

???



## 14.1 Static Methods

???





___





# 15. Elementary Data Structures

???





## 15.1 Arrays/Lists

???





## 15.2 Matrices and *n*-D Arrays

???





## 15.3 Enumerations (enums)

???





___





<!-- 
EVERYTHING BELOW IS OPTIONAL; 
UNCOMMENT BY REMOVING THE ARROW TAGS SURROUNDING
(i.e., delete the "< !--" and "-- >" tags)

CHANGE THE SECTION NUMBERS AS DESIRED
-->

<!-- # 16. Major Keywords

???





___ -->





<!-- # 17. Error Handling

???





___ -->





<!-- # 18. Working with Files

???





___ -->





<!-- # 19. Major Language Features

???





## 19.1 Classes

???





## 19.2 Inheritance

???





## 19.3 Generic Typing (Templates)

???





## 19.4 Pointers

???





___ -->





<!-- # 20. Importing Local Libraries

???





___ -->





<!-- # 21. Working with Time

???





___ -->





<!-- # 22. Importing Libaries from Package managers

???





___ -->





<!-- # 23. Bitwise Operators

???





___ -->





<!-- # 24. Common Data Structures

???





___ -->





<!-- # 25. Advanced Language Features

???





___ -->





# References

* [Markdown Cheatsheet](https://gist.github.com/jonschlinkert/5854601)
* [Java Documentation](https://docs.oracle.com/javase/8/docs/api/)


