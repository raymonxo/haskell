--------------------------------------------------------------------------------
-- Project Euler, Problem 9 (http://projecteuler.net/problem=9)
--
-- A Pythagorean triplet is a set of three natural numbers, a < b < c, for
-- which,
--      a2 + b2 = c2
--
-- For example, 32 + 42 = 9 + 16 = 25 = 52.
--
-- There exists exactly one Pythagorean triplet for which a + b + c = 1000.
-- Find the product abc.
--
-- Answer:  31875000
--------------------------------------------------------------------------------
euler9 = head [a * b * c | let limit = 1000
                         , a <- [1 .. limit `div` 3]
                         , b <- [(a + 1) .. (limit - a) `div` 2]
                         , let c = limit - a - b
                         , b < c
                         , a^2 + b^2 == c^2]
