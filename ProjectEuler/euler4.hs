--------------------------------------------------------------------------------
-- Project Euler, Problem 4 (http://projecteuler.net/problem=4)
-- Answer:  906609
--------------------------------------------------------------------------------
-- Return whether argument is a palindrome
isPalindrome :: (Show a) => a -> Bool
isPalindrome x = shown == reverse shown where shown = show x

euler4 = maximum [x * y | x <- [100..999], y <- [100..x], isPalindrome $ x * y]
