module Lib.Solution where

import Data.Foldable (find)

data Solution = Solution Integer String Integer | NoSolution Integer

instance Show Solution where
    show (Solution num name solve) = name ++ " (#" ++ show num ++ "): " ++ show solve
    show (NoSolution num) = "Problem " ++ show num ++ " hasn't been solved yet."

findSolution :: Integer -> [Solution] -> Solution
findSolution num solutions = case find ((==num) . getNum) solutions of 
    Just s -> s
    Nothing -> NoSolution num

getNum :: Solution -> Integer
getNum (Solution num _ _) = num
getNum (NoSolution num) = num