--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 2
-- 
-- P02 (*) Find the last but one element of a list.
--     Example:
-- 
--     scala> penultimate(List(1, 1, 2, 3, 5, 8))
--     res0: Int = 5
--------------------------------------------------------------------------------
penultimate :: [a] -> Maybe a
penultimate []       = Nothing
penultimate (_:[])   = Nothing
penultimate (x:_:[]) = Just x
penultimate (_:xs)   = penultimate xs
