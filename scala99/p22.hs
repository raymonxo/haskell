--------------------------------------------------------------------------------
-- P22 (*) Create a list containing all integers within a given range.
-- Example:
-- scala> range(4, 9)
-- res0: List[Int] = List(4, 5, 6, 7, 8, 9)
--------------------------------------------------------------------------------
import Data.List (unfoldr)

range' :: Int -> Int -> [Int]
range' i j = unfoldr (\x -> if x > j then Nothing else Just (x, x + 1)) i
