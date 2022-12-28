module Main exposing
    ( Model
    , Msg(..)
    , init
    , initialModel
    ,  main
       -- , onUrlChange
       -- , onUrlRequest

    , update
    , view
    )

import Browser exposing (Document)
import Browser.Navigation exposing (Key)
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


main : Program Flags Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions

        -- , onUrlRequest = onUrlRequest
        -- , onUrlChange = onUrlChange
        }


type alias Flags =
    {}


type alias Model =
    { counter : Int
    }


initialModel : Model
initialModel =
    { counter = 0
    }


init :
    Flags
    -- -> Url
    -- -> Key
    -> ( Model, Cmd msg )
init flags =
    {- url key -}
    ( initialModel
    , Cmd.none
    )



-- onUrlRequest : UrlRequest -> msg
-- onUrlRequest urlRequest =
--     None
-- onUrlChange : Url -> msg
-- onUrlChange url =
--     None


type Msg
    = None
    | Increment
    | Decrement


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        None ->
            ( model, Cmd.none )

        Increment ->
            ( { model | counter = model.counter + 1 }
            , Cmd.none
            )

        Decrement ->
            ( { model | counter = model.counter - 1 }
            , Cmd.none
            )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


view : Model -> Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model.counter) ]
        , button [ onClick Increment ] [ text "+" ]
        ]
