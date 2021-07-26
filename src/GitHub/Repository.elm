module GitHub.Repository exposing (..)


type alias Response =
    { data :
        { viewer :
            { repositories :
                { nodes : List Repository
                }
            }
        }
    }


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



--


externalRepositories : List Repository
externalRepositories =
    [ { name = "Přijímačky UMPRUM"
      , description = Just "My book."
      , url = ""
      , homepageUrl = Just "https://prijimackyumprum.pravdomil.com"
      , repositoryTopics = { nodes = [] }
      }
    , { name = "Photography"
      , description = Just "My photos."
      , url = ""
      , homepageUrl = Just "https://www.icloud.com/sharedalbum/#B0P5oqs3qkAGn;30709E02-4714-4CEA-B4DE-17C88DB668FC"
      , repositoryTopics = { nodes = [] }
      }
    ]
