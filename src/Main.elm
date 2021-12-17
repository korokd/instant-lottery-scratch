module Main exposing (main)

import Browser exposing (Document)
import HelloWorld
import Html exposing (Html)
import Html.Attributes
import Model exposing (Flags, Model)
import Msg exposing (Msg(..))


main : Program Flags Model Msg
main =
    Browser.document
        { init = init, subscriptions = subscriptions, update = update, view = view }


init : Flags -> ( Model, Cmd Msg )
init flags =
    ( Model.initial flags
    , Cmd.none
    )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg ({ count } as model) =
    case msg of
        Increment ->
            ( { model | count = count + 1 }
            , Cmd.none
            )

        Decrement ->
            ( { model | count = count - 1 }
            , Cmd.none
            )


view : Model -> Document Msg
view ({ rootId } as model) =
    { title = "title"
    , body =
        [ Html.main_ [ Html.Attributes.id rootId ]
            [ Html.img [ Html.Attributes.src "/logo.png", Html.Attributes.style "width" "300px" ]
                []
            , HelloWorld.view model
            ]
        ]
    }
