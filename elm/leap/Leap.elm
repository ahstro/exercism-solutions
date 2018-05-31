module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    isEvenlyDivisibleBy 400 year
        || (isEvenlyDivisibleBy 4 year && not (isEvenlyDivisibleBy 100 year))


isEvenlyDivisibleBy : Int -> Int -> Bool
isEvenlyDivisibleBy divisor dividend =
    dividend % divisor == 0
