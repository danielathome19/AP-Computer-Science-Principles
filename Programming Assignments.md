# Assignments for Self-Studying Programming Languages

The following is a self-study curriculum designed to learn the core concepts of (almost) any programming language. In the process of learning the language, you should write out a [handbook](https://github.com/danielathome19/AP-Computer-Science-Principles/blob/main/Handbook%20Template.md) for the language using [Markdown](https://www.markdownguide.org/basic-syntax/) (see [Java example handbook](https://github.com/danielathome19/AP-Computer-Science-Principles/blob/main/Java%20Handbook%20Example.md)) before beginning the exercises. Research the syntax needed for the concepts before tackling the problems; they should reinforce your understanding of the syntax. A great reference point is Derek Banas on YouTube with his ["Learn X in One Video"](https://www.youtube.com/playlist?list=PLGLfVvz_LVvSX7fVd4OUFp_ODd86H0ZIY) series; also see [learnxinyminutes.com](https://learnxinyminutes.com/).

> **Note:** not all programming languages support Object-Oriented Programming concepts like classes and inheritance (although some support simple record structures like `struct` in C).


## 1. Basics

#### Concepts

* IDE/Code Editor Setup (if using [GitHub Codespaces](https://github.com/codespaces), see [mass-language installation script](https://github.com/danielathome19/AP-Computer-Science-Principles/blob/main/apcslangs.sh) or lookup installation instructions for the programming language)
* Project Organization (e.g., one folder per unit)
* Console Input/Output
* Compiling/Using the Interpreter and Running (see [examples with run instructions](https://github.com/danielathome19/AP-Computer-Science-Principles/tree/main/Hello))
* Variables and Data Types (e.g., `int`, `float`, `double`, `char`, `boolean`, etc. [or equivalents] if applicable)
* Line and Block Comments
* Arithmetic Operators (`+`, `-`, `*`, `/`, `%`, etc.)
* Assignment Operators (`=`, `+=`, `-=`, `++`, etc.)
* Type Casting
* Print Formatting and Escape Characters (research format specifiers for the language and whatever the `printf()` equivalent is, and `'\n'`, `'\t`, etc. equivalents)
* Math Functions (e.g., `abs()`, `pow()`, `round()`, `log()`, `exp()`, `sqrt()`, trigonometric functions and deg/rad conversion, etc.)
* Math Constants (e.g., `math.PI`, `math.E`)
* Random Number Generation

#### Exercises

* Hello World (print "Hello, world!" to the console)
* Prog52a
* Prog54b
* Prog54c (be sure to round the output either using a rounding function or string/print formatting)
* Prog54a (store `miles` and `gallons` as ints; use type casting to do real [float] division when calculating MPG)
* Prog54d
* Prog59b
* Prog82a
* Prog88a
* Prog93a
* LP 4-11
* LP 4-12
* LP 4-13
* LP 4-14
* LP 4-16
* LP 4-17


## 2. Conditions

#### Concepts

* Decision Structures (`if`, `else if` [or equivalent], `else`)
* Conditional Operators (`==`, `!=` [or equivalent], `<`, `<=`, etc.) and Comparison Functions (if applicable; i.e., `.equals()`, `.compareTo()`)
* Logical Operators (`&&` or `and`, `||` or `or`, `!` or `not`)
* Optionally, use the ternary operator (`?:`) or equivalent in place of setting a variable using `if ... else` — if applicable

#### Exercises

* LP 4-4
* LP 4-9 (generate random numbers)
* LP 4-1
* LP 4-2
* LP 4-3
* LP 4-10 (prompt the user for the shape to calculate first)
* Gradebook (using `switch` or `match` if possible [or equivalent]; take in grade as percentage, return letter grade)


## 3. Loops

#### Concepts

* Looping Structures (`while`, `do-while` [or equivalent, if applicable; also `loop` in Rust], `for`)

#### Exercises

> **Note:** after the first few programs, alternate between `while` and `for` loops as needed.

* Prog115a (`while` loop)
* Prog115b (`do-while` loop or whatever other loop besides `for` exists)
* Prog122a (`for` loop)
* Prog166g
* Prog520a
* LP 5-2
* LP 5-9
* LP 5-17


## 4. String Methods

#### Concepts

* Length of String
* Substrings/String Slices and (optionally) Character Indexing
* Case Methods (convert to uppercase, lowercase, titlecase, etc.)
* Search Methods (`contains()`, `indexOf` [or equivalent], etc.)
* String Comparison (`==` or `.equals()`, if applicable)
* String Formatting/Interpolation
* Optionally, RegEx ([regular expressions](https://cheatography.com/davechild/cheat-sheets/regular-expressions/))

#### Exercises

* String Interview Q1
* String Interview Q2
* String Interview Q8
* String Interview Q10
* String Interview Q12
* String Interview Q16
* String Interview Q17
* String Interview Q18


## 5. Functions & Classes

### a. Functions

#### Concepts

* Void Functions (functions that do not return a value)
* Returning Functions (functions that `return` a value)

#### Exercises

* Prog52aFn (Prog52a with functions; make `area()` and `perimeter()` functions)
* Prog54cFn (make `area()` and `circumference()` functions)


### b. Recursion

#### Concepts

* Recursive Functions (functions that call themselves)
* Multiple Base/Ending or Recursive Cases

#### Exercises

* Prog152a (with recursion)
* Prog162a (with recursion)
* Prog460a
* Prog910a


### c. Classes

#### Concepts

* Instantiating classes (objects and `null` [or equivalent])
* Class Structure (constructors, accessors/getter methods, and mutators/setter methods) and Encapsulation
* Static Functions vs. Class Methods
* Static class variables
* Importing Classes/Functions from Other Files

#### Exercises

* Prog52aCl (Prog52a with classes; make `Rectangle` class which takes in `length` and `width` and stores them in class variables along with `area` and `perimeter`; provide getter/setter methods for `length` and `width`, a `calculate()` function to set the `area` and `perimeter` variables, and override the equivalent to `toString()` to display both output variables OR make a `display()` method)
* Prog72aCl (see `Prog72a_classes.doc`)
* Prog93aCl
* LP 3-9Cl
* LP 3-10Cl
* LP 3-12Cl
* LP 3-14Cl


## 6. Files & Data Structures

### a. Arrays

#### Concepts

* Arrays/Lists (1D, fixed-length)
* Length of Arrays
* For-Each Loops (or equivalent)
* Search Algorithms (linear search, binary search [iterative and recursive])
* Sorting Algorithms (bubble, insertion, and selection sort; optionally, quicksort and merge sort, shell sort)

#### Exercises

* String Interview Q6 (use an array to keep track of letter frequencies)
* String Interview Q12 (use `split(" ")` to get an array of strings)
* Big Array (read from data file, wrap with try-catch)
* LP 3-12
* Prog213f
* Prog460a (demonstrate both linear and binary searches)
* Prog481a
* Prog482j
* Prog482i


### b. Dynamic Arrays (Lists)

#### Concepts

* Variable-Length/Dynamically-Sized Arrays (e.g., `ArrayList` in Java)
* Common List Methods (`add()`, `get()`, `set()`, `insert()`, `remove()`/`removeAt()`, `length()`, etc. [or equivalents])

#### Exercises

* Big ArrayList (or equivalent dynamic array structure; e.g., `vector` in C++; both parts)
* Prog602b


### c. Reading Files & Exceptions

#### Concepts

* Reading line-based data files
* Reading tabular data files (comma-separated, space/tab-separated, etc.)
* Storing file data in classes, arrays, and dynamic arrays
* Exception Handling (`try-catch` [or equivalent], if applicable)
* Optionally, writing files

#### Exercises

> **Note:** in a language like C++/Java, alternate between arrays and dynamic arrays. Make helper classes as needed.

* Prog213b
* Prog213v (make `Bank` and `Transaction` classes)
* Prog214c
* Prog215h
* Prog285b (be sure you understand the language's equivalent to a `foreach` loop by this point)
* Prog408a (override equivalent to `.compareTo` or `<` operator; write bubble sort function)
* Prog505a
* Prog505b
* Prog505d


### d. Matrices

#### Concepts

* 2D Arrays (array of arrays; i.e., Jagged Arrays)
* Matrix Traversal using Nested Loops (Row-Major Order vs. Column-Major Order)
* Multidimensional Arrays (if applicable; an actual matrix where the row length is the same across all rows; i.e., [in C#](https://code-maze.com/charp-multidimensional-jagged-array/))
* Optionally, higher-dimensional (or nD) arrays/tensors (in languages like Python, you may want an external library for this; e.g., Numpy)

#### Exercises

* Prog460a
* Prog465d
* Prog465b
* Prog465C
* Prog470a
* Prog470b


## 7. Inheritance

#### Concepts

* Inheriting from Parent Classes (or `super`-classes)
* Constructing Child Classes
* Calling Parent Class Methods
* Polymorphism (method/constructor overloading and overriding; if applicable, operator overloading)
* Default Constructors (constructors with no arguments)
* Membership Checking
* Interfaces and Abstract Classes (if applicable)
* Optionally, `protected` access level (if applicable)

#### Exercises

* Prog701g (also use membership operator if possible; i.e., `is` or `instanceof`)
* Prog702p (with extra credit part)
* Prog702q
* Prog703s
* Prog505t (Farm; make an interface IFarm if possible, make Animal abstract class if possible)
* Prog875s (optional, very challenging)


## 8. Dates & Time

#### Concepts

* Dates
* Times
* DateTimes
* Unix Timestamp

#### Exercises

> **Note:** use whatever date/time/duration libraries are available in the language.

* Prog65a
* Prog72t
* Date Converter (prompt the user for month, day, year and display it in short and long date formats [**mm/dd/yyyy** vs. **Month day, yyyy**]) OR Prog515a
* Time Converter (prompt the user for hours, minutes, seconds and display it in short- and long-time [24 hour] format [**1:45 PM** vs. **13:45:27**])
