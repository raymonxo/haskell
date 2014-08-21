--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 11
--
-- P11 (*) Modified run-length encoding.
--   Modify the result of problem P10 in such a way that if an element has no
--   duplicates it is simply copied into the result list. Only elements with
--   duplicates are transferred as (N, E) terms.
--
--   Example:
--
--   scala> encodeModified(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e,
--                              'e, 'e))
--   res0: List[Any] = List((4,'a), 'b, (2,'c), (2,'a), 'd, (4,'e))
--------------------------------------------------------------------------------
data SingleOrMultiple a = Single a
                        | Multiple [a]
                          deriving (Show)

encodeModified :: (Eq a) => [a] -> [SingleOrMultiple a]
encodeModified = 
  foldr (\x zs ->
      case zs of
        (Single s) : zs'          | x == s -> Multiple [x, s] : zs'
        (Multiple (m : ms)) : zs' | x == m -> Multiple (x : m : ms) : zs'
        otherwise                          -> Single x : zs
    )
    []

-------------------------------------------------------------------------------
-- Sample run:
-- > encodeModified [1,1,1,1,2,3,3,3,4,5,5]
-- [Multiple [1,1,1,1],Single 2,Multiple [3,3,3],Single 4,Multiple [5,5]]
-------------------------------------------------------------------------------
