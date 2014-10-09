--------------------------------------------------------------------------------
-- P21 (*) Insert an element at a given position into a list.
-- Example:
-- scala> insertAt('new, 1, List('a, 'b, 'c, 'd))
-- res0: List[Symbol] = List('a, 'new, 'b, 'c, 'd)
--------------------------------------------------------------------------------
insertAt :: a -> Int -> [a] -> [a]
insertAt x n xs = left ++ [x] ++ right
                  where (left, right) = splitAt n xs
