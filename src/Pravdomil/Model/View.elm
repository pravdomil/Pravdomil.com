module Pravdomil.Model.View exposing (..)

import Browser
import Dict
import Element exposing (..)
import GitHub.Repository
import Pravdomil.Model
import Pravdomil.Utils.Repository
import Pravdomil.Utils.Theme exposing (..)


view : Pravdomil.Model.Model -> Browser.Document msg
view model =
    { title = "Pravdomil.com"
    , body =
        [ layout [] (viewBody model)
        ]
    }


viewBody : Pravdomil.Model.Model -> Element msg
viewBody model =
    column [ width (fill |> maximum 896), centerX, padding 8 ]
        [ column [ width fill, padding 8, borderWidth 1, borderColor style.primaryBack, borderRounded 4 ]
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
    textColumn
        [ width fill, spacing 32, fontCenter ]
        [ column [ spacing 16 ]
            [ paragraph
                []
                [ text "Welcome to"
                ]
            , heading1
                []
                [ text "Pravdomil's Webpage"
                ]
            ]
        , column [ spacing 16 ]
            [ paragraph
                [ centerX ]
                [ link
                    []
                    { label = text "Contact me"
                    , active = False
                    , url = "mailto:info@pravdomil.com"
                    }
                , text "."
                ]
            , paragraph
                []
                [ link
                    []
                    { label = text "Send me a donation"
                    , active = False
                    , url = "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=pravdomil.com%20Donation"
                    }
                , text "."
                ]
            ]
        ]


viewFooter : Pravdomil.Model.Model -> Element msg
viewFooter _ =
    paragraph
        [ fontCenter, fontSize 14 ]
        [ text "That's all for now."
        ]


viewRepositories : Pravdomil.Model.Model -> Element msg
viewRepositories model =
    let
        repositories : List GitHub.Repository.Repository
        repositories =
            model.repositories
                |> Result.withDefault []
                |> (++) Pravdomil.Utils.Repository.external
                |> List.filter (\x -> not (List.any (\x2 -> x2.topic.name == "private") x.repositoryTopics.nodes))

        categories : List ( String, List GitHub.Repository.Repository )
        categories =
            repositories
                |> groupBy
                    (\x ->
                        x.repositoryTopics.nodes
                            |> List.head
                            |> Maybe.map (.topic >> .name)
                            |> Maybe.withDefault "Projects"
                    )
                |> Dict.toList
                |> List.map (Tuple.mapSecond (List.sortBy .name))
                |> List.sortBy Tuple.first
    in
    column [ spacing 16 ]
        [ paragraph
            [ fontCenter ]
            [ text "Things I do:"
            ]
        , column [ spacing 32 ]
            (List.map viewCategory categories)
        ]


viewCategory : ( String, List GitHub.Repository.Repository ) -> Element msg
viewCategory ( category, a ) =
    let
        humanize : String -> String
        humanize b =
            String.join " " (List.map firstToUpper (String.split "-" b))
    in
    column [ spacing 32 ]
        [ heading2
            []
            [ text (humanize category)
            ]
        , wrappedRow [ spacing 16 ]
            (List.map viewRepository a)
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
    link
        [ width (px 244), height fill ]
        { label =
            column [ width fill, height fill, spacing 6, paddingEach 0 0 0 24 ]
                [ heading3
                    []
                    [ text (String.replace "-" " " b.name)
                    ]
                , el [ width fill, borderWidthEach 0 0 0 1 ] none
                , paragraph
                    []
                    [ text (Maybe.withDefault "" b.description)
                    ]
                ]
        , active = False
        , url = link_ b
        }



--


firstToUpper : String -> String
firstToUpper a =
    mapFirstChar Char.toUpper a


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
        fold b acc =
            let
                key : comparable
                key =
                    toKey b

                value : List a
                value =
                    b :: Maybe.withDefault [] (Dict.get key acc)
            in
            Dict.insert key value acc
    in
    List.foldr fold Dict.empty a
