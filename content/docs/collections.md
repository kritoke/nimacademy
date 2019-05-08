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
We can set a custom index range as well:
```
var 
  customArrayAlpha: array[-6 .. -3, char] = ['a', 'b', 'c', 'd']
  customArrayInt: array[-3 .. 0, int] = [1, 2, 3, 4]

echo customArrayAlpha[-5] # output the second element
echo customArrayInt[-1] # output the third element
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

Sequences are dynamic in size and can grow as needed, there are two ways to define a new sequence:

```
var 
  sequenceA: seq[char] = @['a', 'b'] # to initialize with actual values
  sequenceB = newSeq[char](2) # use this if size known ahead of time, as it is more efficient
```
To add to the sequence without a defined size, we use `add`  to assign a value:
```
var openSequence: seq[char] = @[]
openSequence.add('c')
```
To add to the sequence with a defined size, we would reference the index to add a  value:
```
var knownSizeSequence: seq[int] = newSeq[int](2) 
knownSizeSequence[0] = 2
knownSizeSequence[1] = 3
```

### Sequence Length
To get the sequence length, you can use the `len` syntax:
```
var sequenceNum = @[4, 5, 6]
echo sequenceNum.len # outputs 3
```

## Sets

Sets are an ordinal type (only accepts values that can be counted) and must each value must be unique. It can include `char`, `int8`, `int16`, `enum`, and `unit8` for example.

```
var charSet: set[char]
charSet = {'a', 'e', 'c', 'd'}
```

The order of the items being stored are not kept track of, so we cannot use an index to get a value, but can use the `in` keyword to see if a value is in the set:
```
var charSet: set[char]
charSet = {'a', 'e', 'c', 'd'}
echo 'c' in charSet # outputs true
```
