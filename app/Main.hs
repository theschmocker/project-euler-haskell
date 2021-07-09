module Main where

import Data.Foldable (find)
import System.Environment (getArgs)
import System.IO (hFlush, stdout)

import Lib.Solution
import qualified Lib.MultiplesOf3and5
import qualified Lib.EvenFibonacciNumbers
import qualified Lib.LargestPrimeFactor
import qualified Lib.LargestPalindromeProduct
import qualified Lib.SmallestMultiple
import qualified Lib.SumSquareDifference
import qualified Lib.TenThousandAndFirstPrime
import qualified Lib.LargestProductInSeries

import Lib (prompt)

main :: IO ()
main = do
  args <- getArgs
  problemNumber <- read <$> case args of
    (x : _) -> return x
    _ -> prompt "Enter problem number: "

  print (findSolution problemNumber solutions)

solutions :: [Solution]
solutions =
  [ Lib.MultiplesOf3and5.solution
  , Lib.EvenFibonacciNumbers.solution
  , Lib.LargestPrimeFactor.solution
  , Lib.LargestPalindromeProduct.solution
  , Lib.SmallestMultiple.solution
  , Lib.SumSquareDifference.solution
  , Lib.TenThousandAndFirstPrime.solution
  , Lib.LargestProductInSeries.solution
  ]
