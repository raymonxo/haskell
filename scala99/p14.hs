--------------------------------------------------------------------------------
-- P14 (*) Duplicate the elements of a list.
--
-- Example:
-- scala> duplicate(List('a, 'b, 'c, 'c, 'd))
-- res0: List[Symbol] = List('a, 'a, 'b, 'b, 'c, 'c, 'c, 'c, 'd, 'd)
--------------------------------------------------------------------------------
duplicate :: [a] -> [a]
duplicate = concat . map (replicate 2)
