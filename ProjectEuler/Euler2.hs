--------------------------------------------------------------------------------
-- Project Euler, Problem 2 (http://projecteuler.net/problem=2)
-- Answer:  4613732
--------------------------------------------------------------------------------
import EulerCommon

euler2 = sum . filter even $ takeWhile (< 4000000) fibonaccis
