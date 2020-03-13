module Types exposing (..)


type alias Page =
    { siteTitle : String
    , pageFileName : String

    --, format : String
    , layout : String
    , mtime : String
    , excerpt : String
    , markdown : String
    , data : String
    , data2 : String

    --, inputPath : String
    --, outputPath : String
    }


type alias Repo =
    { name : String
    , description : Maybe String
    , homepageUrl : Maybe String
    , url : String
    , isArchived : Bool
    , viewerHasStarred : Bool
    , stargazers : { totalCount : Int }
    , repositoryTopics : { nodes : List { topic : { name : String } } }
    }
