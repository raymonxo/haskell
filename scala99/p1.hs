--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 1
--
-- P01 (*) Find the last element of a list.
--     Example:
-- 
--     scala> last(List(1, 1, 2, 3, 5, 8))
--     res0: Int = 8
--------------------------------------------------------------------------------
last' :: [a] -> Maybe a
last' []     = Nothing
last' (x:[]) = Just x
last' (_:xs) = last' xs
