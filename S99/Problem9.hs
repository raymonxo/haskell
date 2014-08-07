--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 9
--
-- P09 (**) Pack consecutive duplicates of list elements into sublists.
--     If a list contains repeated elements they should be placed in separate
--     sublists.
-- 
--     Example:
--
--     scala> pack(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e,
--                      'e))
--     res0: List[List[Symbol]] = List(List('a, 'a, 'a, 'a), List('b),
--                                List('c, 'c), List('a, 'a), List('d),
--                                List('e, 'e, 'e, 'e))
--------------------------------------------------------------------------------
-- Same as built-in function 'group'
pack xs =
  foldr (\x z ->
    case z of
      []                   -> [[x]]
      ((x':_):_) | x /= x' -> [x]:z
      (xs:z')              -> (x:xs):z')
  []
  xs
