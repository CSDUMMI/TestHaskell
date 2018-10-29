import Test


test_1 = expect $ 1 `toBe` (0+1) --Success
test_2 = expect $ (2^10) `toBeGreaterThen` 2000 --Failure
main = do
  test_1
  test_2

