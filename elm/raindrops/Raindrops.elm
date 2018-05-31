module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops number =
    [ 3, 5, 7 ]
        |> removeFactorsOf number
        |> ifEmptyAdd number
        |> List.map numberToString
        |> String.concat


removeFactorsOf : Int -> List Int -> List Int
removeFactorsOf number =
    List.filter (isFactorOf number)


isFactorOf : Int -> Int -> Bool
isFactorOf dividend divisor =
    dividend % divisor == 0


ifEmptyAdd : a -> List a -> List a
ifEmptyAdd value list =
    if List.isEmpty list then
        value :: list
    else
        list


numberToString : Int -> String
numberToString number =
    case number of
        3 ->
            "Pling"

        5 ->
            "Plang"

        7 ->
            "Plong"

        _ ->
            Basics.toString number
