module GitHub.Token exposing (..)


type Token
    = Token String


fromString : String -> Token
fromString =
    Token


toString : Token -> String
toString (Token a) =
    a
