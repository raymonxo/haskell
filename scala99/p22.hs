--------------------------------------------------------------------------------
-- P22 (*) Create a list containing all integers within a given range.
-- Example:
-- scala> range(4, 9)
-- res0: List[Int] = List(4, 5, 6, 7, 8, 9)
--------------------------------------------------------------------------------
import Data.List (unfoldr)

-- The unfoldr function is a `dual' to foldr: while foldr reduces a list to a
-- summary value, unfoldr builds a list from a seed value. The function takes
-- the element and returns Nothing if it is done producing the list or returns
-- Just (a,b), in which case, a is a prepended to the list and b is used as the 
-- next element in a recursive call.
range' :: Int -> Int -> [Int]
range' i j = unfoldr (\x -> if x > j then Nothing else Just (x, x + 1)) i
