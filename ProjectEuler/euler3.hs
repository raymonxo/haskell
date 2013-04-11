--------------------------------------------------------------------------------
-- Project Euler, Problem 3 (http://projecteuler.net/problem=3)
-- Answer:  6857
--------------------------------------------------------------------------------
-- Returns list of prime factors of n
factors :: Integer -> [Integer]
factors 0 = []
factors 1 = []
factors n = factors' n 2
  where
    factors' n' x
        | x > limit =       [n']
        | n' `mod` x == 0 = x : factors' (n' `div` x) x
        | otherwise =       factors' n' (x + 1)
      where
        limit = floor . sqrt $ fromIntegral n'
                
euler3 = maximum $ factors 600851475143
