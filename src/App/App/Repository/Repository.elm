module App.App.Repository.Repository exposing (..)

{-| -}


{-| -}
type alias Repository =
    { name : String
    , description : Maybe String
    , homepageUrl : Maybe String
    , url : String
    , isArchived : Bool
    , viewerHasStarred : Bool

    --
    , stargazers :
        { totalCount : Int
        }
    , repositoryTopics :
        { nodes :
            List
                { topic :
                    { name : String
                    }
                }
        }
    }
