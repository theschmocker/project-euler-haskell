module Main where

import Data.Foldable (find)
import qualified Lib.MultiplesOf3and5
import qualified Lib.EvenFibonacciNumbers
import qualified Lib.LargestPrimeFactor
import qualified Lib.LargestPalindromeProduct
import qualified Lib.SmallestMultiple
import qualified Lib.SumSquareDifference
import Lib.Solution
import System.Environment (getArgs)
import System.IO (hFlush, stdout)

main :: IO ()
main = do
  args <- getArgs
  problemNumber <- fmap read $ case args of
    (x : _) -> return x
    _ -> do
      putStr "Enter problem number: "
      hFlush stdout
      n <- getLine
      putStrLn ""
      return n

  let solution = getSolution problemNumber

  case solution of
    Just (num, name, solve) -> do
      putStrLn $ name ++ " (#" ++ show num ++ "): " ++ show solve
    Nothing -> putStrLn $ "Problem " ++ show problemNumber ++ " hasn't been solved yet."

getSolution :: Integer -> Maybe Solution
getSolution n = find (\(num, _, _) -> num == n) solutions

solutions :: [Solution]
solutions =
  [ Lib.MultiplesOf3and5.solution
  , Lib.EvenFibonacciNumbers.solution
  , Lib.LargestPrimeFactor.solution
  , Lib.LargestPalindromeProduct.solution
  , Lib.SmallestMultiple.solution
  , Lib.SumSquareDifference.solution
  ]
