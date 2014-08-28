--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 8
--
-- P08 (**) Eliminate consecutive duplicates of list elements.
--     If a list contains repeated elements they should be replaced with a
--     single copy of the element. The order of the elements should not be
--     changed.
-- 
--     Example:
-- 
--     scala> compress(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e,
--                          'e, 'e))
--     res0: List[Symbol] = List('a, 'b, 'c, 'a, 'd, 'e)
--------------------------------------------------------------------------------
import Data.List (group)

compress :: (Eq a) => [a] -> [a]
compress = map head . group
