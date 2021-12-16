module Main exposing (main)

import Browser
import HelloWorld
import Html exposing (Html)
import Html.Attributes
import Msg exposing (Msg(..))


main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Int -> Html Msg
view model =
    Html.div []
        [ Html.img [ Html.Attributes.src "/logo.png", Html.Attributes.style "width" "300px" ]
            []
        , HelloWorld.view model
        ]
