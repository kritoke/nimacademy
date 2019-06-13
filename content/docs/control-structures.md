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

## for
