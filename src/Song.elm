module Song exposing (Song, Tine(..), songs)


type alias Song =
    { title : String
    , stepPerBeat : Int
    , steps : List (List Tine)
    }


songs : List Song
songs =
    [ twinkleTwinkleLittleStar
    ]


twinkleTwinkleLittleStar : Song
twinkleTwinkleLittleStar =
    let
        one =
            [ [ T1 ]
            , [ T1 ]
            , [ T5 ]
            , [ T5 ]
            , [ T6 ]
            , [ T6 ]
            , [ T5 ]
            , []
            ]

        two =
            [ [ T4 ]
            , [ T4 ]
            , [ T3 ]
            , [ T3 ]
            , [ T2 ]
            , [ T2 ]
            , [ T1 ]
            , []
            ]

        three =
            [ [ T5 ]
            , [ T5 ]
            , [ T4 ]
            , [ T4 ]
            , [ T3 ]
            , [ T3 ]
            , [ T2 ]
            , []
            ]
    in
    { title = "Twinkle, Twinkle, Little Star"
    , stepPerBeat = 1
    , steps =
        one ++ two ++ three ++ three ++ one ++ two
    }


type Tine
    = T1
    | T2
    | T3
    | T4
    | T5
    | T6
    | T7
    | T8
    | T9
    | T10
    | T11
    | T12
    | T13
    | T14
    | T15
    | T16
    | T17


tineToInt : Tine -> Int
tineToInt tine =
    case tine of
        T1 ->
            1

        T2 ->
            2

        T3 ->
            3

        T4 ->
            4

        T5 ->
            5

        T6 ->
            6

        T7 ->
            7

        T8 ->
            8

        T9 ->
            9

        T10 ->
            10

        T11 ->
            11

        T12 ->
            12

        T13 ->
            13

        T14 ->
            14

        T15 ->
            15

        T16 ->
            16

        T17 ->
            17
