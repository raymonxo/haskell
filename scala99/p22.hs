--------------------------------------------------------------------------------
-- P22 (*) Create a list containing all integers within a given range.
-- Example:
-- scala> range(4, 9)
-- res0: List[Int] = List(4, 5, 6, 7, 8, 9)
--------------------------------------------------------------------------------
range' :: Int -> Int -> [Int]
range' i j | i <= j    = i : (range' i + 1 j)
           | otherwise = []
