module Main exposing (..)

import App.App.App exposing (..)
import App.App.App_ exposing (..)
import Browser
import Json.Decode as Decode


{-| To create application.
-}
main : Program Decode.Value Model Msg
main =
    Browser.application
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        , onUrlRequest = UrlRequested
        , onUrlChange = UrlChanged
        }
