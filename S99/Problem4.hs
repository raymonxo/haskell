--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 4
--
-- P04 (*) Find the number of elements of a list.
--     Example:
-- 
--     scala> length(List(1, 1, 2, 3, 5, 8))
--     res0: Int = 6
--------------------------------------------------------------------------------
length' xs = foldl (\z _ -> z + 1) 0 xs
