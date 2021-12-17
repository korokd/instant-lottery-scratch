module Main exposing (main)

import Browser exposing (Document)
import Html exposing (Html)
import Html.Attributes
import Model exposing (Flags, Model)
import Msg exposing (Msg(..))
import Ticket


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
update msg model =
    case msg of
        NoOp ->
            ( model
            , Cmd.none
            )


view : Model -> Document Msg
view ({ rootId } as model) =
    { title = "title"
    , body =
        [ Html.main_ [ Html.Attributes.id rootId ]
            [ Ticket.view model
            ]
        ]
    }
