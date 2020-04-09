module Types.Page exposing (..)


type alias Page =
    { siteTitle : String
    , pageFileName : String
    , format : String
    , layout : String
    , mtime : String

    -- From index.md
    , repos : List Repo

    --, excerpt : String
    --, markdown : String
    --, content: String
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
