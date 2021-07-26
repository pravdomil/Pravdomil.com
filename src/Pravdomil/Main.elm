module Pravdomil.Main exposing (..)

import Browser
import Browser.Navigation as Navigation
import Dict exposing (Dict)
import GitHub.Repository exposing (Repository)
import GitHub.Request as Request
import Http
import Ionicon
import Ionicon.Social
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
    { navigationKey : Navigation.Key
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

        model : Model
        model =
            { navigationKey = key
            , githubToken = githubToken
            , repositories = Err Loading
            }
    in
    ( model
    , Request.repositories model.githubToken |> Task.attempt GotRepositories
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

        UrlRequested _ ->
            ( model
            , Cmd.none
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
            [ column [ width (fill |> maximum 768), spacing 32, centerX ]
                [ text ""
                , viewHeader model
                , viewFooter model
                , text ""
                ]
            ]
        ]


viewHeader : Model -> Element msg
viewHeader _ =
    textColumn [ width fill, spacing 32, fontCenter ]
        [ p []
            [ text (Translation.raw "Welcome to")
            ]
        , h1 []
            [ link []
                { label = text (Translation.raw "Pravdomil's Webpage")
                , url = "/"
                }
            ]
        , column [ spacing 16 ]
            [ p []
                [ text (Translation.raw "You can also find me at:")
                ]
            , row [ spacing 16, centerX ]
                [ link []
                    { label = html (Ionicon.email 24 (toRgb primary))
                    , url = "mailto:info@pravdomil.com"
                    }
                , link []
                    { label = html (Ionicon.Social.twitter 24 (toRgb primary))
                    , url = "https://twitter.com/pravdomil"
                    }
                , link []
                    { label = html (Ionicon.Social.github 24 (toRgb primary))
                    , url = "https://github.com/pravdomil"
                    }
                , link []
                    { label = html (Ionicon.Social.usd 24 (toRgb primary))
                    , url = "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=pravdomil.com%20Beer"
                    }
                , link []
                    { label = html (Ionicon.Social.youtube 24 (toRgb primary))
                    , url = "https://youtube.com/pravdomil"
                    }
                , link []
                    { label = html (Ionicon.Social.vimeo 24 (toRgb primary))
                    , url = "https://vimeo.com/pravdomil"
                    }
                ]
            ]
        ]


viewFooter : Model -> Element msg
viewFooter _ =
    p [ C.textCenter, C.small ]
        [ text (Translation.raw "That's all for now.")
        ]


viewRepositories : Model -> Element msg
viewRepositories model =
    let
        repositories : List Repository
        repositories =
            model.repositories
                |> Result.withDefault []
                |> List.filter (\v -> v.name /= t A_Title)
                |> (++) GitHub.Repository.external

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
    div []
        [ p [ C.mb5, C.textCenter ]
            [ text (Translation.raw "And here are my projects:")
            ]
        , div [ C.row ]
            (categories |> List.map viewCategory)
        , div [ C.mb5 ]
            [ h2 [ C.mb3 ]
                [ text (Translation.raw "Živnost")
                ]
            , p []
                [ text "Vývoj webových aplikací. "
                , text "Pravdomil Toman, "
                , a [ href "https://www.rzp.cz/cgi-bin/aps_cacheWEB.sh?VSS_SERV=ZVWSBJFND&Action=Search&PODLE=subjekt&ICO=01625977" ]
                    [ u []
                        [ text "IČ: 01625977"
                        ]
                    ]
                , text "."
                ]
            ]
        ]


viewCategory : ( String, List Repository ) -> Element msg
viewCategory ( category, a ) =
    let
        humanize : String -> String
        humanize b =
            b |> String.split "-" |> List.map firstToUpper |> String.join " "
    in
    div [ C.col12, C.mb5 ]
        [ h2 [ C.mb3 ]
            [ text (humanize category)
            ]
        , div [ C.row ]
            (a |> List.map viewRepository)
        ]


viewRepository : Repository -> Element msg
viewRepository b =
    let
        link : Repository -> String
        link c =
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
    div [ C.col12, C.colMd4, C.mb3 ]
        [ a [ C.dBlock, href (link b) ]
            [ h5 [ C.borderBottom, C.mb0 ]
                [ text (b.name |> String.replace "-" " ")
                ]
            , text (b.description |> Maybe.withDefault "")
            ]
        ]



--


firstToUpper : String -> String
firstToUpper a =
    a |> mapFirstLetter String.toUpper


mapFirstLetter : (String -> String) -> String -> String
mapFirstLetter fn a =
    (a |> String.left 1 |> fn) ++ (a |> String.dropLeft 1)


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
