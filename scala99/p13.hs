--------------------------------------------------------------------------------
-- P13 (**) Run-length encoding of a list (direct solution).
-- Implement the so-called run-length encoding data compression method directly.
-- I.e. don't use other methods you've written (like P09's pack); do all the work directly.
--
-- Example:
-- 
-- scala> encodeDirect(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e,
--                          'e))
-- res0: List[(Int, Symbol)] = List((4,'a), (1,'b), (2,'c), (2,'a), (1,'d),
--                                  (4,'e))
--------------------------------------------------------------------------------
encodeDirect :: (Eq a) => [a] -> [(Int, a)]
encodeDirect = reverse . loop []
  where loop acc             []     = acc
        loop []              (x:xs) = loop [(1, x)] xs
        loop acc@((n, y):ys) (x:xs)
          | x == y                  = loop ((n + 1, x):ys) xs
          | otherwise               = loop ((1, x):acc) xs
