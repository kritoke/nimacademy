+++
title = "Modules"
weight = 60
+++

# Modules

## Importing Modules

Use `import` to include another module:

```
import strutils

echo strutils.join(["hello", "world"], " ")  # "hello world"
```

You can import specific symbols to avoid prefixes:

```
from strutils import join

echo join(["hello", "world"], " ")  # "hello world"
```

Import with a custom prefix:

```
import strutils as str

echo str.join(["a", "b"], "-")  # "a-b"
```

## Creating a Module

A module is a `.nim` file that can be imported by other files:

```
# mymodule.nim
proc greet*(name: string) =
  echo "Hello, ", name

let internalValue = 42  # not exported
```

The `*` after `greet` exports it. Without `*`, the symbol is private to the module.

## Exporting Symbols

Add `*` to make a variable, procedure, or type available to importing modules:

```
var publicData*: int = 10
const privateData = 5  # not exported
```

## Using Your Module

From the same directory, import your module:

```
import mymodule

greet("Nim")  # outputs: Hello, Nim
```

## Importing from Subdirectories

Use dot notation for nested directories:

```
import lib/utils
from lib/utils import helperProc
```

## Standard Library Modules

Nim's standard library is available via `import std/<module>`:

```
import std/strformat
import std/sequtils
import std/tables
```