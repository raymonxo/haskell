--------------------------------------------------------------------------------
-- P15 (**) Duplicate the elements of a list a given number of times.
-- Example:
-- scala> duplicateN(3, List('a, 'b, 'c, 'c, 'd))
-- res0: List[Symbol] = List('a, 'a, 'a, 'b, 'b, 'b, 'c, 'c, 'c, 'c, 'c, 'c, 'd,
--                           'd, 'd)
--------------------------------------------------------------------------------
duplicateN :: Int -> [a] -> [a]
duplicateN n xs | n < 0     = error "n must be >= 0"
                | otherwise = concatMap (replicate n) xs

