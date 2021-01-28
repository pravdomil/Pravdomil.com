module App.App.App exposing (..)

import App.App.Repository.Repository exposing (Repository)
import Browser exposing (UrlRequest)
import Http
import Url exposing (Url)


{-| To define things we keep.
-}
type alias Model =
    { repositories : Result Http.Error (List Repository)
    }


{-| To define what can happen.
-}
type Msg
    = GotRepositories (Result Http.Error (List Repository))
    | UrlRequested UrlRequest
    | UrlChanged Url
