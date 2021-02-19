module App.App.App exposing (..)

import App.App.Repository.Repository as Repository exposing (Repository)
import Browser exposing (UrlRequest)
import Browser.Navigation as Navigation
import Http
import Url exposing (Url)


{-| To define things we keep.
-}
type alias Model =
    { navigationKey : Navigation.Key
    , githubToken : Maybe String
    , repositories : Result Error (Result Http.Error (List Repository))
    }


type Error
    = Loading


{-| To define what can happen.
-}
type Msg
    = GotRepositories (Result Http.Error Repository.Response)
    | UrlRequested UrlRequest
    | UrlChanged Url
