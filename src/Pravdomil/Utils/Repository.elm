module Pravdomil.Utils.Repository exposing (..)

import GitHub.Repository


external : List GitHub.Repository.Repository
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
