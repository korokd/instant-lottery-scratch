module Ticket exposing (view)

import Html exposing (Html)
import Model exposing (Model)
import Msg exposing (Msg)
import Square


prizeLowerBoundary : Int
prizeLowerBoundary =
    Model.prizeLowerBoundary


prizeUpperBoundary : Int
prizeUpperBoundary =
    Model.prizeUpperBoundary


view : Model -> Html Msg
view model =
    Html.div [] <|
        List.map (toSquare model) <|
            List.range prizeLowerBoundary prizeUpperBoundary


toSquare : Model -> Int -> Html Msg
toSquare model id =
    Square.view id model
