--------------------------------------------------------------------------------
-- S-99 (http://aperiodic.net/phil/scala/s-99/), Problem 6
--
-- P06 (*) Find out whether a list is a palindrome.
--     Example:
-- 
--     scala> isPalindrome(List(1, 2, 3, 2, 1))
--     res0: Boolean = true
--------------------------------------------------------------------------------
isPalindrome xs = xs == reverse xs
