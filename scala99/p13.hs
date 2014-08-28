--------------------------------------------------------------------------------
-- P13 (**) Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method directly.
-- I.e. don't use other methods you've written (like P09's pack); do all the
-- work directly.
--
-- Example:
-- 
-- scala> encodeDirect(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e,
--                          'e))
-- res0: List[(Int, Symbol)] = List((4,'a), (1,'b), (2,'c), (2,'a), (1,'d),
--                                  (4,'e))
--------------------------------------------------------------------------------
encodeDirect :: (Eq a) => [a] -> [(Int, a)]
encodeDirect = foldr processOne []
               where processOne x []              = [(1, x)]
                     processOne x acc@((n, y):ys)
                       | x == y                   = (n + 1, x):ys
                       | otherwise                = (1, x):acc
