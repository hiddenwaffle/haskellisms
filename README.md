# Haskellisms

Notes from [Haskell Programming from first principles](https://haskellbook.com/)

**Table of Contents**: Click on the hamburger menu in the upper-right corner of the GitHub display of this file.

## Chapter 2 Basic expressions and functions

Start the REPL

```bash
stack ghci
```

Load a file

```
:load test.hs

-- Reload the same file
:reload
:r
```

Infix vs Prefix

```haskell
10 `div` 4
div 10 4

100 + 100
(+) 100 100
```

Get info about a function

```
:info div
:info (+)
```

Variable declaration order does not matter

```haskell
module Learn where

x = 10 * 5 + y
myResult = x * 5
y = 10
```

Some arithemtic functions: `+`, `-`, `*`, `/`, `div` and `quot`, `mod` and `rem`

```haskell
div 20 (-6)
-- -4
quot 20 (-6)
-- -3

mod (-9) 7
-- 5
rem (-9) 7
-- -2
ghci>
```

Negative numbers are actually syntactic sugar for handled by a function

```haskell
2000 + (-1234)
2000 + (negate 1234)
```

`$` evaluates everything to its right first.

Use `$` to omit parentheses in some cases

```haskell
(2^) (2+2)
(2^) $ 2+2
```

Creating a partially applied function with an infix operator, a.k.a "sectioning"

```haskell
(1/) 2
-- 0.5
(/1) 2
-- 2.0

x = 5
y = (1 -)
y x
-- -4
y = (subtract 1) -- because GHCi would interpret (- 1) as negation instead of subtraction
y x
-- 4
```

* `let`...`in` is an _expression_
* `where` is a _declaration_ (i.e., bound to a surrounding construct)

```haskell
-- with let
printInc n = let plusTwo = n + 2
             in print plusTwo

-- with where
printInc n = print plusTwo
  where plusTwo = n + 2
```

## Chapter 3 Simple operations with text

