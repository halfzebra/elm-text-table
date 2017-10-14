module Text exposing (table)

import List.Extra exposing (transpose)


table : List (List String) -> String
table list =
    list
        |> toString
