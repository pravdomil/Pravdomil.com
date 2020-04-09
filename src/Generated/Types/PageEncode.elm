module Generated.Types.PageEncode exposing (..)

import Json.Encode exposing (..)
import Types.Page as A


encodeMaybe : (a -> Value) -> Maybe a -> Value
encodeMaybe a b =
    case b of
        Just c ->
            a c

        Nothing ->
            null


encodePage : A.Page -> Value
encodePage a =
    object [ ( "siteTitle", string a.siteTitle ), ( "pageFileName", string a.pageFileName ), ( "format", string a.format ), ( "layout", string a.layout ), ( "mtime", string a.mtime ), ( "repos", list encodeRepo a.repos ) ]


encodeRepo : A.Repo -> Value
encodeRepo a =
    object [ ( "name", string a.name ), ( "description", encodeMaybe string a.description ), ( "homepageUrl", encodeMaybe string a.homepageUrl ), ( "url", string a.url ), ( "isArchived", bool a.isArchived ), ( "viewerHasStarred", bool a.viewerHasStarred ), ( "stargazers", object [ ( "totalCount", int a.totalCount ) ] ), ( "repositoryTopics", object [ ( "nodes", list (object [ ( "topic", object [ ( "name", string ) ] ) ]) a.nodes ) ] ) ]
