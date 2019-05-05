+++
title = "Basics"
description = "Getting started, basic data types, and basic operations.."
slug = "basics"
weight = 10
+++

# Basics

## Getting Started

### **Installing Nim**

Please refer to the [Install Nim Guide](https://nim-lang.org/install.html).

### **Compiling**

To compile a nim file in the most basic way:

```
nim c nimFileName.nim
```

You can automatically execute it after a compile by adding `-r`:

```
nim c -r nimFileName.nim
```

You can add a parameter to set the output folder and binary name:

```
nim c -o:pathToFolder/programExecutable nimFileName.nim
```

### **Indentation**

Nim uses indentation similar to Python, it uses two spaces instead of brackets or end like other languages:

```

if 42 == 42:
echo "42 is equal to 42"

```

## Assigning Variables

Nim is a statically typed programming language, so a type needs to be declared before using the value:

```

var num: int = 44

```

Though the value can often be inferred, so it could also be declared this way:

```

var num = 44

```

You can also declare many variables at the same time:

```

var
num1 = 42
string1 = "it doesn't have to be the same type"
char1 = 'c'

```

Unlike most languages you can use both snake case and camel case, they are interchangeable:

```

var
snake_case_variable = "this is the same as snakeCaseVariable"
camelCaseVariable = "this is the same as camel_case_variable"

```

If you need to use the same word as a reserved keyword, you can use `stropping` by adding backticks (`):

```

var `var` = "this is a stropped variable

```

Variables cannot begin with a number and cannot contain two consecutive underscores, it can also use Unicode characters.

### **var**

The `var` type declares a variable that can be changed (it is mutable):

```

var thisValueCanChange = 4
thisValueCanChange = 5

```

### **let**

The `let` type declares a variable that cannot change once it is set (it is immutable), but doesn't have to be known at compile time:

```

let thisValueCannotChange = 42

```

### **const**

The `const` type declares a variable that cannot change (it is immutable) and is known at compile time:

```

const thisValueCannotChangeEither = 42

```

## Basic Data Types

### **Integers**

Support for binary, octal, hexadecimal numbers comes built-in:

```

let
num0: int = 79 # decimal number
num1: int = 0x4F # hex number
num2: int = 0b1001111 # binary number
num3: int = 0o117 # octal number

```

There is also support for unsigned numbers:

```

let num0: uint = 79 # unsigned number

```

Numbers can be explicitly assigned a size by adding it after `int` or `uint` (8, 16, 32, 64):

```

let
num8bit: int8 = -79
num8bitunsigned: uint8 = 79

```

### **Floats**

The fastest type for floats is `float`:

```

let floatNum: float = 42.0

```

Floats have two different suffixes based on their size and is preceded with a backtick (') and the size ( `'f32` for float32 and `'f64` for float64):

```

let
floatNum32: float = 44'f32
floatNum64: float = 44'f64

```

### **Characters**

The `char` type is for representing a single ASCII character and is wrapped with two single tickets ('):

```

let
zed: char = 'z'
two: char = '2'
pound: char = '#'

```

### **Special Characters**

- `\n` is a newline character
- `\t` is a tab character
- `\\` is a backslash (since the first `\` is an escape character)
- `r"..."` is for raw strings to output an exact string ignoring special characters in the quotes

```

echo "This has a newline at the end.\n"
echo "This has a \t tab in the sentence."
echo "This has a \\ backslash in the sentence."
echo r"This has\n no special characters\n at all."

```

### **Strings**

Strings are best explained as a series of characters and is wrapped around two double quotes ("), these are all valid:

```

let
a: string = "cool"
b: string = "This is an example sentence."
c: string = ""
d: string = "42"
e: string = "@"

```

### **Booleans**

A boolean type can only have two values, `true` or `false`.

```

let
trueVariable: bool = true
falseVariable: bool = false

```

## Basic Operations

### **Arithmetic**

The following math operators are in Nim: `+`, `-`, `*`, and `/`.

The `/` operator will always give a floating point number as a result even if no remainders exist:

```

10/5 # results in 2.0

```

In a similar manner, when doing any arithmetic with floating point numbers, a float will result even if no remainders or decimals result:

```

4.25 - 2.25 # results in 2.0
2.0/2.0 # results in 1.0

```

The precedence of math operation is as expected, with multiplying and dividing having a higher priority than addition/subtraction.

Integer division is possible by using `div` operator to discard the remainder:

```

5 div 4 # results in 1

```

To get the remainder only, the modulus operator, `mod` can be used:

```

10 mod 4 # results in 2

```

These two operators will always result in integers.

### **Comparison**

Nim provides `<`,`>`, `==`, `!=` boolean operators. These support numbers, characters, and strings:

```

5 < 4 # false
5 == 5 # true
4.4 < 55.5 # true
'c' < 'd' # true
'c' != 'c' # false
"first" < "second" # true

```

Character/String comparison rules:

- All uppercase letters come before lowercase letters.
- When comparing strings, it is char-by-char, the letters that come first are smaller than characters later in the alphabet.
- A shorter string is considered smaller than a longer one.

There are also logical operators `and`, `or`, `xor`, and `not`.

- The `and` operator returns `true` only if both members are `true`.
- The `or` operator returns `true` if at least one member is `true`.
- The `xor` operator returns `true` if one member is `true`, but the other is not.
- The `not` operator negates the boolean value to the opposite value and only takes one argument.

```

true and true # is true
true and false # is false
false and false # is false

true or true # is true
true or false # is true
false or false # is false

true xor true # is false
true xor false # is true
false xor false # is false

not true # is false
not false # is true

```

### **String Concatenation**

As long as you use `var` to define the string, we can use `add` to add another string to the string variable:

```

var a = "test strings are "
a.add("for testing")
echo a # outputs "test strings are for testing"

```

We can also combine the two to echo to the screen using two ways:

```

var a = "test strings are "
echo a & "for testing" # outputs "test strings are for testing"
echo a, "for testing" # outputs "test strings are for testing"

```

We also can use `&` to combine strings into a variable declaration:

```

var a = "test strings are "
var b = "for testing"
var c = a & b
var d = a, b # this won't compile

```

### **Type Conversion**

Adding a `$` to a variable name makes it into a string:

```

var number: int = 44
var itsAString: string = \$number

```

Convert a float to an int (it does not round the number, but just drops any decimals):

```

let a = 4.0
echo int(a)

```

Convert an int to a float:

```

let b = 4
echo float(b)

```

```

```
