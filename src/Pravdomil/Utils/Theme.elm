module Pravdomil.Utils.Theme exposing (..)

import Element.PravdomilUi exposing (..)
import Element.PravdomilUi.Theme.Light


theme =
    Element.PravdomilUi.Theme.Light.theme style
        |> (\v ->
                { v
                    | page =
                        v.page
                            ++ [ bgColor Element.PravdomilUi.Theme.Light.style.black0
                               ]
                    , heading3 =
                        v.heading3
                            ++ [ fontSize 20
                               ]
                }
           )


style =
    Element.PravdomilUi.Theme.Light.style
        |> (\v ->
                { v
                    | primary = rgb 0 0 0.8
                }
           )
