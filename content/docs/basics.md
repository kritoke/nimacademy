+++
title = "Basics"
description = "Getting started, basic data types, and basic operations.."
slug = "basics"
weight = 10
+++

# Basics

## Getting Started

### Installing Nim

Please refer to the [Install Nim Guide](https://nim-lang.org/install.html).

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

Unlike most languages you can use both  snake case and camel case, they are interchangeable:

```
var snake_case_variable = "this is the same as snakeCaseVariable"
var camelCaseVariable = "this is the same as camel_case_variable"
```

## var

The `var` keyword declares a variable that can be changed (it is mutable):
```
var thisValueCanChange = 4
thisValueCanChange = 5
```

## let

The `let` keyword declares a variable that cannot change once it is set (it is immutable), but doesn't have to be known at compile time:

```
let thisValueCannotChange = 42
```

## const

The `const` keyword declares a variable that cannot change (it is immutable) and is known at compile time:

```
const thisValueCannotChangeEither = 42
```

## Basic Data Types

### Integers

Support for binary, octal, hexadecimal numbers comes built-in:
```
let num0: int = 79 # decimal number
let num1: int = 0x4F # hex number
let num2: int = 0b1001111 #  binary number
let num3: int = 0o117 #  octal number
```
There is also support for unsigned numbers:
```
let num0: uint = 79 # unsigned  number
```
Numbers can be explicitly assigned a size by adding it after `int` or `uint` (8, 16, 32, 64):
```
let num8bit: int8 = -79
let num8bitunsigned: uint8 = 79
```

### Floats

### Characters

### Strings

### Booleans

### Inferred Types

Nim can also infer what type something is:
```
let intNumber = 79
let stringVariable = "this is a string"
```

## Basic Operations

### Arithmetic

### Boolean

### Comparison

### String Concatenation
