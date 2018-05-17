module SumOfMultiples (sumOfMultiples) where

sumOfMultiples :: [Integer] -> Integer -> Integer
sumOfMultiples factors limit =
  sum $ filter (hasFactor factors) [1 .. (limit - 1)]


hasFactor :: [Integer] -> Integer -> Bool
hasFactor factors n =
  any ((==) 0 . mod n) factors
