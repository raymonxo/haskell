--------------------------------------------------------------------------------
-- P20 (*) Remove the Kth element from a list.
-- Return the list and the removed element in a Tuple. Elements are numbered
-- from 0.
--
-- Example:
-- 
-- scala> removeAt(1, List('a, 'b, 'c, 'd))
-- res0: (List[Symbol], Symbol) = (List('a, 'c, 'd),'b)
--------------------------------------------------------------------------------
removeAt :: Int -> [a] -> [a]
removeAt n xs | n < 0     = xs
              | otherwise = case splitAt n xs of (ys, [])   -> ys
                                                 (ys, _:zs) -> ys ++ zs
