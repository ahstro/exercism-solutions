module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    let
        dividesBy400 =
            isEvenlyDivisibleBy 400 year

        dividesBy100 =
            isEvenlyDivisibleBy 100 year

        dividesBy4 =
            isEvenlyDivisibleBy 4 year
    in
    dividesBy400 || (dividesBy4 && not dividesBy100)


isEvenlyDivisibleBy : Int -> Int -> Bool
isEvenlyDivisibleBy divisor dividend =
    dividend % divisor == 0
