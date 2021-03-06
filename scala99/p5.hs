--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 5
--
-- P05 (*) Reverse a list.
--     Example:
-- 
--     scala> reverse(List(1, 1, 2, 3, 5, 8))
--     res0: List[Int] = List(8, 5, 3, 2, 1, 1)
--------------------------------------------------------------------------------
import Data.List (foldl')

reverse' :: [a] -> [a]
reverse' = foldl' (flip (:)) []
