# Haskellisms

Notes from [Haskell Programming from first principles](https://haskellbook.com/)

**Table of Contents**: Click on the hamburger menu in the upper-right corner of the GitHub display of this file.

## Chapter 2 Basic expressions and functions

Start the REPL

```bash
stack ghci
```

Load a file

```haskell
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

```haskell
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

```haskell
:type 'a'
-- 'a' :: Char
--     ^^---- :: means "has the type", i.e., the type signature
:info Char
-- type Char :: *
-- data Char = GHC.Types.C# GHC.Prim.Char#
-- ...

:type "Hello!"
-- "Hello!" :: String
:info String
-- type String :: *
-- type String = [Char]
-- ...
```

Printing the the screen

```haskell
print "hi"
-- "hi"
print 'h'
-- 'h'
putStrLn "hi"
-- hi
putStr "hi"
-- hi (without a newline)
```

Printing from a file requires some setup.

```haskell
main :: IO()
main = putStrLn "hello world!"
```

* `main` is a series of instructions to execute (not a function itself).
* `IO()` is a special type that wraps the output of the module so that it can produce a side-effect.

