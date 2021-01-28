module App.App.Repository.Repository exposing (..)

{-| -}


{-| -}
type alias Response =
    { data :
        { viewer :
            { repositories :
                { nodes : List Repository
                }
            }
        }
    }


{-| -}
type alias Repository =
    { name : String
    , description : Maybe String
    , url : String
    , homepageUrl : Maybe String
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


{-| -}
query : String
query =
    """
query {
  viewer {
    repositories(isFork: false, privacy: PUBLIC, first: 100) {
      nodes {
        name
        description

        url
        homepageUrl
        isArchived

        viewerHasStarred
        stargazers {
          totalCount
        }

        repositoryTopics(first: 100) {
          nodes {
            topic {
              name
            }
          }
        }
      }
    }
  }
}
"""


{-| -}
additional : List Repository
additional =
    [ { name = "Services"
      , description = Just "That's what I do for living."
      , url = ""
      , homepageUrl = Just "https://services.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another" } } ] }
      }
    , { name = "Whetstone"
      , description = Just "Image processing application for macOS with no UI."
      , url = ""
      , homepageUrl = Just "https://whetstone.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another-applications" } } ] }
      }
    , { name = "Nodepad"
      , description = Just "Different developer tool."
      , url = ""
      , homepageUrl = Just "https://nodepad.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another-applications" } } ] }
      }
    , { name = "PaperCut"
      , description = Just "Video editor concept."
      , url = ""
      , homepageUrl = Just "https://papercut.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another-applications" } } ] }
      }
    , { name = "Mac-Keyboard-Piano"
      , description = Just "Use your Mac keyboard as piano keys."
      , url = ""
      , homepageUrl = Just "https://mackeyboardpiano.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another-applications" } } ] }
      }
    , { name = "Pravdomil Piano"
      , description = Just "My custom designed piano."
      , url = ""
      , homepageUrl = Just "https://piano.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "art" } } ] }
      }
    , { name = "Přijímačky UMPRUM"
      , description = Just "My first book."
      , url = ""
      , homepageUrl = Just "https://prijimackyumprum.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another" } } ] }
      }
    , { name = "Prawood"
      , description = Just "DIY wooden furniture."
      , url = ""
      , homepageUrl = Just "https://prawood.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "art" } } ] }
      }
    , { name = "Photography"
      , description = Just "Nice photos."
      , url = ""
      , homepageUrl = Just "https://www.icloud.com/sharedalbum/#B0P5oqs3qkAGn;30709E02-4714-4CEA-B4DE-17C88DB668FC"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "art" } } ] }
      }
    , { name = "Graphic-Design"
      , description = Just "Posters, logos, brand identity I have created."
      , url = ""
      , homepageUrl = Just "https://graphic.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "art" } } ] }
      }
    , { name = "Web-Development"
      , description = Just "That's what I used to do for living."
      , url = ""
      , homepageUrl = Just "https://web.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another" } } ] }
      }
    , { name = "3D-Print"
      , description = Just "My experiences with 3D printing."
      , url = ""
      , homepageUrl = Just "https://3dprint.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "art" } } ] }
      }
    , { name = "Sound"
      , description = Just "My sound experiments."
      , url = ""
      , homepageUrl = Just "https://sound.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "art" } } ] }
      }
    , { name = "Magic-Lantern"
      , description = Just "Hacks for Canon cameras."
      , url = ""
      , homepageUrl = Just "https://magiclantern.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another" } } ] }
      }
    , { name = "Newton-Laws"
      , description = Just "Newton’s laws experiments."
      , url = ""
      , homepageUrl = Just "https://newton-law.pravdomil.com"
      , viewerHasStarred = False
      , isArchived = False
      , stargazers = { totalCount = 0 }
      , repositoryTopics = { nodes = [ { topic = { name = "another" } } ] }
      }
    ]
