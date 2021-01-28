module App.App.App_ exposing (..)

import App.App.App exposing (..)
import App.App.Repository.Repository exposing (Repository)
import Browser exposing (Document)
import Browser.Navigation as Navigation
import Dict exposing (Dict)
import Html exposing (..)
import Html.Attributes exposing (href)
import Json.Decode as Decode
import Styles.C as C
import Url exposing (Url)
import View.Rem as Rem


{-| -}
init : Decode.Value -> Url -> Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ =
    ( { touchInput = True
      , repositories = Err Loading
      }
    , Cmd.none
    )


{-| -}
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotRepositories b ->
            ( { model | repositories = Ok b }
            , Cmd.none
            )

        UrlRequested _ ->
            ( model, Cmd.none )

        UrlChanged _ ->
            ( model, Cmd.none )


{-| -}
subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none


{-| -}
view : Model -> Document msg
view model =
    { title = "Pravdomil.com"
    , body =
        [ Rem.adjust model.touchInput
        , viewBody model
        ]
    }


{-| -}
viewBody : Model -> Html msg
viewBody model =
    div [ C.p2 ]
        [ div [ C.border, C.mAuto, C.rounded, C.maxWidth 54 ]
            [ div [ C.containerFluid, C.maxWidth 43 ]
                [ div [ C.mb4 ] []
                , viewHeader model
                , viewRepositories model
                , viewFooter model
                ]
            ]
        ]


{-| -}
viewHeader : Model -> Html msg
viewHeader _ =
    div [ C.textCenter ]
        [ p [ C.mb4 ] [ text "Welcome to" ]
        , h2 [ C.mb5 ] [ a [ href "/" ] [ text "Pravdomil's Webpage" ] ]
        , p [ C.mb5 ]
            [ text "You can also find me at:"
            , br [] []
            , span [ C.dInlineBlock ]
                [ a [ C.btn, C.btnLink, href "mailto:info@pravdomil.com" ]
                    [ i [ C.fa, C.faEnvelope ] []
                    ]
                , a [ C.btn, C.btnLink, href "https://twitter.com/pravdomil" ]
                    [ i [ C.fa, C.faTwitter ] []
                    ]
                , a [ C.btn, C.btnLink, href "https://github.com/pravdomil" ]
                    [ i [ C.fa, C.faGithub ] []
                    ]
                , a [ C.btn, C.btnLink, href "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=pravdomil.com%20Beer" ]
                    [ i [ C.fa, C.faPaypal ] []
                    ]
                ]
            , span [ C.dInlineBlock ]
                [ a [ C.btn, C.btnLink, href "https://stackoverflow.com/users/3748498/pravdomil" ]
                    [ i [ C.fa, C.faStackOverflow ] []
                    ]
                , a [ C.btn, C.btnLink, href "https://youtube.com/pravdomil" ]
                    [ i [ C.fa, C.faYoutubePlay ] []
                    ]
                , a [ C.btn, C.btnLink, href "https://vimeo.com/pravdomil" ]
                    [ i [ C.fa, C.faVimeo ] []
                    ]
                ]
            ]
        ]


{-| -}
viewFooter : Model -> Html msg
viewFooter _ =
    p [ C.textCenter, C.small ]
        [ text "Made with help of "
        , a [ href "https://elm-lang.org" ] [ text "Elm Programming Language" ]
        , text ", "
        , a [ href "https://github.com" ] [ text "GitHub" ]
        , text " and "
        , a [ href "https://cloudflare.com" ] [ text "CloudFlare" ]
        , text ". "
        , a [ href "https://github.com/pravdomil/pravdomil.com" ] [ text "Site source code" ]
        , text "."
        ]


{-| -}
viewRepositories : Model -> Html msg
viewRepositories model =
    let
        allRepos : List Repository
        allRepos =
            model.repositories |> List.filter (\v -> not v.isArchived && v.name /= "Pravdomil.com")

        reposByTopic : Dict TopicName (List Repository)
        reposByTopic =
            groupBy (\v -> Maybe.withDefault "uncategorized" <| Maybe.map (\topic -> topic.topic.name) <| List.head v.repositoryTopics.nodes) allRepos

        reposByTopicSorted : List ( TopicName, List Repository )
        reposByTopicSorted =
            reposByTopic
                |> Dict.toList
                |> List.map (\( k, v ) -> ( k, v |> List.sortBy (\vv -> vv.stargazers.totalCount) |> List.reverse ))
                |> List.sortBy (\( _, v ) -> v |> List.map (\vv -> vv.stargazers.totalCount) |> List.foldr (+) 0)
                |> List.reverse

        viewTopic : ( TopicName, List Repository ) -> Html msg
        viewTopic ( topic, repos ) =
            div [ C.col12, C.mb5 ]
                [ h2 [ C.mb3 ] [ text (normalizeTopicName topic) ]
                , div [ C.row ] (List.map viewRepo repos)
                ]

        getRepoLink : Repository -> String
        getRepoLink a =
            case a.homepageUrl of
                Just "https://pravdomil.com" ->
                    a.url ++ "#readme"

                Just "" ->
                    a.url ++ "#readme"

                Nothing ->
                    a.url ++ "#readme"

                Just url ->
                    url

        viewRepo : Repository -> Html msg
        viewRepo repo =
            div [ C.col12, C.colMd4, C.mb3 ]
                [ a [ C.dBlock, href (getRepoLink repo) ]
                    [ h5 [ C.borderBottom, C.mb0 ] [ text (normalizeRepoName repo.name) ]
                    , text (Maybe.withDefault "" repo.description)
                    ]
                ]
    in
    div []
        [ p [ C.mb5, C.textCenter ] [ text "And here are my projects:" ]
        , div [ C.row ] (List.map viewTopic reposByTopicSorted)
        ]


{-| -}
type alias TopicName =
    String


{-| -}
normalizeTopicName : String -> String
normalizeTopicName a =
    a |> String.split "-" |> List.map firstToUpper |> String.join " "


{-| -}
normalizeRepoName : String -> String
normalizeRepoName a =
    a |> String.replace "-" " "


{-| -}
firstToUpper : String -> String
firstToUpper a =
    case String.toList a of
        x :: xs ->
            String.fromList (Char.toUpper x :: xs)

        _ ->
            a


{-| -}
groupBy : (a -> comparable) -> List a -> Dict comparable (List a)
groupBy toGroupName a =
    let
        fold v acc =
            let
                name =
                    toGroupName v
            in
            Dict.insert name (v :: (Maybe.withDefault [] <| Dict.get name acc)) acc
    in
    List.foldr fold Dict.empty a
