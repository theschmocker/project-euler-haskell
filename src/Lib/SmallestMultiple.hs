module Lib.SmallestMultiple where

import Lib.Solution (Solution)
import Data.Foldable (find)

solution :: Solution
solution = (5, "SmallestMultiple", solve)

solve :: Integer
solve = case find (evenlyDivisibleByAll [1..20]) [1..] of
    Nothing -> -1
    Just n -> n

evenlyDivisibleBy :: Integer -> Integer -> Bool
evenlyDivisibleBy divisor numerator = numerator `rem` divisor == 0

evenlyDivisibleByAll :: [Integer] -> Integer -> Bool
evenlyDivisibleByAll range n = all (`evenlyDivisibleBy` n) range