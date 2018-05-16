module CollatzConjecture
  ( collatz
  ) where

import Data.Maybe (Maybe(Just, Nothing))

collatz :: Integer -> Maybe Integer
collatz n
  | n < 1     = Nothing
  | otherwise = Just $ collatz' 0 n

collatz' :: Integer -> Integer -> Integer
collatz' count n
  | n == 1    = count
  | even n    = collatz' (succ count) (n `div` 2)
  | otherwise = collatz' (succ count) (n * 3 + 1)
