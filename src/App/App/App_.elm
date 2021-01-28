module Page exposing (..)

import App.App.App exposing (..)
import Browser exposing (Document)
import Dict exposing (Dict)
import Html exposing (..)
import Html.Attributes exposing (attribute, class, href, name, rel, style)
import Json.Decode as Decode exposing (Decoder)


{-| -}
init : ( Model, Cmd Msg )
init =
    ( { repositories = Err Loading
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
view : Decode.Value -> Document msg
view value =
    let
        page =
            value |> Decode.decodeValue pageDecoder |> Result.toMaybe
    in
    { title = ""
    , body =
        [ node "html" [] [ viewHead page, viewBody page ] ]
    }


{-| -}
viewHead : Maybe Page -> Html msg
viewHead _ =
    node "head"
        []
        [ node "meta" [ attribute "charset" "utf-8" ] []
        , node "meta" [ name "viewport", attribute "content" "width=device-width" ] []
        , node "link" [ rel "stylesheet", href "style.css" ] []
        , node "title" [] [ text "Pravdomil.com" ]
        , node "citatsmle-script" [] [ text "if(!('ontouchstart' in window))document.documentElement.style.fontSize='14px'" ]
        ]


{-| -}
viewBody : Maybe Page -> Html msg
viewBody page =
    node "body"
        []
        [ div [ class "p-2" ]
            [ div [ class "border m-auto rounded", style "max-width" "870px" ]
                [ div [ class "container-fluid my-3", style "max-width" "690px" ]
                    [ div [ class "row" ] [ div [ class "col-12" ] [ viewHeader page ] ]
                    , div [ class "row" ] [ div [ class "col-12" ] [ maybeViewRepos page ] ]
                    , div [ class "row" ] [ div [ class "col-12" ] [ viewFooter page ] ]
                    ]
                ]
            ]
        ]


{-| -}
viewHeader : Maybe Page -> Html msg
viewHeader _ =
    div [ class "text-center" ]
        [ p [ class "mb-4" ] []
        , p [ class "mb-4" ] [ text "Welcome to" ]
        , h2 [ class "mb-5" ] [ a [ href "/" ] [ text "Pravdomil's Webpage" ] ]
        , p [ class "mb-5" ]
            [ text "You can also find me at:"
            , br [] []
            , span [ class "d-inline-block" ]
                [ a [ class "btn btn-link", href "mailto:info@pravdomil.com" ]
                    [ i [ class "fa fa-envelope" ] []
                    ]
                , a [ class "btn btn-link", href "https://twitter.com/pravdomil" ]
                    [ i [ class "fa fa-twitter" ] []
                    ]
                , a [ class "btn btn-link", href "https://github.com/pravdomil" ]
                    [ i [ class "fa fa-github" ] []
                    ]
                , a [ class "btn btn-link", href "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=pravdomil.com%20Beer" ]
                    [ i [ class "fa fa-paypal" ] []
                    ]
                ]
            , span [ class "d-inline-block" ]
                [ a [ class "btn btn-link", href "https://stackoverflow.com/users/3748498/pravdomil" ]
                    [ i [ class "fa fa-stack-overflow" ] []
                    ]
                , a [ class "btn btn-link", href "https://youtube.com/pravdomil" ]
                    [ i [ class "fa fa-youtube-play" ] []
                    ]
                , a [ class "btn btn-link", href "https://vimeo.com/pravdomil" ]
                    [ i [ class "fa fa-vimeo" ] []
                    ]
                ]
            ]
        ]


{-| -}
viewFooter : Maybe Page -> Html msg
viewFooter _ =
    p [ class "text-center small mt-2" ]
        [ text "Made with help of "
        , a [ href "https://github.com/alexkorban/elmstatic" ] [ text "Elmstatic" ]
        , text ", "
        , a [ href "https://github.com" ] [ text "GitHub" ]
        , text " and "
        , a [ href "https://cloudflare.com" ] [ text "CloudFlare" ]
        , text ". "
        , a [ href "https://github.com/pravdomil/pravdomil.com" ] [ text "Site source code" ]
        , text "."
        ]


{-| -}
maybeViewRepos : Maybe Page -> Html msg
maybeViewRepos page =
    case page of
        Just a ->
            viewRepos a

        Nothing ->
            text ""


{-| -}
viewRepos : Page -> Html msg
viewRepos page =
    let
        allRepos : List Repo
        allRepos =
            page.repos |> List.filter (\v -> not v.isArchived && v.name /= "Pravdomil.com")

        reposByTopic : Dict TopicName (List Repo)
        reposByTopic =
            groupBy (\v -> Maybe.withDefault "uncategorized" <| Maybe.map (\topic -> topic.topic.name) <| List.head v.repositoryTopics.nodes) allRepos

        reposByTopicSorted : List ( TopicName, List Repo )
        reposByTopicSorted =
            reposByTopic
                |> Dict.toList
                |> List.map (\( k, v ) -> ( k, v |> List.sortBy (\vv -> vv.stargazers.totalCount) |> List.reverse ))
                |> List.sortBy (\( _, v ) -> v |> List.map (\vv -> vv.stargazers.totalCount) |> List.foldr (+) 0)
                |> List.reverse

        viewTopic : ( TopicName, List Repo ) -> Html msg
        viewTopic ( topic, repos ) =
            div [ class "col-12 mb-5" ]
                [ h2 [ class "mb-3" ] [ text (normalizeTopicName topic) ]
                , div [ class "row" ] (List.map viewRepo repos)
                ]

        getRepoLink : Repo -> String
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

        viewRepo : Repo -> Html msg
        viewRepo repo =
            div [ class "col-12 col-md-4 mb-3" ]
                [ a [ class "d-block", href (getRepoLink repo) ]
                    [ h5 [ class "border-bottom mb-0" ] [ text (normalizeRepoName repo.name) ]
                    , text (Maybe.withDefault "" repo.description)
                    ]
                ]
    in
    div []
        [ p [ class "mb-5 text-center" ] [ text "And here are my projects:" ]
        , div [ class "row" ] (List.map viewTopic reposByTopicSorted)
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
