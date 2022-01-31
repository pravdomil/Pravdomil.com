module GitHub.Repository exposing (..)

import GitHub.Repository
import Json.Decode
import Json.Decode.Extra


type alias Repository =
    { name : String
    , description : Maybe String
    , url : String
    , homepageUrl : Maybe String

    --
    , repositoryTopics :
        { nodes :
            List
                { topic :
                    { name : String
                    }
                }
        }
    }


repositoryDecoder : Json.Decode.Decoder Repository
repositoryDecoder =
    Json.Decode.map5
        (\v1 v2 v3 v4 v5 ->
            { name = v1
            , description = v2
            , url = v3
            , homepageUrl = v4
            , repositoryTopics = v5
            }
        )
        (Json.Decode.field "name" Json.Decode.string)
        (Json.Decode.Extra.maybeField "description" (Json.Decode.nullable Json.Decode.string))
        (Json.Decode.field "url" Json.Decode.string)
        (Json.Decode.Extra.maybeField "homepageUrl" (Json.Decode.nullable Json.Decode.string))
        (Json.Decode.field "repositoryTopics"
            (Json.Decode.map (\v1 -> { nodes = v1 })
                (Json.Decode.field "nodes"
                    (Json.Decode.list
                        (Json.Decode.map (\v1 -> { topic = v1 })
                            (Json.Decode.field "topic"
                                (Json.Decode.map (\v1 -> { name = v1 })
                                    (Json.Decode.field "name" Json.Decode.string)
                                )
                            )
                        )
                    )
                )
            )
        )



--


type alias Response =
    { data :
        { viewer :
            { repositories :
                { nodes : List Repository
                }
            }
        }
    }


responseDecoder : Json.Decode.Decoder Response
responseDecoder =
    Json.Decode.map (\v1 -> { data = v1 })
        (Json.Decode.field "data"
            (Json.Decode.map
                (\v1 -> { viewer = v1 })
                (Json.Decode.field "viewer"
                    (Json.Decode.map (\v1 -> { repositories = v1 })
                        (Json.Decode.field "repositories"
                            (Json.Decode.map (\v1 -> { nodes = v1 })
                                (Json.Decode.field "nodes" (Json.Decode.list repositoryDecoder))
                            )
                        )
                    )
                )
            )
        )



--


external : List Repository
external =
    [ { name = "Přijímačky UMPRUM"
      , description = Just "My book."
      , url = ""
      , homepageUrl = Just "https://prijimackyumprum.pravdomil.com"
      , repositoryTopics = { nodes = [] }
      }
    , { name = "Photography"
      , description = Just "Photos I took."
      , url = ""
      , homepageUrl = Just "https://www.icloud.com/sharedalbum/#B0P5oqs3qkAGn;30709E02-4714-4CEA-B4DE-17C88DB668FC"
      , repositoryTopics = { nodes = [] }
      }
    , { name = "Blog"
      , description = Just "I post things on Twitter."
      , url = ""
      , homepageUrl = Just "https://twitter.com/pravdomil"
      , repositoryTopics = { nodes = [] }
      }
    , { name = "YouTube Videos"
      , description = Just "Videos I made."
      , url = ""
      , homepageUrl = Just "https://www.youtube.com/c/pravdomil/videos?view=0&sort=p&flow=grid"
      , repositoryTopics = { nodes = [] }
      }
    , { name = "Vimeo Videos"
      , description = Just "Older videos I made."
      , url = ""
      , homepageUrl = Just "https://vimeo.com/pravdomil"
      , repositoryTopics = { nodes = [] }
      }
    ]
