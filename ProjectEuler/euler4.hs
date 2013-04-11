--------------------------------------------------------------------------------
-- Project Euler, Problem 4 (http://projecteuler.net/problem=4)
-- Answer:  906609
--------------------------------------------------------------------------------
-- Return whether argument is a palindrome
palindrome :: (Show a) => a -> Bool
palindrome x = let s = show x in s == reverse s

euler4 = maximum [z | x<-[100..999], y<-[100..x], let z = x * y, palindrome z]
