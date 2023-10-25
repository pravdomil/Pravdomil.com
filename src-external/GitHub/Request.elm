module GitHub.Request exposing (..)

import GitHub.Repository
import GitHub.Token
import Http
import Http.Resolver
import Json.Encode
import Task


repositories : Maybe GitHub.Token.Token -> Task.Task Http.Error GitHub.Repository.Response
repositories token =
    let
        headers : List Http.Header
        headers =
            Maybe.withDefault []
                (Maybe.map
                    (\(GitHub.Token.Token x) ->
                        [ Http.header "Authorization" ("bearer " ++ x) ]
                    )
                    token
                )

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
    repositories(ownerAffiliations: OWNER, privacy: PUBLIC, first: 100) {
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
