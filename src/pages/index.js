import React from "react"
import RepoList from "../components/RepoList"

export default function({ data }) {
  let repos
  try {
    repos = data.githubData.data.viewer.repositories.nodes
  } catch (e) {
    throw new Error("No data from GitHub")
  }

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
              isArchived

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
