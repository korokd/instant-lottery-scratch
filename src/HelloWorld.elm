module HelloWorld exposing (view)

import Html exposing (Html)
import Html.Attributes
import Html.Events
import Msg exposing (Msg(..))


view : Int -> Html Msg
view model =
    Html.div []
        [ Html.h1 []
            [ Html.text "Hello, Vite + Elm!" ]
        , Html.p []
            [ Html.a [ Html.Attributes.href "https://vitejs.dev/guide/features.html" ]
                [ Html.text "Vite Documentation" ]
            , Html.text " | "
            , Html.a [ Html.Attributes.href "https://guide.elm-lang.org/" ]
                [ Html.text "Elm Documentation" ]
            ]
        , Html.button [ Html.Events.onClick Increment ]
            [ Html.text ("count is: " ++ String.fromInt model) ]
        , Html.p []
            [ Html.text "Edit "
            , Html.code [] [ Html.text "src/Main.elm" ]
            , Html.text " to test auto refresh"
            ]
        ]
