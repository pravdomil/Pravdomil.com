import { Maybe, Result } from "../Basics/Basics"


export type Page = { siteTitle: string; pageFileName: string; format: string; layout: string; mtime: string; repos: Array<Repo> }

export type Repo = { name: string; description?: Maybe<string>; homepageUrl?: Maybe<string>; url: string; isArchived: boolean; viewerHasStarred: boolean; stargazers: { totalCount: number }; repositoryTopics: { nodes: Array<{ topic: { name: string } }> } }
