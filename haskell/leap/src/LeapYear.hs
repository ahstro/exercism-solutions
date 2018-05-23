module LeapYear
  ( isLeapYear
  ) where

isLeapYear :: Integer -> Bool
isLeapYear year
  | yearIsEvenlyDivisibleBy 400 = True
  | yearIsEvenlyDivisibleBy 100 = False
  | yearIsEvenlyDivisibleBy 4 = True
  | otherwise = False
  where
    yearIsEvenlyDivisibleBy = (==) 0 . rem year
