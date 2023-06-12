module GitHub.Repository exposing (..)

import Json.Decode
import Json.Decode.Extra2


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
        (\x x2 x3 x4 x5 ->
            { name = x
            , description = x2
            , url = x3
            , homepageUrl = x4
            , repositoryTopics = x5
            }
        )
        (Json.Decode.field "name" Json.Decode.string)
        (Json.Decode.Extra2.maybeField "description" (Json.Decode.nullable Json.Decode.string))
        (Json.Decode.field "url" Json.Decode.string)
        (Json.Decode.Extra2.maybeField "homepageUrl" (Json.Decode.nullable Json.Decode.string))
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
