module Utils.Resolver exposing (..)

import Http exposing (Error(..), Response(..))
import Json.Decode as Decode exposing (Decoder)


json : Decoder a -> Http.Resolver Http.Error a
json decoder =
    let
        toResult : Http.Response String -> Result Http.Error a
        toResult a =
            case a of
                BadUrl_ b ->
                    Err (BadUrl b)

                Timeout_ ->
                    Err Timeout

                NetworkError_ ->
                    Err NetworkError

                BadStatus_ b _ ->
                    Err (BadStatus b.statusCode)

                GoodStatus_ _ b ->
                    case b |> Decode.decodeString decoder of
                        Err c ->
                            Err (BadBody (Decode.errorToString c))

                        Ok c ->
                            Ok c
    in
    Http.stringResolver toResult
