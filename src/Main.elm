module Main exposing (..)

import Browser
import Css exposing (..)
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src, class)
import Html.Styled.Attributes exposing (css)
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
view model = layout

  {- 
    div []
        [
          DesignSystem.header
            |> Html.Styled.toUnstyled
         , DesignSystem.headerSecond
            |> Html.Styled.toUnstyled
         , DesignSystem.section
            |> Html.Styled.toUnstyled
         , DesignSystem.sidebar
            |> Html.Styled.toUnstyled
        ]-}

gridLayout =
    css [
        property "display" "grid"
      , property "grid-template-columns" "min-content 1fr"
      , width (Css.vw 100)
      , height (Css.vh 100) -- Css.vh
    ]

layout =
    Html.Styled.div [gridLayout] [
           DesignSystem.sidebar
         , Html.Styled.div [] [
         DesignSystem.header
         , DesignSystem.headerSecond
         , DesignSystem.section   
        ]
        
    ]
    |> Html.Styled.toUnstyled
layout_ =
    Html.Styled.div [css [displayFlex, width (pct 100)]] [
           DesignSystem.sidebar
         , Html.Styled.div [] [
           DesignSystem.header
         , DesignSystem.headerSecond
         , DesignSystem.section
            
        ]
        
    ]
    |> Html.Styled.toUnstyled

-- logo | nav
-- ---- | ------------
-- side | content

---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }

