+++
title = "Collections"
description = "How to use collections in the Nim Language."
weight = 20
+++

# Collections

## Arrays

The array type is a list of elements of the same type and the size does not change, so must be defined at compile time:

```
var a: array[2, int] = [3, 2]
```
Just as with basic variable types, the type can often be inferred:
```
var a = [3, 2]
```
If we don't know the value, but still want to define it, we can declare it with the type and size:
```
var a: array[3, char]
```

## Sequences

## Sets
