+++
title = "User-Defined Types"
weight = 30
+++

# User-Defined Types

## Tuples

The tuple type has (optionally) named fields and the order of the fields, the values can be of different types:

```
type
  Book = tuple[name: string, publishYear: int]

var
  got: Book
  lotr: Book
got = ("A Game of Thrones", 1996)
lotr = (name: "Lord of the Rings", publishYear: 1954) # more readable version
```

Dot notation can used when referencing fields:

```
echo got.name # "A Game of Thrones"
echo got.publishYear # 1996
```

You can also reference the order of the fields as well, which is useful when you have not defined a named field:

```
type
  Person = (string, int)

var george: Person = ("George R. R. Martin", 1948)

echo george[0] # "George R. R. Martin"
echo george[1] # 1948
```

Tuples do not need a separate type section when defining it:

```
var person: tuple[name: string, birthYear: int] = ("Bob Smith", 1333)

echo person.name # "Bob Smith"
echo person.birthYear # 1333
```

## Objects

An `object` type

```
type
  Book = object
    name: string
    publishYear: int
```

You can initialize the defined object type using the following syntax:

```
var got = Book(name: "A Game of Thrones", publishYear: 1996)
```

The underlying data can be referenced using dot notation just like it was in a tuple:

```
echo got.name # "A Game of Thrones"
echo got.publishYear # 1996
```

## Enums
