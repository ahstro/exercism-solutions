module Squares (difference, squareOfSums, sumOfSquares) where

difference :: Integral a => a -> a
difference n = squareOfSums n - sumOfSquares n

squareOfSums :: Integral a => a -> a
squareOfSums = square . sum . naturals

sumOfSquares :: Integral a => a -> a
sumOfSquares = sum . map square . naturals

square :: Integral a => a -> a
square n = n ^ 2

naturals :: Integral a => a -> [a]
naturals n = [1..n]
