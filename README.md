# TestHaskell 
Simple TDD Framework for Haskell.
My first TDD Framework was Jestjs and I still 
like the simple Syntax of the expect function
that they used and that made a test much like
native english.
I wanted to port that to Haskell.
## Expect Syntax
The Basic Concept is:
```haskell
  expect $ value1 `predicate` value2
```
For example:
```haskell
  expect $ 1 `toBe` 0+1
```
if this test passes (as it should) then the program won't give
you any  notice of it. But if it would fail as here for example:
 ```haskell
 expect $ 1 `toBeGreaterThen` 2
 ```
it will print out a message like this:
  1 should be greater then 2
every predicate generates such a  message and expect will print it out
if the test fails.

## Setup your project for TestHaskell
I don't won't you to transform your whole project
just to use my Framework. Instead you can just copy the 
Test.hs file into your own project then
import it to all your test files
and finally write a main that executes all your tests.
For more see sampleTest.hs
