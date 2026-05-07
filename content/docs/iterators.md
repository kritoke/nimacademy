+++
title = "Iterators & Ranges"
weight = 45
+++

# Iterators & Ranges

## Ranges

Ranges define a sequence of values with a start and end point:

```
let nums = 1 .. 5      # inclusive: 1, 2, 3, 4, 5
let letters = 'a' .. 'e' # a, b, c, d, e
```

Use `..<` for half-open ranges (exclude the last element):

```
let nums = 1 ..< 5  # 1, 2, 3, 4
```

Reverse a range:

```
for i in countdown(5, 1):
  echo i  # 5, 4, 3, 2, 1
```

## Iterators

Iterators produce sequences of values for use in `for` loops:

```
iterator evens(max: int): int =
  var i = 0
  while i <= max:
    yield i
    i += 2

for e in evens(10):
  echo e  # 0, 2, 4, 6, 8, 10
```

The `yield` statement returns the next value and suspends execution until the next iteration.

## Countup & Countdown

Built-in iterators for numeric sequences:

```
for i in countup(1, 5):
  echo i  # 1, 2, 3, 4, 5

for i in countdown(5, 1):
  echo i  # 5, 4, 3, 2, 1
```

## Items & Pairs

Use `items` to iterate over sequence elements and `pairs` for index-value pairs:

```
let fruits = ["apple", "banana", "cherry"]

for fruit in items(fruits):
  echo fruit  # apple, banana, cherry

for i, fruit in pairs(fruits):
  echo "fruits[", i, "] = ", fruit  # fruits[0] = apple, etc.
```

## Iterating Over Collections

Arrays, sequences, and strings can all be iterated:

```
let nums = [1, 2, 3]
for n in nums:
  echo n

let word = "hi"
for c in word:
  echo c  # 'h', 'i'
```

## Custom Iterator Example

Create an iterator that generates Fibonacci numbers:

```
iterator fibonacci(max: int): int =
  var a = 0
  var b = 1
  while a <= max:
    yield a
    let temp = a + b
    a = b
    b = temp

for f in fibonacci(100):
  echo f  # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89
```