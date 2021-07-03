module Lib.SumSquareDifference where

import Lib.Solution

solution :: Solution
solution = Solution 6 "SumSquareDifference" solve

solve :: Integer
solve = square (sum first100) - sum (map square first100)
    where first100 = [1..100]

square :: Num a => a -> a
square x = x * x