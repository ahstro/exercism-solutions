module CollatzConjecture
  ( collatz
  ) where

import Data.Maybe (Maybe(Just, Nothing))

collatz :: Integer -> Maybe Integer
collatz n
  | n <= 0    = Nothing
  | n == 1    = Just 0
  | even n    = next (n `div` 2)
  | otherwise = next (3 * n + 1)
  where
    next = fmap succ . collatz
