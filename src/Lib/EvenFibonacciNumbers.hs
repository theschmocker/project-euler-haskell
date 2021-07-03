module Lib.EvenFibonacciNumbers (solution) where

import Lib.Solution

solution :: Solution
solution = Solution 2 "EvenFibonacciNumbers" solve

solve :: Integer 
solve = sum . filter even $ takeWhile (< 4000000) fibs

fibs :: [Integer]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)