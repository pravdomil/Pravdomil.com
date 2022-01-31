module Pravdomil.UI exposing (..)

import Element.PravdomilUI exposing (..)
import Element.PravdomilUI.Theme.Light


theme =
    Element.PravdomilUI.Theme.Light.theme style
        |> (\v ->
                { v
                    | page =
                        v.page
                            ++ [ bgColor Element.PravdomilUI.Theme.Light.style.black0
                               ]
                    , heading3 =
                        v.heading3
                            ++ [ fontSize 20
                               ]
                }
           )


style =
    Element.PravdomilUI.Theme.Light.style
        |> (\v ->
                { v
                    | primary = rgb 0 0 0.8
                }
           )
