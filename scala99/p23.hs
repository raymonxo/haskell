-------------------------------------------------------------------------------
-- P23 (**) Extract a given number of randomly selected elements from a list.
-- Example:
-- scala> randomSelect(3, List('a, 'b, 'c, 'd, 'f, 'g, 'h))
-- res0: List[Symbol] = List('e, 'd, 'a)
-- Hint: Use the solution to problem P20
--------------------------------------------------------------------------------
import System.Random

randomSelect :: Int -> [a] -> IO [a]


-- Solution to p20
removeAt :: Int -> [a] -> ([a], Maybe a)
removeAt n xs | n < 0     = (xs, Nothing)
              | otherwise = case splitAt n xs of
                              (ys, [])   -> (ys, Nothing)
                              (ys, z:zs) -> (ys ++ zs, Just z)
