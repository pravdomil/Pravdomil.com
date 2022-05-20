module Pravdomil.View exposing (..)

import Browser
import Dict
import Element.PravdomilUi exposing (..)
import GitHub.Repository
import Pravdomil.Model
import Pravdomil.Repository
import Pravdomil.Translation
import Pravdomil.UserInterface exposing (..)


view : Pravdomil.Model.Model -> Browser.Document msg
view model =
    { title = Pravdomil.Translation.title
    , body =
        [ layout theme [] (viewBody model)
        ]
    }


viewBody : Pravdomil.Model.Model -> Element msg
viewBody model =
    column [ width (fill |> maximum 896), centerX, padding 8 ]
        [ column [ width fill, padding 8, borderWidth 1, borderColor style.primary, borderRounded 4 ]
            [ column [ width (fill |> maximum 768), spacing 64, centerX ]
                [ text ""
                , viewHeader model
                , viewRepositories model
                , viewFooter model
                , text ""
                ]
            ]
        ]


viewHeader : Pravdomil.Model.Model -> Element msg
viewHeader _ =
    textColumn theme
        [ width fill, spacing 32, fontCenter ]
        [ column [ spacing 16 ]
            [ paragraph theme
                []
                [ text (Pravdomil.Translation.raw "Welcome to")
                ]
            , heading1 theme
                []
                [ text (Pravdomil.Translation.raw "Pravdomil's Webpage")
                ]
            ]
        , column [ spacing 16 ]
            [ paragraph theme
                [ centerX ]
                [ link theme
                    []
                    { label = text (Pravdomil.Translation.raw "Contact me")
                    , url = "mailto:info@pravdomil.com"
                    }
                , text "."
                ]
            , paragraph theme
                []
                [ link theme
                    []
                    { label = text (Pravdomil.Translation.raw "Send me a donation")
                    , url = "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=pravdomil.com%20Donation"
                    }
                , text "."
                ]
            ]
        ]


viewFooter : Pravdomil.Model.Model -> Element msg
viewFooter _ =
    paragraph theme
        [ fontCenter, fontSize 14 ]
        [ text (Pravdomil.Translation.raw "That's all for now.")
        ]


viewRepositories : Pravdomil.Model.Model -> Element msg
viewRepositories model =
    let
        repositories : List GitHub.Repository.Repository
        repositories =
            model.repositories
                |> Result.withDefault []
                |> (++) Pravdomil.Repository.external
                |> List.filter (\v -> List.any (\v2 -> v2.topic.name == "private") v.repositoryTopics.nodes |> not)

        categories : List ( String, List GitHub.Repository.Repository )
        categories =
            repositories
                |> groupBy
                    (\v ->
                        v.repositoryTopics.nodes
                            |> List.head
                            |> Maybe.map (.topic >> .name)
                            |> Maybe.withDefault (Pravdomil.Translation.raw "Projects")
                    )
                |> Dict.toList
                |> List.map (Tuple.mapSecond (List.sortBy .name))
                |> List.sortBy Tuple.first
    in
    column [ spacing 16 ]
        [ paragraph theme
            [ fontCenter ]
            [ text (Pravdomil.Translation.raw "Things I do:")
            ]
        , column [ spacing 32 ]
            (categories |> List.map viewCategory)
        ]


viewCategory : ( String, List GitHub.Repository.Repository ) -> Element msg
viewCategory ( category, a ) =
    let
        humanize : String -> String
        humanize b =
            b |> String.split "-" |> List.map firstToUpper |> String.join " "
    in
    column [ spacing 32 ]
        [ heading2 theme
            []
            [ text (humanize category)
            ]
        , wrappedRow [ spacing 16 ]
            (a |> List.map viewRepository)
        ]


viewRepository : GitHub.Repository.Repository -> Element msg
viewRepository b =
    let
        link_ : GitHub.Repository.Repository -> String
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
    link theme
        [ width (px 244), height fill ]
        { label =
            column [ width fill, height fill, spacing 6, paddingEach 0 0 0 24 ]
                [ heading3 theme
                    []
                    [ text (b.name |> String.replace "-" " ")
                    ]
                , el [ width fill, borderWidthEach 0 0 0 1 ] none
                , paragraph theme
                    []
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


groupBy : (a -> comparable) -> List a -> Dict.Dict comparable (List a)
groupBy toKey a =
    let
        fold : a -> Dict.Dict comparable (List a) -> Dict.Dict comparable (List a)
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
