module PerfectNumbers
  ( classify
  , Classification(..)
  ) where

data Classification
  = Deficient
  | Perfect
  | Abundant
  deriving (Eq, Show)

classify :: Int -> Maybe Classification
classify n
  | n <= 0 = Nothing
  | aliquotSum > n = Just Abundant
  | aliquotSum == n = Just Perfect
  | aliquotSum < n = Just Deficient
  where
    aliquotSum = sum $ aliquots n

aliquots :: Int -> [Int]
aliquots n = filter (divisorOf n) [1 .. n - 1]

divisorOf :: Int -> Int -> Bool
divisorOf n m = n `mod` m == 0
