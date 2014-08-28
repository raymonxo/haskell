--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 3
--
-- P03 (*) Find the Kth element of a list.
--     By convention, the first element in the list is element 0.
-- 
--     Example:
-- 
--     scala> nth(2, List(1, 1, 2, 3, 5, 8))
--     res0: Int = 2
--------------------------------------------------------------------------------
nth :: Int -> [a] -> Maybe a
nth _ []     = Nothing
nth 0 (x:_)  = Just x
nth n (_:xs) = nth (n - 1) xs
