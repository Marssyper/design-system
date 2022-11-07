module Main exposing (..)

import Browser
import Css exposing (..)
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src, class)
import Html.Styled
import DesignSystem


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----

-- elm-app install rtfeldman/elm-css

view : Model -> Html Msg
view model =
    div []
        [
          DesignSystem.header
           |> Html.Styled.toUnstyled,
          DesignSystem.sidebar
            |> Html.Styled.toUnstyled
        ]


---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }

