module GitHub.Request exposing (..)

import GitHub.Repository
import Http
import Http.Resolver
import Json.Encode
import Task


repositories : Maybe String -> Task.Task Http.Error GitHub.Repository.Response
repositories token =
    let
        headers : List Http.Header
        headers =
            token
                |> Maybe.map (\v -> [ Http.header "Authorization" ("bearer " ++ v) ])
                |> Maybe.withDefault []

        body : Json.Encode.Value
        body =
            Json.Encode.object [ ( "query", Json.Encode.string query ) ]
    in
    Http.task
        { method = "POST"
        , headers = headers
        , url = "https://api.github.com/graphql"
        , body = Http.jsonBody body
        , resolver = Http.Resolver.json GitHub.Repository.responseDecoder
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
