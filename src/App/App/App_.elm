module App.App.App_ exposing (..)

import App.App.App exposing (..)
import App.App.Repository.Decode
import App.App.Repository.Repository as Repository exposing (Repository)
import Browser exposing (Document)
import Browser.Navigation as Navigation
import Dict exposing (Dict)
import Html exposing (..)
import Html.Attributes exposing (href)
import Http
import Json.Decode as Decode
import Json.Encode as Encode
import Styles.C as C
import Url exposing (Url)
import Utils.Json.Decode_ as Decode_
import View.Rem as Rem


{-| -}
init : Decode.Value -> Url -> Navigation.Key -> ( Model, Cmd Msg )
init flags _ _ =
    let
        touchInput : Bool
        touchInput =
            flags
                |> Decode.decodeValue (Decode.field "touchInput" Decode.bool)
                |> Result.withDefault False

        githubToken : Maybe String
        githubToken =
            flags
                |> Decode.decodeValue (Decode.field "githubToken" (Decode_.maybe Decode.string))
                |> Result.withDefault Nothing

        model : Model
        model =
            { touchInput = touchInput
            , githubToken = githubToken
            , repositories = Err Loading
            }
    in
    ( model
    , getRepositories model
    )


{-| -}
update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        GotRepositories b ->
            gotRepositories b model

        UrlRequested _ ->
            ( model, Cmd.none )

        UrlChanged _ ->
            ( model, Cmd.none )



--


{-| -}
getRepositories : Model -> Cmd Msg
getRepositories model =
    let
        headers : List Http.Header
        headers =
            model.githubToken
                |> Maybe.map (\v -> [ Http.header "Authorization" ("bearer " ++ v) ])
                |> Maybe.withDefault []

        body : Encode.Value
        body =
            Encode.object [ ( "query", Encode.string Repository.query ) ]
    in
    Http.request
        { method = "POST"
        , headers = headers
        , url = "https://api.github.com/graphql"
        , body = Http.jsonBody body
        , expect = Http.expectJson GotRepositories (Decode.list App.App.Repository.Decode.repository)
        , timeout = Nothing
        , tracker = Nothing
        }


{-| -}
gotRepositories : Result Http.Error (List Repository) -> Model -> ( Model, Cmd msg )
gotRepositories a model =
    ( { model | repositories = Ok a }
    , Cmd.none
    )



--


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
                [ div [ C.mb5 ] []
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
        repositories : List Repository
        repositories =
            model.repositories
                |> Result.toMaybe
                |> Maybe.map Result.toMaybe
                |> Maybe.andThen identity
                |> Maybe.withDefault []
                |> (++) Repository.additional
                |> List.filter (\v -> (v.isArchived |> not) && (v.name /= "Pravdomil.com"))

        categories : List ( String, List Repository )
        categories =
            repositories
                |> groupBy
                    (\v ->
                        v.repositoryTopics.nodes
                            |> List.head
                            |> Maybe.map (.topic >> .name)
                            |> Maybe.withDefault "uncategorized"
                    )
                |> Dict.toList
                |> List.map (Tuple.mapSecond (List.sortBy (.stargazers >> .totalCount >> negate)))
                |> List.sortBy (Tuple.second >> (List.map (.stargazers >> .totalCount >> negate) >> List.foldr (+) 0))
    in
    div []
        [ p [ C.mb5, C.textCenter ] [ text "And here are my projects:" ]
        , div [ C.row ] (categories |> List.map viewCategory)
        ]


{-| -}
viewCategory : ( String, List Repository ) -> Html msg
viewCategory ( category, a ) =
    let
        humanize : String -> String
        humanize b =
            b |> String.split "-" |> List.map firstToUpper |> String.join " "
    in
    div [ C.col12, C.mb5 ]
        [ h2 [ C.mb3 ] [ text (humanize category) ]
        , div [ C.row ] (a |> List.map viewRepository)
        ]


{-| -}
viewRepository : Repository -> Html msg
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
            [ h5 [ C.borderBottom, C.mb0 ] [ text (b.name |> String.replace "-" " ") ]
            , text (b.description |> Maybe.withDefault "")
            ]
        ]



--


{-| -}
firstToUpper : String -> String
firstToUpper a =
    a |> mapFirstLetter String.toUpper


{-| -}
mapFirstLetter : (String -> String) -> String -> String
mapFirstLetter fn a =
    (a |> String.left 1 |> fn) ++ (a |> String.dropLeft 1)


{-| -}
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
