module Hamming
  ( distance
  ) where

import           Data.List (genericLength)

distance :: String -> String -> Maybe Int
distance xs ys
  | genericLength xs /= genericLength ys = Nothing
  | otherwise = Just $ genericLength $ filter (uncurry (/=)) $ zip xs ys
