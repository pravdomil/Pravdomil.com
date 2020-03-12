module Interop.TypesDecode exposing (..)

import Types exposing (..)
import Json.Decode exposing (..)
import Set

decodeSet a = map Set.fromList (list a)

decodeDict _ a = dict a

decodePage : Decoder Page
decodePage = (map8 (\a b c d e f g h -> { siteTitle = a, pageFileName = b, format = c, layout = d, mtime = e, excerpt = f, markdown = g, data = h }) (field "siteTitle" (string)) (field "pageFileName" (string)) (field "format" (string)) (field "layout" (string)) (field "mtime" (string)) (field "excerpt" (string)) (field "markdown" (string)) (field "data" (string)))

decodeRepo : Decoder Repo
decodeRepo = (map8 (\a b c d e f g h -> { name = a, description = b, homepageUrl = c, url = d, isArchived = e, viewerHasStarred = f, stargazers = g, repositoryTopics = h }) (field "name" (string)) (field "description" (maybe (string))) (field "homepageUrl" (maybe (string))) (field "url" (string)) (field "isArchived" (bool)) (field "viewerHasStarred" (bool)) (field "stargazers" (map (\a -> { totalCount = a }) (field "totalCount" (int)))) (field "repositoryTopics" (map (\a -> { nodes = a }) (field "nodes" (list (map (\a -> { topic = a }) (field "topic" (map (\a -> { name = a }) (field "name" (string))))))))))
