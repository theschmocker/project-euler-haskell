module Lib.MultiplesOf3and5 (solution) where

import Lib.Solution

solution :: Solution
solution = Solution 1 "MultiplesOf3and5" solve

-- Sum of All Multiples of 3 and 5 below 1000
solve :: Integer
solve = solveFor 1000

solveFor :: Integer -> Integer
solveFor x = sum [x | x <- [1..(x - 1)], x `mod` 3 == 0 || x `mod` 5 == 0]