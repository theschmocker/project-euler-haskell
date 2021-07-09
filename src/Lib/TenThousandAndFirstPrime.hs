module Lib.TenThousandAndFirstPrime where

import Lib.Solution
import Data.List ((\\))
import Data.List.Ordered (minus, unionAll)

solution :: Solution
solution = Solution 7 "TenThousandAndFirstPrime" solve

solve :: Integer 
solve = primes !! 10000

primes = 2 : 3 : minus [5,7..] (unionAll [[p*p, p*p+2*p..] | p <- tail primes])