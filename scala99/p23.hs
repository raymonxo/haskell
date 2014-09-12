-------------------------------------------------------------------------------
-- P23 (**) Extract a given number of randomly selected elements from a list.
-- Example:
-- scala> randomSelect(3, List('a, 'b, 'c, 'd, 'f, 'g, 'h))
-- res0: List[Symbol] = List('e, 'd, 'a)
-- Hint: Use the solution to problem P20
--------------------------------------------------------------------------------
import System.Random

-- Solution to p23
removeRandom1 :: [a] -> IO [a]
removeRandom1 xs = do
                   index <- getStdRandom $ randomR (0, length xs - 1)
                   return $ removeAt index xs

removeRandomN :: Int -> [a] -> IO [a]
removeRandomN n xs | n <= 0    = return xs
                   | otherwise = do
                                 xs' <- removeRandom1 xs
                                 removeRandomN (n - 1) xs'

-- Solution to p20
removeAt :: Int -> [a] -> [a]
removeAt n xs = (take n xs) ++ (drop (n + 1) xs)
