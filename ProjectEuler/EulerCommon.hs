-- Common code used by Project Euler solutions
module EulerCommon
( factors
, fibonaccis
, isPalindrome
, leastCommonMultiple
, primes
) where

-- List of prime factors of n
factors :: Integer -> [Integer]
factors n = factors' n 2
    where factors' n' x
        | x > limit         = [n']
        | n' `mod` x == 0   = x : factors' (n' `div` x) x
        | otherwise         = factors' n' (x + 1)
        where limit = floor . sqrt $ fromIntegral n'

-- List of all Fibonacci numbers
fibonaccis :: [Integer]
fibonaccis = 1 : 1 : fibonaccis' 1 1
    where fibonaccis' n1 n2 = (n1 + n2) : fibonaccis' (n1 + n2) n1

-- Is argument a palindrome?
isPalindrome :: (Show a) => a -> Bool
isPalindrome x = let s = show x in s == reverse s

-- Least common multiple of all numbers in list
leastCommonMultiple :: (Integral a) => [a] -> a
leastCommonMultiple = foldl lcm 1

-- List of all prime numbers
primes :: [Integer]
primes = 2 : primes' [2] 3
    where primes' ps x
        | any (\p -> x `mod` p == 0) ps'    = primes' ps (x + 2)
        | otherwise                         = x : primes' (ps ++ [x]) (x + 2)
        where ps' = takeWhile (<= (floor . sqrt $ fromIntegral x)) ps
                                          
