{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module Lib.LargestPrimeFactor where

import Lib.Solution

solution :: Solution
solution = Solution 3 "LargestPrimeFactor" solve 

solve :: Integer
solve = largestPrimeFactor 600851475143

{-
Inspired by: https://codereview.stackexchange.com/questions/46906/project-euler-3-largest-prime-factor/48185#48185
25 / 2 -
25 / 3 -
25 / 5 5 *

96 / 2 = 48
48 / 2 = 24
24 / 2 = 12
12 / 2 = 6
 6 / 2 = 3
 3 / 2 -
 3 / 3 *
-}

largestPrimeFactor :: Integer -> Integer
largestPrimeFactor n = largestPrimeFactor' n (2 : [3, 5..])
    where largestPrimeFactor' n pseudoPrimes@(c:cs)
            | c * c == n = c
            | c * c >= n = n
            | r == 0 = largestPrimeFactor' q pseudoPrimes
            | otherwise = largestPrimeFactor' n cs
                where (q, r) = n `divMod` c

{-
25 [2, 3, 5..]
25 / 2
q = 12, r = 1

25 [3, 5..]
25 / 3
q = 8, r = 1



-}