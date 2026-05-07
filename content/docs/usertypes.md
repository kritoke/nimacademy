+++
title = "User-Defined Types"
weight = 30
+++

# User-Defined Types

Sometimes you need to create your own data types. Nim lets you do that!

## Tuples

Think of a tuple like a small container that holds several pieces of related data:

```
type
  Book = tuple[name: string, publishYear: int]

var got = (name: "A Game of Thrones", publishYear: 1996)
echo got.name  # "A Game of Thrones"
echo got.publishYear  # 1996
```

Each piece has a name and you access it with a dot.

### Accessing by Position

You can also access tuple fields by their position (0, 1, 2...):

```
var person: tuple[name: string, age: int] = ("Alice", 30)
echo person[0]  # "Alice"
echo person[1]  # 30
```

## Enums

An enum is like a dropdown menu with fixed choices - you pick one from a list:

```
type
  Direction = enum
    north
    south
    east
    west

var heading = Direction.north
echo heading  # north
```

Use enums when you have a list of options that never change, like days of the week.

### Iterating Enums

You can loop through all enum values:

```
for d in Direction.low .. Direction.high:
  echo $d  # north, south, east, west
```

Use `$` to convert enum values to strings.

## Objects

Objects group related data together:

```
type
  Book = object
    title: string
    pages: int

var myBook = Book(title: "Nim in Action", pages: 250)
echo myBook.title   # "Nim in Action"
echo myBook.pages   # 250
```

Objects are useful when you have structured data.

### Reference Objects (ref)

For most cases, use `ref object` which lets you share objects easily and handles memory automatically:

```
type
  Book = ref object
    title: string
    pages: int

var myBook = Book(title: "Nim in Action", pages: 250)
```

The garbage collector automatically cleans these up when they're no longer used.

### Object Inheritance

Objects can inherit from a base type:

```
type
  Animal = object of RootObj
    name: string

  Dog = object of Animal
    breed: string

var myDog = Dog(name: "Buddy", breed: "Labrador")
echo myDog.name   # "Buddy"
echo myDog.breed  # "Labrador"
```

This lets you create specialized versions of things.