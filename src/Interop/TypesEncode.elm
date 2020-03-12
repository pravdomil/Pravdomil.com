module Interop.TypesEncode exposing (..)

import Types exposing (..)
import Json.Encode exposing (..)

encodeMaybe a b = case b of
   Just c -> a c
   Nothing -> null

encodeDict _ b c = dict identity b c

encodePage : Page -> Value
encodePage a = object [ ( "siteTitle", string a.siteTitle ), ( "pageFileName", string a.pageFileName ), ( "format", string a.format ), ( "layout", string a.layout ), ( "mtime", string a.mtime ), ( "excerpt", string a.excerpt ), ( "markdown", string a.markdown ), ( "data", string a.data ) ]

encodeRepo : Repo -> Value
encodeRepo a = object [ ( "name", string a.name ), ( "description", encodeMaybe string a.description ), ( "homepageUrl", encodeMaybe string a.homepageUrl ), ( "url", string a.url ), ( "isArchived", bool a.isArchived ), ( "viewerHasStarred", bool a.viewerHasStarred ), ( "stargazers", object [ ( "totalCount", int a.totalCount ) ] ), ( "repositoryTopics", object [ ( "nodes", list object [ ( "topic", object [ ( "name", string ) ] ) ] a.nodes ) ] ) ]
