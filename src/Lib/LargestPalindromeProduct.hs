module Lib.LargestPalindromeProduct where

import Lib.Solution (Solution)
import Data.Foldable (find)
import Data.List (sortBy)

solution :: Solution
solution = (4, "LargestPalindromeProduct", solve)

solve :: Integer
solve = case find isPalindrome $ sortDesc (permProducts 100 999) of
    Nothing -> -1
    Just p -> p

permProducts :: Integer -> Integer -> [Integer]
permProducts low high = permProducts' range
    where
        range = [low..high]
        permProducts' [] = []
        permProducts' [x] = [x]
        permProducts' (x:xs) = map (* x) xs ++ permProducts' xs

sortDesc :: Ord a => [a] -> [a]
sortDesc = sortBy (flip compare)

isPalindrome :: Integer -> Bool
isPalindrome n = str == reverse str
    where str = show n