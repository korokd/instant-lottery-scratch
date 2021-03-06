module Main exposing (main)

import Browser exposing (Document)
import Element exposing (Element)
import Element.Background
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
view model =
    { title = "Instant Lotto with elm-ui"
    , body =
        [ Element.layout
            [ Element.Background.color <| Element.rgba255 111 111 111 1
            ]
          <|
            Element.row
                [ Element.height Element.fill
                , Element.width Element.fill
                ]
                [ Element.el
                    [ Element.centerX
                    , Element.centerY
                    ]
                  <|
                    Ticket.view
                        model
                ]
        ]
    }
