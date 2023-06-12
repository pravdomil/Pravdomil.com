module Pravdomil.Utils.Theme exposing (..)

import Element.PravdomilUi exposing (..)
import Element.PravdomilUi.Theme.Basic


theme =
    Element.PravdomilUi.Theme.Basic.theme style
        |> (\x ->
                { x
                    | page =
                        \x2 -> x.page (bgColor Element.PravdomilUi.Theme.Basic.style.black0 :: x2)
                    , heading3 =
                        \x2 -> x.heading3 (fontSize 20 :: x2)
                }
           )


style =
    Element.PravdomilUi.Theme.Basic.style
        |> (\x ->
                { x
                    | primaryBack = rgb 0 0 0.8
                }
           )
