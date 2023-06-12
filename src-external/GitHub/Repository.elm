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
            (Json.Decode.map (\x -> { nodes = x })
                (Json.Decode.field "nodes"
                    (Json.Decode.list
                        (Json.Decode.map (\x -> { topic = x })
                            (Json.Decode.field "topic"
                                (Json.Decode.map (\x -> { name = x })
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
    Json.Decode.map (\x -> { data = x })
        (Json.Decode.field "data"
            (Json.Decode.map
                (\x -> { viewer = x })
                (Json.Decode.field "viewer"
                    (Json.Decode.map (\x -> { repositories = x })
                        (Json.Decode.field "repositories"
                            (Json.Decode.map (\x -> { nodes = x })
                                (Json.Decode.field "nodes" (Json.Decode.list repositoryDecoder))
                            )
                        )
                    )
                )
            )
        )
