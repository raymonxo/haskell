--------------------------------------------------------------------------------
-- P16 (**) Drop every Nth element from a list.
-- Example:
-- scala> drop(3, List('a, 'b, 'c, 'd, 'e, 'f, 'g, 'h, 'i, 'j, 'k))
-- res0: List[Symbol] = List('a, 'b, 'd, 'e, 'g, 'h, 'j, 'k)
--------------------------------------------------------------------------------
drop' :: Int -> [a] -> [a]
drop' n = map snd . filter (\(i, _) -> i `mod` n /= 0) . zip [1..]
