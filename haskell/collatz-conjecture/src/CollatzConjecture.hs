module CollatzConjecture
  ( collatz
  ) where

import           Data.List (genericLength, iterate)

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0 = Nothing
  | otherwise = Just $ genericLength $ takeWhile ((/=) 1) $ iterate next n

next :: Integer -> Integer
next n
  | even n = n `div` 2
  | otherwise = 3 * n + 1
