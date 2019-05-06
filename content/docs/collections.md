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
### **Indexes**
As with most programming languages, referencing an index in an array, starts at `0`:
```
var a: array = ['a', 'b', 'c','d']
echo("The first element of the array is ", a[0])
```
There is a prefix that can be used to target the last part of the array, so to get the last element, use `^` as a prefix:
```
var a: array = ['a', 'b', 'c','d']
echo("The last element of the array is ", a[^1])
```

### **Slicing**
We can use a `start .. stop` syntax to get a range of values in an array:
```
var a: array = ['a', 'b', 'c','d']
echo("Elements 0 to 2 in the array are ", a[ 0 .. 2])
```
## Sequences

## Sets
