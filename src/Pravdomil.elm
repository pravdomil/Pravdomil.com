module Pravdomil exposing (..)

import Browser
import Browser.Navigation
import Dict
import GitHub.Repository
import GitHub.Request
import GitHub.Token
import Http
import Json.Decode
import Pravdomil.Model
import Pravdomil.Translation
import Pravdomil.Ui.Base
import Task
import Url


main : Program Json.Decode.Value Pravdomil.Model.Model Pravdomil.Model.Msg
main =
    Browser.application
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        , onUrlRequest = Pravdomil.Model.UrlRequested
        , onUrlChange = Pravdomil.Model.UrlChanged
        }



--


init : Json.Decode.Value -> Url.Url -> Browser.Navigation.Key -> ( Pravdomil.Model.Model, Cmd Pravdomil.Model.Msg )
init flags _ key =
    let
        token : Maybe GitHub.Token.Token
        token =
            flags
                |> Json.Decode.decodeValue
                    (Json.Decode.field "githubToken"
                        (Json.Decode.nullable
                            (Json.Decode.string
                                |> Json.Decode.map GitHub.Token.Token
                            )
                        )
                    )
                |> Result.withDefault Nothing
    in
    ( { key = key
      , token = token
      , repositories = Err Pravdomil.Model.Loading
      }
    , GitHub.Request.repositories token
        |> Task.attempt Pravdomil.Model.GotRepositories
    )



--


update : Pravdomil.Model.Msg -> Pravdomil.Model.Model -> ( Pravdomil.Model.Model, Cmd Pravdomil.Model.Msg )
update msg model =
    case msg of
        Pravdomil.Model.UrlRequested b ->
            case b of
                Browser.Internal url ->
                    ( model
                    , Browser.Navigation.load (Url.toString url)
                    )

                Browser.External url ->
                    ( model
                    , Browser.Navigation.load url
                    )

        Pravdomil.Model.UrlChanged _ ->
            ( model
            , Cmd.none
            )

        Pravdomil.Model.GotRepositories a ->
            ( case a of
                Ok b ->
                    { model | repositories = Ok b.data.viewer.repositories.nodes }

                Err b ->
                    { model | repositories = Err (Pravdomil.Model.HttpError b) }
            , Cmd.none
            )



--


subscriptions : Pravdomil.Model.Model -> Sub Pravdomil.Model.Msg
subscriptions _ =
    Sub.none



--


view : Pravdomil.Model.Model -> Browser.Document msg
view model =
    { title = Pravdomil.Translation.title
    , body =
        [ Pravdomil.Ui.Base.layout [] (viewBody model)
        ]
    }


viewBody : Model -> Element msg
viewBody model =
    column [ width (fill |> maximum 896), centerX, padding 8 ]
        [ column [ width fill, padding 8, borderWidth 1, borderRounded 4 ]
            [ column [ width (fill |> maximum 768), spacing 64, centerX ]
                [ text ""
                , viewHeader model
                , viewRepositories model
                , viewFooter model
                , text ""
                ]
            ]
        ]


viewHeader : Model -> Element msg
viewHeader _ =
    textColumn [ width fill, spacing 32, fontCenter ]
        [ column [ spacing 16 ]
            [ p []
                [ text (Translation.raw "Welcome to")
                ]
            , h1 []
                [ link []
                    { label = text (Translation.raw "Pravdomil's Webpage")
                    , url = "/"
                    }
                ]
            ]
        , column [ spacing 16 ]
            [ p [ centerX ]
                [ link []
                    { label = text (Translation.raw "Contact me")
                    , url = "mailto:info@pravdomil.com"
                    }
                , text "."
                ]
            , p []
                [ link []
                    { label = text (Translation.raw "Send me a donation")
                    , url = "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=pravdomil.com%20Donation"
                    }
                , text "."
                ]
            ]
        ]


viewFooter : Model -> Element msg
viewFooter _ =
    p [ fontCenter, fontSize 14 ]
        [ text (Translation.raw "That's all for now.")
        ]


viewRepositories : Model -> Element msg
viewRepositories model =
    let
        repositories : List Repository
        repositories =
            model.repositories
                |> Result.withDefault []
                |> (++) GitHub.Repository.external
                |> List.filter (\v -> List.any (\v2 -> v2.topic.name == "private") v.repositoryTopics.nodes |> not)

        categories : List ( String, List Repository )
        categories =
            repositories
                |> groupBy
                    (\v ->
                        v.repositoryTopics.nodes
                            |> List.head
                            |> Maybe.map (.topic >> .name)
                            |> Maybe.withDefault (Translation.raw "Projects")
                    )
                |> Dict.toList
                |> List.map (Tuple.mapSecond (List.sortBy .name))
                |> List.sortBy Tuple.first
    in
    column [ spacing 16 ]
        [ p [ fontCenter ]
            [ text (Translation.raw "Things I do:")
            ]
        , column [ spacing 32 ]
            (categories |> List.map viewCategory)
        ]


viewCategory : ( String, List Repository ) -> Element msg
viewCategory ( category, a ) =
    let
        humanize : String -> String
        humanize b =
            b |> String.split "-" |> List.map firstToUpper |> String.join " "
    in
    column [ spacing 32 ]
        [ h2 []
            [ text (humanize category)
            ]
        , wrappedRow [ spacing 16 ]
            (a |> List.map viewRepository)
        ]


viewRepository : Repository -> Element msg
viewRepository b =
    let
        link_ : Repository -> String
        link_ c =
            case c.homepageUrl of
                Just "https://pravdomil.com" ->
                    c.url ++ "#readme"

                Just "" ->
                    c.url ++ "#readme"

                Nothing ->
                    c.url ++ "#readme"

                Just d ->
                    d
    in
    link [ width (px 244), height fill ]
        { label =
            column [ width fill, height fill, spacing 6, paddingEach 0 0 0 24 ]
                [ h3 []
                    [ text (b.name |> String.replace "-" " ")
                    ]
                , el [ width fill, borderWidthEach 0 0 0 1 ] none
                , p []
                    [ text (b.description |> Maybe.withDefault "")
                    ]
                ]
        , url = link_ b
        }



--


firstToUpper : String -> String
firstToUpper a =
    a |> mapFirstChar Char.toUpper


mapFirstChar : (Char -> Char) -> String -> String
mapFirstChar fn a =
    case String.uncons a of
        Just ( first, rest ) ->
            String.cons (fn first) rest

        Nothing ->
            a


groupBy : (a -> comparable) -> List a -> Dict comparable (List a)
groupBy toKey a =
    let
        fold : a -> Dict comparable (List a) -> Dict comparable (List a)
        fold v acc =
            let
                key : comparable
                key =
                    v |> toKey

                value : List a
                value =
                    v :: (acc |> Dict.get key |> Maybe.withDefault [])
            in
            acc |> Dict.insert key value
    in
    a |> List.foldr fold Dict.empty
