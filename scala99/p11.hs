--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 11
--
-- P11 (*) Modified run-length encoding.
--   Modify the result of problem P10 in such a way that if an element has no
--   duplicates it is simply copied into the result list. Only elements with
--   duplicates are transferred as (N, E) terms.
--
--   Example:
--
--   scala> encodeModified(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e,
--                              'e, 'e))
--   res0: List[Any] = List((4,'a), 'b, (2,'c), (2,'a), 'd, (4,'e))
--------------------------------------------------------------------------------
import Data.Either
import Data.List (group)

encodeModified :: (Eq a) => [a] -> [Either a (Int, a)]
encodeModified = map encodeOne . group
                 where encodeOne (x:[])    = Left x
                       encodeOne all@(x:_) = Right (length all, x)

-------------------------------------------------------------------------------
-- Sample run:
--   ghci> encodeModified ['a','a','a','a','b','c','c','a','a']
--   [Right (4,'a'),Left 'b',Right (2,'c'),Right (2,'a')]
-------------------------------------------------------------------------------
