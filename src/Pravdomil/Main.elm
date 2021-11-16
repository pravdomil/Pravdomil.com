module Pravdomil.Main exposing (..)

import Browser
import Browser.Navigation as Navigation
import Dict exposing (Dict)
import GitHub.Repository exposing (Repository)
import GitHub.Request as Request
import Http
import Json.Decode as Decode
import Pravdomil.Translation as Translation
import Pravdomil.Ui.Base exposing (..)
import Task
import Url exposing (Url)
import Utils.Json.Decode_ as Decode_


main : Program Decode.Value Model Msg
main =
    Browser.application
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        , onUrlRequest = UrlRequested
        , onUrlChange = UrlChanged
        }



--


type alias Model =
    { key : Navigation.Key
    , githubToken : Maybe String
    , repositories : Result Error (List Repository)
    }


type Error
    = Loading
    | HttpError Http.Error


init : Decode.Value -> Url -> Navigation.Key -> ( Model, Cmd Msg )
init flags _ key =
    let
        githubToken : Maybe String
        githubToken =
            flags
                |> Decode.decodeValue (Decode.field "githubToken" (Decode_.maybe Decode.string))
                |> Result.withDefault Nothing
    in
    ( { key = key
      , githubToken = githubToken
      , repositories = Err Loading
      }
    , Request.repositories githubToken
        |> Task.attempt GotRepositories
    )



--


type Msg
    = GotRepositories (Result Http.Error GitHub.Repository.Response)
    | UrlRequested Browser.UrlRequest
    | UrlChanged Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotRepositories a ->
            case a of
                Ok b ->
                    ( { model | repositories = Ok b.data.viewer.repositories.nodes }
                    , Cmd.none
                    )

                Err b ->
                    ( { model | repositories = Err (HttpError b) }
                    , Cmd.none
                    )

        UrlRequested b ->
            case b of
                Browser.Internal url ->
                    ( model
                    , Navigation.load (Url.toString url)
                    )

                Browser.External url ->
                    ( model
                    , Navigation.load url
                    )

        UrlChanged _ ->
            ( model
            , Cmd.none
            )



--


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none



--


view : Model -> Browser.Document msg
view model =
    { title = Translation.title
    , body =
        [ adaptiveScale
        , layout [] (viewBody model)
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
                , br
                , link []
                    { label = text (Translation.raw "Send a donation")
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
