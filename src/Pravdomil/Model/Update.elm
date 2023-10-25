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
        Pravdomil.Msg.UrlRequested a ->
            case a of
                Browser.Internal b ->
                    \x -> ( x, Browser.Navigation.load (Url.toString b) )

                Browser.External b ->
                    \x -> ( x, Browser.Navigation.load b )

        Pravdomil.Msg.UrlChanged _ ->
            Platform.Extra.noOperation

        Pravdomil.Msg.RepositoriesReceived a ->
            \x ->
                ( case a of
                    Ok b ->
                        { x | repositories = Ok b.data.viewer.repositories.nodes }

                    Err b ->
                        { x | repositories = Err (Pravdomil.Model.HttpError b) }
                , Cmd.none
                )



--


subscriptions : Pravdomil.Model.Model -> Sub Pravdomil.Msg.Msg
subscriptions _ =
    Sub.none
