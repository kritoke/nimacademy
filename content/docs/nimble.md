+++
title = "Nimble"
description = "Information relating to the usage of nimble package manager."
+++

# Nimble

## Creating a Package

Create the directory for the application and then cd into it and run, it will ask a few questions:
```
nimble init
```
You can add `binDir` to define the location for binary files to go:
```
binDir = 'bin'
```
We can also add any kind of Dependencies on other packages or nim versions:
```
requires "nim >= 19.4"
requires "jester"
```