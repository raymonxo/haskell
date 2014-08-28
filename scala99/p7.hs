--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 7
--
-- P07 (**) Flatten a nested list structure.
--     Example:
-- 
--     scala> flatten(List(List(1, 1), 2, List(3, List(5, 8))))
--     res0: List[Any] = List(1, 1, 2, 3, 5, 8)
--------------------------------------------------------------------------------
data NestedList a = Elem a
                  | List [NestedList a]

flatten :: NestedList a -> [a]
flatten (Elem a)      = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)
flatten (List [])     = []

-- Example usage:
-- flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
-- [1,2,3,4,5]
