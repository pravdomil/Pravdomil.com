module Pravdomil.Main exposing (..)

import Browser
import Json.Decode
import Pravdomil.Model
import Pravdomil.Model.Update
import Pravdomil.Msg
import Pravdomil.View


main : Program Json.Decode.Value Pravdomil.Model.Model Pravdomil.Msg.Msg
main =
    Browser.application
        { init = Pravdomil.Model.Update.init
        , update = Pravdomil.Model.Update.update
        , subscriptions = Pravdomil.Model.Update.subscriptions
        , view = Pravdomil.View.view
        , onUrlRequest = Pravdomil.Msg.UrlRequested
        , onUrlChange = Pravdomil.Msg.UrlChanged
        }
