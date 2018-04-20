import * as React from "react"
import { additionalRepos } from "../helpers/additionalRepos"
import { humanReadable } from "../helpers/humanReadable"
import Spacer from "./Spacer"

function getTopic(topics, name) {
  const found = topics.find(t => t.name === name)
  if (found) {
    return found
  }
  const stars = name === "uncategorized" ? -100 : 0
  const topic = { name, repos: [], stars }
  topics.push(topic)
  return topic
}

export default function RepoList({ repos }) {
  // our main topic collection
  const topics = []

  // add repos to corresponding topics
  const allRepos = [...repos, ...additionalRepos]
  for (const repo of allRepos) {
    const repoTopics = repo.repositoryTopics.nodes
    const topicName = repoTopics.length ? repoTopics[0].topic.name : "uncategorized"

    const topic = getTopic(topics, topicName)
    topic.stars += repo.stargazers.totalCount
    topic.repos.push(repo)
  }

  // sort topic repos
  topics.forEach(topic => {
    topic.repos.sort((a, b) => {
      if (a.stargazers.totalCount !== b.stargazers.totalCount) {
        return a.stargazers.totalCount < b.stargazers.totalCount ? 1 : -1
      }
      if (a.name < b.name) {
        return -1
      }
      if (a.name > b.name) {
        return 1
      }
      return 0
    })
  })

  // sort topics by stars sum
  topics.sort((a, b) => (a.stars < b.stars ? 1 : -1))

  return (
    <div className="repos">
      {topics.map((topic, i) => (
        <div className="repo" key={i} id={topic.name}>
          <Spacer height={6} />
          <h1 title={topic.stars + " ★"}>{humanReadable(topic.name)}</h1>
          <Spacer height={2} />
          <ul>
            {topic.repos.map(({ homepageUrl, url, name, description }, c) => (
              <li key={c}>
                <a
                  href={homepageUrl && !homepageUrl.includes("://pravdomil.com") ? homepageUrl : url + "#readme"}
                  target="_blank"
                >
                  <span className="title">{humanReadable(name)}</span>
                  <Spacer height={0.5} />
                  <span className="desc">{description}</span>
                </a>
              </li>
            ))}
          </ul>
        </div>
      ))}
    </div>
  )
}
