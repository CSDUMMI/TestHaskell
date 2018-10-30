# A Collection of usefull Predicates.
I did not publish a large complete Testing Framework as 
a large Cooperation could do.
Rather then that I defined that base and 
now I gave you the tools to extend my Framework.
But I don't sit here and work on this project and 
maintain it if I don't get something back.
I don't need nor want your money but
your expertise and time.
You can now write your own Predicates. 
Those things that the `expect` function
can read and later print out if something went wrong.
I want that if you have a Predicate that you think others 
migth also want to use that you create a file
in this directory, copy your idea and
then make a pull request to me.
I have a few requirments for a 
new predicate or some other fundamental 
change in the Test.hs

- You make a easy to understand name 
- You make an entry in the Listing below 
- You make a short Documentation below 

# Some other Predicates avaible in this Directory 

- hasLength.hs - <a name="hasLength">A Predicate for List length 
comparision </a>



## <a name="hasLength"></a> A Predicate for the Length of a List
### Syntax
```haskell
hasLength:: (Show a) => [a] -> Num -> TestInfo
expect $ [1,2,3] `hasLength` 3
```
### Usage
It can be used on all things that have a `length`.

### Arguments
- The List 
- The expected Length

### The Error Message
The Error for this wrong expectation looks like that:
```haskell
ghci> expect $ [1,2,3,4,5] `hasLength` 6
[1,2,3,4,5] doesn't have the length 6
```


---

I hope you will also contribute to this list and this repository
Joris Gutjahr <joris.gutjahr@gmail.com>

---
