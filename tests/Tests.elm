module Tests exposing (..)

import Test exposing (..)
import Expect
import Text


-- Check out http://package.elm-lang.org/packages/elm-community/elm-test/latest to learn more about testing in Elm!


all : Test
all =
    describe "Text.table"
        [ test "table" <|
            \_ ->
                Expect.equal
                    (Text.table
                        [ [ "master", "0123456789abcdef" ]
                        , [ "staging", "fedcba9876543210" ]
                        ]
                    )
                    (String.join
                        " "
                        [ "master   0123456789abcdef"
                        , "staging  fedcba9876543210"
                        ]
                    )
        ]
