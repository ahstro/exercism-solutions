module Grains (square, total) where

import Data.Maybe (mapMaybe)

square :: Integer -> Maybe Integer
square n
  | n <= 0    = Nothing
  | n > 64    = Nothing
  | otherwise = Just $ 2^(n - 1)

total :: Integer
total = sum $ mapMaybe square [1..64]
