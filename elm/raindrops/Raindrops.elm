module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops amount =
    ""
        |> appendIf (isFactorOf amount 3) "Pling"
        |> appendIf (isFactorOf amount 5) "Plang"
        |> appendIf (isFactorOf amount 7) "Plong"
        |> withDefault (toString amount)


appendIf : Bool -> appendable -> appendable -> appendable
appendIf shouldAppend appendee appendable =
    if shouldAppend then
        appendable ++ appendee
    else
        appendable


isFactorOf : Int -> Int -> Bool
isFactorOf dividend divisor =
    dividend % divisor == 0


withDefault : String -> String -> String
withDefault default value =
    if String.isEmpty value then
        default
    else
        value
