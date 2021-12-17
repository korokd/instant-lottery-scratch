module Ticket exposing (view)

import Element exposing (Column, Element)
import Model exposing (Model)
import Msg exposing (Msg)
import Square


prizeLowerBoundary : Int
prizeLowerBoundary =
    Model.prizeLowerBoundary


prizeUpperBoundary : Int
prizeUpperBoundary =
    Model.prizeUpperBoundary


listOfPrizeIds : List Int
listOfPrizeIds =
    List.range prizeLowerBoundary prizeUpperBoundary


amountOfColumns : Int
amountOfColumns =
    listOfPrizeIds
        |> List.length
        |> toFloat
        |> sqrt
        |> ceiling


columnConfig : Model -> Column Int Msg
columnConfig model =
    { header = Element.none
    , width = Element.px 200
    , view = toSquare model
    }


view : Model -> Element Msg
view model =
    Element.table
        []
        { data = listOfPrizeIds
        , columns =
            List.repeat amountOfColumns <|
                columnConfig model
        }


toSquare : Model -> Int -> Element Msg
toSquare model id =
    Square.view id model
