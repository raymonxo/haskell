-------------------------------------------------------------------------------
-- P23 (**) Extract a given number of randomly selected elements from a list.
-- Example:
-- scala> randomSelect(3, List('a, 'b, 'c, 'd, 'f, 'g, 'h))
-- res0: List[Symbol] = List('e, 'd, 'a)
-- Hint: Use the solution to problem P20
--------------------------------------------------------------------------------
import System.Random

-- Solution to p23
-- Randomly extract one element from a list, returning a pair containing the
-- extracted element and a list of the elements that were not extracted.
extractRandom1 :: [a] -> IO (a, [a])
extractRandom1 xs = do
                    index <- getStdRandom $ randomR (0, length xs -1)
                    return (xs !! index, removeAt index xs)

-- Randomly extract n elements from a list, returning a pair containing a list
-- of the extracted elements and a list of elements that were not extracted.
extractRandomN :: Int -> [a] -> IO ([a], [a])
extractRandomN n xs = extractRandomN' n [] xs
  where extractRandomN' n extracted remaining
          | n <= 0    = return (extracted, remaining)
          | otherwise = do
                        (x, xs') <- extractRandom1 remaining
                        extractRandomN' (n - 1) (x:extracted) xs'

-- Solution to p20
removeAt :: Int -> [a] -> [a]
removeAt n xs = (take n xs) ++ (drop (n + 1) xs)
