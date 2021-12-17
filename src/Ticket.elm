module Ticket exposing (view)

import Element exposing (Element)
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


view : Model -> Element Msg
view model =
    Element.table
        []
        { data = listOfPrizeIds
        , columns =
            [ { header = Element.none
              , width = Element.px 200
              , view = \id -> toSquare model id
              }
            ]
        }


toSquare : Model -> Int -> Element Msg
toSquare model id =
    Square.view id model
