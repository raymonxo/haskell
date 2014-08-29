--------------------------------------------------------------------------------
-- P19 (**) Rotate a list N places to the left.
-- Examples:
-- scala> rotate(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
-- res0: List[Symbol] = List('d, 'e, 'f, 'g, 'h, 'i, 'j, 'k, 'a, 'b, 'c)
-- 
-- scala> rotate(-2, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
-- res1: List[Symbol] = List('j, 'k, 'a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i)
--------------------------------------------------------------------------------
rotate' :: Int -> [a] -> [a]
rotate' n xs = drop n' xs ++ take n' xs
               where n'  = (n `rem` len) + if n < 0 then len else 0
                     len = length xs
