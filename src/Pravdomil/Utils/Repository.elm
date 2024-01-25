module Pravdomil.Utils.Repository exposing (..)

import GitHub.Repository


external : List GitHub.Repository.Repository
external =
    [ GitHub.Repository.Repository
        "Přijímačky UMPRUM"
        (Just "My book.")
        ""
        (Just "https://pravdomil.com/prijimackyumprum/")
        { nodes = [] }
    , GitHub.Repository.Repository
        "Photography"
        (Just "Photos I took.")
        ""
        (Just "https://www.icloud.com/sharedalbum/#B0P5oqs3qkAGn;30709E02-4714-4CEA-B4DE-17C88DB668FC")
        { nodes = [] }
    , GitHub.Repository.Repository
        "Blog"
        (Just "I post things on Twitter.")
        ""
        (Just "https://twitter.com/pravdomil")
        { nodes = [] }
    , GitHub.Repository.Repository
        "YouTube Videos"
        (Just "Videos I made.")
        ""
        (Just "https://www.youtube.com/c/pravdomil/videos?view=0&sort=p&flow=grid")
        { nodes = [] }
    , GitHub.Repository.Repository
        "Vimeo Videos"
        (Just "Older videos I made.")
        ""
        (Just "https://vimeo.com/pravdomil")
        { nodes = [] }
    , GitHub.Repository.Repository
        "Programming Projects"
        (Just "I do program.")
        ""
        (Just "https://github.com/pravdomil?tab=repositories")
        { nodes = [] }
    ]
