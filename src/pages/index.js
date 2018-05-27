import React from "react"
import RepoList from "../components/RepoList"

export default function Index({ data }) {
  if (!(data && data.githubData)) {
    throw new Error("No data from GitHub")
  }
  const repos = data.githubData.data.viewer.repositories.nodes

  return <RepoList repos={repos} />
}

export const query = graphql`
  query Repos {
    githubData {
      data {
        viewer {
          repositories {
            nodes {
              name
              description

              url
              homepageUrl

              viewerHasStarred
              stargazers {
                totalCount
              }

              repositoryTopics {
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
    }
  }
`
