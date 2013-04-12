--------------------------------------------------------------------------------
-- Project Euler, Problem 5 (http://projecteuler.net/problem=5)
-- Answer:  232792560
--------------------------------------------------------------------------------
import Data.List
import EulerCommon

-- My first solution applies the lowest-common-denominator algorithm to a list
-- of numbers.  Turns out this solution should have been broken into two
-- functions - one that computes the lowest-common-denominator (same thing
-- as the least-common-multiple) for two numbers and another that successively
-- applies the first function to the numbers in the list.  Only after solving
-- this with solution #1 did I realize that the least-common-multiple
-- function is provided in Haskell (called "lcm").  This led me to solution #2.

-- Solution #1
-- Compute prime factors of 1..20 then multiply the greatest power of each
-- factor.  The smaller powers of each factor are included in the larger powers 
-- (e.g. 4 = 2^2 is included in 8 = 2^3).
euler5 = product $
         foldr (\xs@(x:_) z -> if x `elem` z then z else xs ++ z)
                []
                (sort $ concat $ map (group . factors) [1..20])

-- Solution #2
-- The "better way".
euler5' = foldl lcm 1 [1..20]
