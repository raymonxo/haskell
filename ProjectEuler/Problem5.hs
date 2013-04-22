--------------------------------------------------------------------------------
-- Project Euler, Problem 5 (http://projecteuler.net/problem=5)
--
-- 2520 is the smallest number that can be divided by each of the numbers from
-- 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible by all of the
-- numbers from 1 to 20?
--
-- Answer:  232792560
--------------------------------------------------------------------------------
import Data.List
import EulerCommon

euler5 = leastCommonMultiple [1..20]
