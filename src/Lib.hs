module Lib
    ( prompt
    ) where

import System.IO (hFlush, stdout)

prompt :: String -> IO String
prompt p = do
    putStr p
    hFlush stdout
    n <- getLine
    putStrLn ""
    return n
