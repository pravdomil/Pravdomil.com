module Pravdomil.Msg exposing (..)

import Browser
import GitHub.Repository
import Http
import Url


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
      --
    | RepositoriesReceived (Result Http.Error GitHub.Repository.Response)
