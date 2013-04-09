--------------------------------------------------------------------------------
-- Project Euler, Problem 3 (http://projecteuler.net/problem=3)
-- Answer:  6857
--------------------------------------------------------------------------------
-- Returns list of all prime factors of n
primeFactors :: Integer -> [Integer]
primeFactors n =
	let
		factors n' x
			| x > limit =		[n']
			| n' `mod` x == 0 =	x : factors (n' `div` x) x
			| otherwise =		factors n' (x + 1)
			where
				limit = floor . sqrt $ fromIntegral n'
	in
		factors n 2

euler3 = maximum $ primeFactors 600851475143
