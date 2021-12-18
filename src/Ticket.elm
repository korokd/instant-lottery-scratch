module Ticket exposing (view)

import Element exposing (Attribute, Column, Element)
import Element.Border
import Model exposing (Model)
import Msg exposing (Msg)
import Square


prizeLowerBoundary : Int
prizeLowerBoundary =
    Model.prizeLowerBoundary


prizeUpperBoundary : Int
prizeUpperBoundary =
    Model.prizeUpperBoundary


amountOfColumns : Int
amountOfColumns =
    (prizeUpperBoundary - prizeLowerBoundary)
        |> toFloat
        |> sqrt
        |> ceiling


listOfPrizeIds : List Int
listOfPrizeIds =
    List.range prizeLowerBoundary (amountOfColumns - prizeLowerBoundary - 1)


columnConfig : Model -> Column Int Msg
columnConfig model =
    { header = Element.none
    , width = Element.px 200
    , view = toSquare model
    }


borderStyles : List (Attribute Msg)
borderStyles =
    [ Element.Border.color <| Element.rgba255 0 0 0 1
    , Element.Border.dashed
    , Element.Border.width 1
    ]


view : Model -> Element Msg
view model =
    Element.table
        (Element.padding 10
            :: Element.spacing 10
            :: borderStyles
        )
        { data = listOfPrizeIds
        , columns =
            List.repeat amountOfColumns <|
                columnConfig model
        }


toSquare : Model -> Int -> Element Msg
toSquare model id =
    Square.view id model
