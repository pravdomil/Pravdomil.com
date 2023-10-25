module Pravdomil.Utils.Theme exposing (..)

import Element exposing (..)
import Element.Font
import Element.Region


type alias EdgesXY =
    { left : Int
    , right : Int
    , top : Int
    , bottom : Int
    }



--


blue =
    rgb 0 0 0.8



--


page a =
    a


heading1 a =
    Element.Region.heading 1 :: a


heading2 a =
    Element.Region.heading 2 :: a


heading3 a =
    Element.Region.heading 3 :: Element.Font.size 20 :: a
