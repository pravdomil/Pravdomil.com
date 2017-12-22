import * as React from "react";
import { StatelessComponent } from "react";
import { humanReadable } from "../helpers/humanReadable";
import Spacer from "./Spacer";
import { additionalRepos } from "../helpers/additionalRepos";

export interface Repo {
    name: string;
    description: string;
    
    url: string;
    homepageUrl?: string;
    
    viewerHasStarred: boolean;
    stargazers: { totalCount: number };
    
    repositoryTopics: { nodes: Array<{ topic: { name: string } }> };
}

export interface Topic {
    name: string;
    stars: number;
    repos: Repo[];
}

function getTopic(topics: Topic[], name: string): Topic {
    const found = topics.find(t => t.name === name);
    if (found) {
        return found;
    } else {
        const stars = name === "uncategorized" ? -100 : 0;
        const topic = { name, repos: [], stars };
        topics.push(topic);
        return topic;
    }
}

const RepoList: StatelessComponent<{ repos: Repo[] }> = function({ repos }) {
    
    const topics = repos.concat(additionalRepos).reduce((accumulator, repo) => {
        const topicCount = repo.repositoryTopics.nodes.length;
        const name = topicCount ? repo.repositoryTopics.nodes[0].topic.name : "uncategorized";
        
        if (name === "wordpress") { return accumulator; }
        if (name === "dependency") { return accumulator; }
        
        const topic = getTopic(accumulator, name);
        
        topic.stars += repo.stargazers.totalCount;
        if (repo.viewerHasStarred) { topic.stars += 100; }
        
        topic.repos.push(repo);
        
        return accumulator;
    }, [] as Topic[]);
    
    topics.sort((a, b) => a.stars < b.stars ? 1 : -1);
    
    topics.forEach(topic => {
        topic.repos.sort((a, b) => a.stargazers.totalCount < b.stargazers.totalCount ? 1 : -1);
    });
    
    return (
        <div className="repos">
            {topics.map((topic, i) => (
                <div key={i} id={topic.name}>
                    <Spacer height={6}/>
                    <h1>{humanReadable(topic.name)}</h1>
                    <Spacer height={2}/>
                    <ul>
                        {topic.repos.map((repo, c) => (
                            <li key={c}>
                                <a href={repo.homepageUrl && !repo.homepageUrl.includes("://pravdomil.com") ? repo.homepageUrl : repo.url + "#readme"} target="_blank">
                                    <span className="title">{humanReadable(repo.name)}</span>
                                    <Spacer height={.5}/>
                                    <span className="desc">{repo.description}</span>
                                </a>
                            </li>
                        ))}
                    </ul>
                </div>
            ))}
        </div>
    );
};

export default RepoList;
