module GitHub.Request exposing (..)

import GitHub.Repository as Repository
import GitHub.Repository.Decode
import Http
import Json.Encode as Encode
import Task exposing (Task)
import Utils.Resolver as Resolver


repositories : Maybe String -> Task Http.Error Repository.Response
repositories token =
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
        , resolver = Resolver.json GitHub.Repository.Decode.response
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
