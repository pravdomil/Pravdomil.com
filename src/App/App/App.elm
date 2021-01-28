module App.App.App exposing (..)

import App.App.Repository.Repository exposing (Repository)
import Browser exposing (UrlRequest)
import Http
import Url exposing (Url)


{-| To define things we keep.
-}
type alias Model =
    { touchInput : Bool
    , githubToken : Maybe String
    , repositories : Result Error (Result Http.Error (List Repository))
    }


{-| -}
type Error
    = Loading


{-| To define what can happen.
-}
type Msg
    = GotRepositories (Result Http.Error (List Repository))
    | UrlRequested UrlRequest
    | UrlChanged Url
