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

## Basic Data Types

### Integers

Support for binary, octal, hexadecimal numbers comes built in:
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
Numbers can be explicitly assigned a size by adding it after int or uint (8, 16, 32, 64):
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
