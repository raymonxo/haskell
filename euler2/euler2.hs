--------------------------------------------------------------------------------
-- Project Euler, Problem 2 (http://projecteuler.net/problem=2)
-- Answer:  4613732
--------------------------------------------------------------------------------
fibonaccis :: [Integer]
fibonaccis = 1 : 1 : fibonaccis' 1 1
	where fibonaccis' n1 n2 = (n1 + n2) : fibonaccis' (n1 + n2) n1

euler2 = sum (filter even (takeWhile (< 4000000) fibonaccis))
