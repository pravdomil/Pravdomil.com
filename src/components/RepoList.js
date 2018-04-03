import * as React from "react"
import { additionalRepos } from "../helpers/additionalRepos"
import { humanReadable } from "../helpers/humanReadable"
import Spacer from "./Spacer"

function getTopic(topics, name) {
    const found = topics.find(t => t.name === name)
    if (found) {
        return found
    }
    else {
        const stars = name === "uncategorized" ? -100 : 0
        const topic = { name, repos: [], stars }
        topics.push(topic)
        return topic
    }
}


export default function RepoList({ repos }) {
    // our main topic collection
    const topics = [];
    
    // add repos to corresponding topics
    [...repos, ...additionalRepos].forEach((repo) => {
        const repoTopics = repo.repositoryTopics.nodes
        const topicName = repoTopics.length ? repoTopics[0].topic.name : "uncategorized"
        
        const topic = getTopic(topics, topicName)
        topic.stars += repo.stargazers.totalCount
        topic.repos.push(repo)
    })
    
    // sort topic repos by stars
    topics.forEach(topic => {
        topic.repos.sort((a, b) => a.stargazers.totalCount < b.stargazers.totalCount ? 1 : -1)
    })
    
    // sort topics by stars sum
    topics.sort((a, b) => a.stars < b.stars ? 1 : -1)
    
    return (
        <div className="repos">
            {topics.map((topic, i) => (
                <div className="repo" key={i} id={topic.name}>
                    <Spacer height={6}/>
                    <h1 title={topic.stars + " ★"}>{humanReadable(topic.name)}</h1>
                    <Spacer height={2}/>
                    <ul>
                        {topic.repos.map(({ homepageUrl, url, name, description }, c) => (
                            <li key={c}>
                                <a href={homepageUrl && !homepageUrl.includes("://pravdomil.com") ? homepageUrl : url + "#readme"} target="_blank">
                                    <span className="title">{humanReadable(name)}</span>
                                    <Spacer height={.5}/>
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
