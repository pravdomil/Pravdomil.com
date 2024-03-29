module Pravdomil.Utils.Theme exposing (..)

import Element exposing (..)
import Element.Border
import Element.Font
import Element.Region


type alias EdgesXY =
    { left : Int
    , right : Int
    , top : Int
    , bottom : Int
    }



--


css =
    """
@import "https://fonts.googleapis.com/css?family=Playfair+Display&subset=latin-ext";
html {
  background-image: repeating-linear-gradient(45deg, rgba(0,0,204,1) 0, rgba(0,0,204,1) 0.4px, white 0, white 50%);
  background-size: 4px 4px;
}
"""



--


blue =
    rgb 0 0 0.8



--


page a =
    Element.Font.family
        [ Element.Font.typeface "Playfair Display"
        , Element.Font.serif
        ]
        :: Element.Font.size 16
        :: a


heading1 a =
    Element.Region.heading 1 :: Element.Font.size 32 :: a


heading2 a =
    Element.Region.heading 2 :: Element.Font.size 28 :: a


heading3 a =
    Element.Region.heading 3 :: Element.Font.size 24 :: a


link_ a =
    Element.Font.color blue
        :: Element.Border.rounded 4
        :: focused
            [ Element.Border.shadow
                { color = fromRgb ((\x -> { x | alpha = 0.4 }) (toRgb blue))
                , offset = ( 0, 0 )
                , blur = 0
                , size = 4
                }
            ]
        :: a
