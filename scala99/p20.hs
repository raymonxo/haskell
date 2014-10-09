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
removeAt :: Int -> [a] -> ([a], a)
removeAt n xs = (left ++ right, x)
                where (left, x:right) = splitAt n xs
