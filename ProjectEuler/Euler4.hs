--------------------------------------------------------------------------------
-- Project Euler, Problem 4 (http://projecteuler.net/problem=4)
-- Answer:  906609
--------------------------------------------------------------------------------
import EulerCommon

euler4 = maximum [z | x<-[100..999], y<-[100..x], let z = x * y, isPalindrome z]
