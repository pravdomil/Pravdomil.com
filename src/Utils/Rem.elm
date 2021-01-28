module View.Rem exposing (..)

import Html exposing (Html, text)


{-| To set how many pixels has 1rem.

Rem is used in Bootstrap for interface scaling.
We use that to scale interface depending on input device.
For touch input devices we use bigger UI.

Example: table row height is 3rem, which is 48px for touch and 39px for non-touch.

<https://en.wikipedia.org/wiki/Em_(typography)#CSS>

-}
adjust : Bool -> Html msg
adjust touchInput =
    let
        rem : Int
        rem =
            if touchInput then
                16

            else
                13
    in
    Html.node "style"
        []
        [ text ("html { font-size: " ++ String.fromInt rem ++ "px }")
        ]
