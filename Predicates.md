# List of all predicates that I predefined and an intro to how to develope your own predicate.

### toBe 
`toBe` has the following constraints:
```haskell
toBe :: (Eq a,Show a) => a -> a -> TestInfo
```
where TestInfo is a data structure used to define the result of the Test as well as to store 
the error message. `expect` uses it to determine wheter the test failed and if so which message to print out.
### notToBe
`notToBe` has the following constraints: (the same a s toBe)
```haskell
 notToBe :: (Eq a, Show a) => a -> a-> TestInfo
 ```
 it is the opposite o toBe.
 ### toBeGreaterThen
 `toBeGreaterThen` has the following constraints: 
 ```haskell
 toBeGreaterThen :: (Ord a,Show a) => a -> a -> TestInfo
 ```
 It tests if the first argument is greater then the second. I would use all predicates here infix.
 
 ### toBeLessThen
 `toBeLessThen` has the following constraints: (again the same as toBeGreaterThen)
 ```haskell
 toBeLessThen :: (Ord a, Show a) => a -> a -> TestInfo
 ```
 It is really again the opposite of `toBeGreaterThen` as `notToBe` is the oppposite of `toBe`
 
 ## Define your own predicate
 I export 2 data types with Test.hs:
 `Test` and `TestInfo`.
 ### Test
 `Test` has two constructors: `Success` and `Failure`. 
 I also export two functions called `fromBool` and ´toBool`
 they support a conversion from Bool to Test and the other way around.
 `True` is `Success` and `False` `Failure`.
 #### TestInfo
 `TestInfo` is that what a predicate returns and the `expect` function can use to 
 print or don't print the error message.
 It is defined as follows:
 ```haskell
 data TestInfo = TestInfo {
    test :: Test,
    test_info :: String
  }
  ```
  `test` is here the result of the predicate as `Test`. If your predicate outputs a Bool you should use
  the `fromBool` and `toBool` function from above.
  The `test_info` field is the error message. 
  It is really helpfull if you write a good error message and use the arguments to your predicate to give
  yourself a hint to what went wrong.
  
  ### Define a toBeGreaterThenOrEqualTo predicate
  Lets define a sample predicate that not just  tests if some thing greater then but also
  if it is equal.
  We start with the function constrain:
  ```haskell
  toBeGreaterThenOrEqualTo :: (Ord a, Show a) => a -> a -> TestInfo
  ```
  Then we make the function binding, that essentially is a call to the TestInfo constructor:
  ```haskell
  v1 `toBeGreaterThenOrEqualTo` v2 = 
    TestInfo {
        test = fromBool $ v1 >= v2,
        test_info = show v1 ++ " should be greater the or equal to " ++ show v2
        }
 ```
  Now we can use it with the expect function as all the predefined predicates as well:
  ```haskell
  expect $ 3 `toBeGreaterThenOrEqualTo` 4 -- Failure
  expect $ 4 `toBeGreaterThenOrEqualTo 3 -- Success
  ```
  
 I hope you can now use my little Framework and enjoy it.
