--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 10
--
-- P10 (*) Run-length encoding of a list.
--     Use the result of problem P09 to implement the so-called run-length
--     encoding data compression method. Consecutive duplicates of elements
--     are encoded as tuples (N, E) where N is the number of duplicates of the
--     element E.
--
--     Example:
--
--     scala> encode(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e,
--                        'e))
--     res0: List[(Int, Symbol)] = List((4,'a), (1,'b), (2,'c), (2,'a),
--                                      (1,'d), (4,'e))
--------------------------------------------------------------------------------
import Data.List (group)

encode :: (Eq a) => [a] -> [(Int, a)]
encode = map encodeOne . group
         where encodeOne xs@(x:_) = (length xs, x)
