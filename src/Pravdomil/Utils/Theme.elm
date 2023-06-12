module Pravdomil.Utils.Theme exposing (..)

import Element.PravdomilUi exposing (..)
import Element.PravdomilUi.Theme.Basic


theme =
    Element.PravdomilUi.Theme.Basic.theme style
        |> (\x ->
                { x
                    | page =
                        x.page
                            ++ [ bgColor Element.PravdomilUi.Theme.Basic.style.black0
                               ]
                    , heading3 =
                        x.heading3
                            ++ [ fontSize 20
                               ]
                }
           )


style =
    Element.PravdomilUi.Theme.Basic.style
        |> (\x ->
                { x
                    | primary = rgb 0 0 0.8
                }
           )
