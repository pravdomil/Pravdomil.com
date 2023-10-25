module Pravdomil.Model exposing (..)

import Browser.Navigation
import GitHub.Repository
import GitHub.Token
import Http


type alias Model =
    { key : Browser.Navigation.Key
    , token : Maybe GitHub.Token.Token
    , repositories : Result Error (List GitHub.Repository.Repository)
    }


type Error
    = Loading
    | HttpError Http.Error
