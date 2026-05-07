---
title: Control Structures
weight: 40
---

# Control Structures

## if

The `if` control structure is pretty similar to most programming languages and can be nested as well.

```
if 4 < 5:
  echo "4 is less than 5"
else:
  echo "4 isn't less than 5"
```

There is a special keyword `elif` that is used to check for additional conditionals to be met:

```
if 4 > 5:
  echo "4 is greater than 5"
elif 4 < 5:
  echo "4 is less than 5"
else:
  echo "Something else is true"
```

## while

The `while` loop will execute its body until the condition is false:

```
var num = 0
while num < 5:
  echo num
  num += 1
# outputs: 0, 1, 2, 3, 4
```

You can use `break` to exit the loop early and `continue` to skip to the next iteration:

```
var num = 0
while true:
  num += 1
  if num == 3:
    continue  # skip 3
  if num > 5:
    break     # exit at 6
  echo num
# outputs: 1, 2, 4, 5
```

The `for` loop iterates over sequences like strings, arrays, or ranges:

```
for i in 0..4:
  echo i  # outputs: 0, 1, 2, 3, 4
```

You can use `items` to iterate over elements directly:

```
let fruits = ["apple", "banana", "cherry"]
for fruit in items(fruits):
  echo fruit
```

Use `pairs` to get both index and value:

```
let fruits = ["apple", "banana", "cherry"]
for i, fruit in pairs(fruits):
  echo "fruits[", i, "] = ", fruit
```

## case

When you need to match against multiple patterns, you can use a `case` statement. This is a basic example of the `case` statement:

```
let lastName = "Smith"
case lastName
of "":
  echo "You have no last name."
of "Smith":
  echo "Wow, you have a very common last name."
of "Doe":
  echo "Are you missing?"
else:
  echo "What a unique last name,", lastName, "."
```
We can also check to see if it is in a set of numbers:
```
let num = 45
case num
of 45..50: 
  echo "The number is in this set: {45, 46, 47, 48, 49, 50}."
else:
  echo "The number must be something else."
```
We can also just list a few numbers as well to check against:
```
let num = 45
case num
of 45, 50: 
  echo "The number is either 45 or 50."
else:
  echo "The number must be something else."
```
You must always account for any possible outcomes, otherwise it will not compile.  We can just add `discard` to the `else` statement if we don't want to do anything if it doesn't match anything:
```
# this example has no output
let num = 335
case num
of 45, 50: 
  echo "The number is either 45 or 50."
else:
  discard
```

## Error Handling

Sometimes things go wrong - maybe a file doesn't exist, or someone types letters instead of numbers. Error handling lets you deal with these situations gracefully:

```
try:
  echo "Trying to do something risky..."
  let x = 10 div 0  # dividing by zero causes an error
except DivisionByZeroError:
  echo "Oops! Can't divide by zero"
finally:
  echo "Done, whether it worked or not"
```

The `finally` block always runs, whether there was an error or not.

Use `raise` to trigger your own errors:

```
proc divide(a, b: int): int =
  if b == 0:
    raise newException(DivByZeroError, "Cannot divide by zero!")
  result = a div b
```

## for
