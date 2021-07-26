module Ui.Style exposing (..)

import Element
import Element.Font as Font


baseBgColor =
    grey9


baseColor =
    grey1


baseFontSize =
    16


baseLineSpacing =
    8


linkColor =
    primary


hrPadding =
    ( 0, 16 )


hrBorderColor =
    grey7



--


h1FontSize =
    20


h2FontSize =
    baseFontSize


h3FontSize =
    baseFontSize


h4FontSize =
    baseFontSize


h5FontSize =
    baseFontSize


h6FontSize =
    baseFontSize



--


buttonSpacing =
    8


buttonPadding =
    8


buttonBgColor =
    primary


buttonColor =
    grey10


buttonBorderRounded =
    8



--


labelColor =
    grey4


labelFontSize =
    14


inputSpacing =
    8


inputPadding =
    8


inputBgColor =
    grey10


inputColor =
    baseColor


inputBorderColor =
    grey6


inputBorderWidth =
    1


inputBorderRounded =
    4


placeholderColor =
    grey4


placeholderFontSize =
    14



--


baseFontFamily =
    Font.family
        [ Font.typeface "system-ui"
        , Font.typeface "-apple-system"
        , Font.typeface "Segoe UI"
        , Font.typeface "Roboto"
        , Font.typeface "Helvetica Neue"
        , Font.typeface "Arial"
        , Font.typeface "Noto Sans"
        , Font.typeface "Liberation Sans"
        , Font.sansSerif
        , Font.typeface "Apple Color Emoji"
        , Font.typeface "Segoe UI Emoji"
        , Font.typeface "Segoe UI Symbol"
        , Font.typeface "Noto Color Emoji"
        ]


monospaceFontFamily =
    Font.family
        [ Font.typeface "SFMono-Regular"
        , Font.typeface "Menlo"
        , Font.typeface "Monaco"
        , Font.typeface "Consolas"
        , Font.typeface "Liberation Mono"
        , Font.typeface "Courier New"
        , Font.monospace
        ]



--


shadow1 =
    { offset = ( 0, 16 )
    , size = 0
    , blur = 48
    , color = grey0 |> Element.toRgb |> (\v -> { v | alpha = 0.2 }) |> Element.fromRgb
    }


shadow2 =
    shadow1


shadow3 =
    shadow1



--


grey0 =
    Element.rgb 0 0 0


grey1 =
    Element.rgb 0.12 0.14 0.15


grey2 =
    Element.rgb 0.19 0.22 0.24


grey3 =
    Element.rgb 0.28 0.3 0.33


grey4 =
    Element.rgb 0.41 0.45 0.48


grey5 =
    Element.rgb 0.67 0.7 0.73


grey6 =
    Element.rgb 0.8 0.82 0.84


grey7 =
    Element.rgb 0.86 0.88 0.89


grey8 =
    Element.rgb 0.9 0.92 0.93


grey9 =
    Element.rgb 0.96 0.97 0.97


grey10 =
    Element.rgb 1 1 1



--


primary =
    Element.rgb 0.05 0.43 0.99


secondary =
    grey4


success =
    Element.rgb 0.1 0.53 0.33


info =
    Element.rgb 0.05 0.79 0.94


warning =
    Element.rgb 1 0.76 0.03


danger =
    Element.rgb 0.86 0.21 0.27
