+++
title = "Procedures"
weight = 50
+++

# Procedures

## Declaring a Procedure

A procedure (function) is declared with the `proc` keyword:

```
proc greet(name: string) =
  echo "Hello, ", name

greet("Nim")  # outputs: Hello, Nim
```

Procedures can return a value:

```
proc add(a: int, b: int): int =
  return a + b

echo add(3, 4)  # outputs: 7
```

## Calling a Procedure

```
proc sayHello() =
  echo "Hello!"

sayHello()  # parentheses are optional when no arguments
```

## Result Variable

Instead of using `return`, you can use the implicit `result` variable:

```
proc add(a: int, b: int): int =
  result = a + b

echo add(2, 3)  # outputs: 5
```

## Forward Declaration

Use `proc` without a body to declare a procedure before its implementation:

```
proc firstProc(): int  # forward declaration
proc secondProc() =
  echo firstProc()     # can call it here

proc firstProc(): int =
  return 42

secondProc()  # outputs: 42
```

## Procedure Overloading

Multiple procedures can have the same name with different parameter types:

```
proc greet(name: string) =
  echo "Hello, ", name

proc greet(times: int) =
  echo "Hello ", times, " times!"

greet("Nim")   # outputs: Hello, Nim
greet(3)       # outputs: Hello 3 times!
```

## Anonymous Procedures

Create procedures without a name using `proc` directly:

```
let add = proc(x: int, y: int): int = x + y
echo add(5, 3)  # outputs: 8
```

## Using Methods Instead

If you use the `method` keyword instead of `proc`, method calls are resolved at runtime (dynamic dispatch):

```
method Polymorph*(obj: RootObj) {.base.} =
  echo "base"

method Polymorph*(obj: SomeObject) =
  echo "some"
```

This is useful for object-oriented patterns where the actual type isn't known at compile time.