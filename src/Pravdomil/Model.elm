module Pravdomil.Model exposing (..)

import Browser
import Browser.Navigation
import GitHub.Repository
import GitHub.Token
import Http
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , token : Maybe GitHub.Token.Token
    , repositories : Result Error (List GitHub.Repository.Repository)
    }


type Error
    = Loading
    | HttpError Http.Error



--


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | GotRepositories (Result Http.Error GitHub.Repository.Response)
