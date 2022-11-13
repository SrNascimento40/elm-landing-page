module Main exposing (..)

import Browser
import Html exposing (..)
import Html.Attributes exposing (src)
import Html.Attributes exposing (id)
import Html.Attributes exposing (class)
import Html.Attributes exposing (alt)
import Html.Attributes exposing (href)


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


view : Model -> Html Msg
view model =
    div []
        [ header []
            [ img [ id "logo", src "/cbf.png", alt "logo da seleção"] []
            , nav [ id "navLinks" ] 
                [ a [class "links", href "#"] [ text "Noticias" ]
                , a [class "links", href "#"] [ text "Jogadores" ]
                , a [class "links", href "#"] [ text "Calendário" ]
            ], a [id "button"] [ span [] [], span [] [], span [] [], span [] [], text "Loja" ] 
            ]
        , div [ id "mainDiv" ]
            [ div [ id "mainText" ] 
                [ pre [ id "titulo" ] [ text "Seleção ", span [ class "brazilColorDeg" ] [ text "Brasileira" ], text "\nVamos ser hexa!" ]
                , pre [ id "informativo" ] [ text "2022 é ano de copa e o Brasil vai se unir\nem busca da sexta taça!\n" ]]
            , img [ id "mainImg", src "/craques.png", alt "imagem da seleção com os jogadores Neymar, Marquinhos e Gabriel Jesus" ][]
            ]
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
