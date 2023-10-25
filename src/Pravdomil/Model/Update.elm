module Pravdomil.Model.Update exposing (..)

import Browser
import Browser.Navigation
import GitHub.Request
import GitHub.Token
import Json.Decode
import Platform.Extra
import Pravdomil.Model
import Pravdomil.Msg
import Task
import Url


init : Json.Decode.Value -> Url.Url -> Browser.Navigation.Key -> ( Pravdomil.Model.Model, Cmd Pravdomil.Msg.Msg )
init flags _ key =
    let
        token : Maybe GitHub.Token.Token
        token =
            Result.withDefault Nothing
                (Json.Decode.decodeValue
                    (Json.Decode.field "githubToken"
                        (Json.Decode.nullable
                            (Json.Decode.map GitHub.Token.Token Json.Decode.string)
                        )
                    )
                    flags
                )
    in
    ( Pravdomil.Model.Model
        key
        token
        (Err Pravdomil.Model.Loading)
    , Task.attempt
        Pravdomil.Msg.RepositoriesReceived
        (GitHub.Request.repositories token)
    )



--


update : Pravdomil.Msg.Msg -> Pravdomil.Model.Model -> ( Pravdomil.Model.Model, Cmd Pravdomil.Msg.Msg )
update msg =
    case msg of
        Pravdomil.Msg.UrlRequested b ->
            case b of
                Browser.Internal url ->
                    \model -> ( model, Browser.Navigation.load (Url.toString url) )

                Browser.External url ->
                    \model -> ( model, Browser.Navigation.load url )

        Pravdomil.Msg.UrlChanged _ ->
            Platform.Extra.noOperation

        Pravdomil.Msg.RepositoriesReceived a ->
            \model ->
                ( case a of
                    Ok b ->
                        { model | repositories = Ok b.data.viewer.repositories.nodes }

                    Err b ->
                        { model | repositories = Err (Pravdomil.Model.HttpError b) }
                , Cmd.none
                )



--


subscriptions : Pravdomil.Model.Model -> Sub Pravdomil.Msg.Msg
subscriptions _ =
    Sub.none
