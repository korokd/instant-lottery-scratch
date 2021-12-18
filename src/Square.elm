module Square exposing (view)

import Element exposing (Element)
import Element.Background
import Model exposing (Model)
import Msg exposing (Msg)


view : Int -> Model -> Element Msg
view _ _ =
    Element.el
        [ Element.centerX
        , Element.Background.color <| Element.rgba255 255 140 0 1
        , Element.height <| Element.px 200
        , Element.width <| Element.px 200
        ]
        Element.none
