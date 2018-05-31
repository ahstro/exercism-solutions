module Raindrops exposing (raindrops)


raindrops : Int -> String
raindrops number =
    [ ( 3, "Pling" )
    , ( 5, "Plang" )
    , ( 7, "Plong" )
    ]
        |> List.filter (isFactorOf number << Tuple.first)
        |> List.map Tuple.second
        |> String.join ""
        |> withDefault (toString number)


isFactorOf : Int -> Int -> Bool
isFactorOf dividend divisor =
    dividend % divisor == 0


withDefault : String -> String -> String
withDefault default value =
    if String.isEmpty value then
        default
    else
        value
