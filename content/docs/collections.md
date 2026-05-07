+++
title = "Collections"
description = "How to use collections in the Nim Language."
weight = 20
+++

# Collections

Collections hold groups of values. Nim has different types depending on what you need.

## Arrays

Arrays hold a fixed number of items of the same type. Think of it like numbered boxes in a row:

```
var scores: array[3, int] = [100, 95, 80]
echo scores[0]  # 100 (first box)
```

The size must be known when you compile the program (before it runs).

### Indexes

Arrays start counting at 0 - the first element is at position 0:

```
var fruits: array[4, string] = ["apple", "banana", "cherry", "date"]
echo fruits[0]  # "apple"
echo fruits[3]  # "date"
```

You can use `^1` to get the last element, `^2` for second to last, etc:

```
echo fruits[^1]  # "date" (last one)
echo fruits[^2]  # "cherry" (second to last)
```

### Custom Indexes

You can set your own starting number for indexes:

```
var days = ["Mon", "Tue", "Wed", "Thu", "Fri"]
echo days[1]   # "Tue"
echo days[5]   # "Fri"
```

### Slicing

Get a portion of an array with `..`:

```
var letters = ['a', 'b', 'c', 'd', 'e']
echo letters[0 .. 2]  # ['a', 'b', 'c']
```

## Sequences

Sequences can grow and shrink while the program runs - unlike arrays which stay the same size:

```
var colors: seq[string] = @["red", "blue"]
colors.add("green")  # now has 3 items
echo colors[2]  # "green"
```

The `@[]` means "make me an empty sequence".

### Adding Items

Add to an empty sequence with `add`:

```
var shopping: seq[string] = @[]
shopping.add("bread")
shopping.add("milk")
echo shopping.len  # 2
```

### Pre-sized Sequences

If you know the size ahead of time:

```
var items: seq[int] = newSeq[int](3)
items[0] = 1
items[1] = 2
items[2] = 3
```

## Sets

Sets are like a group where each item must be unique and order doesn't matter. Great for checking "is this a valid option?"

```
var vowels: set[char] = {'a', 'e', 'i', 'o', 'u'}
echo 'a' in vowels  # true
echo 'z' in vowels  # false
```

The `in` keyword checks if something is in the set.

### Set Operations

You can combine sets mathematically:

```
var a = {'a', 'b', 'c'}
var b = {'b', 'c', 'd'}

echo a * b    # intersection: {'b', 'c'} - what both have
echo a <+ b  # union: {'a', 'b', 'c', 'd'} - everything combined
echo a - b   # difference: {'a'} - what's in a but not in b
echo a < b   # subset check: false - is everything in a also in b?
```

## Tables

Tables store key-value pairs, like a dictionary or phone book:

```
import std/tables

var bookPrices = {
  "Nim": 0,
  "Python": 0,
  "Rust": 29.99
}.toTable()

echo bookPrices["Nim"]    # 0.0
bookPrices["Go"] = 24.99  # add new entry
echo bookPrices.len      # 4
```

Look up any key instantly without searching.

### Common Table Operations

```
if bookPrices.hasKey("Nim"):
  echo "Found Nim!"

bookPrices.del("Nim")  # remove an entry
echo bookPrices.hasKey("Nim")  # false
```