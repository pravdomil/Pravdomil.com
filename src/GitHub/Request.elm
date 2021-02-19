module GitHub.Request exposing (..)

import GitHub exposing (Response)
import GitHub.Decode
import Http
import Json.Encode as Encode
import Task exposing (Task)
import Utils.Resolver as Resolver


request : Maybe String -> Task Http.Error Response
request token =
    let
        headers : List Http.Header
        headers =
            token
                |> Maybe.map (\v -> [ Http.header "Authorization" ("bearer " ++ v) ])
                |> Maybe.withDefault []

        body : Encode.Value
        body =
            Encode.object [ ( "query", Encode.string query ) ]
    in
    Http.task
        { method = "POST"
        , headers = headers
        , url = "https://api.github.com/graphql"
        , body = Http.jsonBody body
        , resolver = Resolver.json GitHub.Decode.response
        , timeout = Nothing
        }


query : String
query =
    """
query {
  viewer {
    repositories(ownerAffiliations: OWNER, privacy: PUBLIC, isFork: false, first: 100) {
      nodes {
        name
        description
        url
        homepageUrl

        repositoryTopics(first: 100) {
          nodes {
            topic {
              name
            }
          }
        }
      }
    }
  }
}
"""
