module Generated.Types.PageDecode exposing (..)

import Json.Decode exposing (..)
import Types.Page as A


pageDecoder : Decoder A.Page
pageDecoder =
    map6 (\a b c d e f -> { siteTitle = a, pageFileName = b, format = c, layout = d, mtime = e, repos = f }) (field "siteTitle" string) (field "pageFileName" string) (field "format" string) (field "layout" string) (field "mtime" string) (field "repos" (list repoDecoder))


repoDecoder : Decoder A.Repo
repoDecoder =
    map8 (\a b c d e f g h -> { name = a, description = b, homepageUrl = c, url = d, isArchived = e, viewerHasStarred = f, stargazers = g, repositoryTopics = h }) (field "name" string) ((\maybeField -> oneOf [ maybeField, succeed Nothing ]) <| field "description" (nullable string)) ((\maybeField -> oneOf [ maybeField, succeed Nothing ]) <| field "homepageUrl" (nullable string)) (field "url" string) (field "isArchived" bool) (field "viewerHasStarred" bool) (field "stargazers" (map (\a -> { totalCount = a }) (field "totalCount" int))) (field "repositoryTopics" (map (\a -> { nodes = a }) (field "nodes" (list (map (\a -> { topic = a }) (field "topic" (map (\a -> { name = a }) (field "name" string))))))))
