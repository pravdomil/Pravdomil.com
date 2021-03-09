module Translation exposing (..)


type Translation
    = A_Title
    | A_Raw String


t : Translation -> String
t a =
    case a of
        A_Title ->
            "Pravdomil.com"

        A_Raw b ->
            b
