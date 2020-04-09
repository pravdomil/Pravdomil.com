#!/usr/bin/env node

import { realpathSync, writeFileSync } from "fs"
import { default as fetch_ } from "node-fetch"
import { fileURLToPath } from "url"

globalThis.fetch = fetch_
const __dirname = realpathSync(fileURLToPath(import.meta.url) + "/..")
main().then(() => {})

/**
 * To build index.md page.
 * - To get github repos we fetch them from api or stop if it fails.
 * - To get all repos we join github and additional repos.
 * - To create index we save the the markdown file.
 * */
async function main() {
  const res = await fetch("https://api.github.com/graphql", {
    method: "POST",
    headers: { Authorization: "bearer " + process.env.GITHUB_TOKEN },
    body: JSON.stringify({ query: getGitHubGraphQuery() }),
  })
  if (!res.ok) {
    console.log(await res.text())
    process.exit(1)
  }

  const repos = [...(await res.json()).data.viewer.repositories.nodes, ...getAdditionalRepos()]

  const data = "---\nrepos: " + JSON.stringify(repos) + "\n---\n"
  writeFileSync(__dirname + "/../_pages/index.md", data)
}

function getGitHubGraphQuery() {
  return `
query {
  viewer {
    repositories(isFork: false, privacy: PUBLIC, first: 100) {
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
`
}

function getAdditionalRepos() {
  return [
    {
      name: "Services",
      description: "That's what I do for living.",
      url: "",
      homepageUrl: "https://services.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another" } }] },
    },
    {
      name: "Whetstone",
      description: "Image processing application for macOS with no UI.",
      url: "",
      homepageUrl: "https://whetstone.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another-applications" } }] },
    },
    {
      name: "Nodepad",
      description: "Different developer tool.",
      url: "",
      homepageUrl: "https://nodepad.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another-applications" } }] },
    },
    {
      name: "PaperCut",
      description: "Video editor concept.",
      url: "",
      homepageUrl: "https://papercut.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another-applications" } }] },
    },
    {
      name: "Mac-Keyboard-Piano",
      description: "Use your Mac keyboard as piano keys.",
      url: "",
      homepageUrl: "https://mackeyboardpiano.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another-applications" } }] },
    },
    {
      name: "Pravdomil Piano",
      description: "My custom designed piano.",
      url: "",
      homepageUrl: "https://piano.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "art" } }] },
    },
    {
      name: "Přijímačky UMPRUM",
      description: "My first book.",
      url: "",
      homepageUrl: "https://prijimackyumprum.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another" } }] },
    },
    {
      name: "Prawood",
      description: "DIY wooden furniture.",
      url: "",
      homepageUrl: "https://prawood.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "art" } }] },
    },
    {
      name: "Photography",
      description: "Nice photos.",
      url: "",
      homepageUrl: "https://www.icloud.com/sharedalbum/#B0P5oqs3qkAGn;30709E02-4714-4CEA-B4DE-17C88DB668FC",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "art" } }] },
    },
    {
      name: "Graphic-Design",
      description: "Posters, logos, brand identity I have created.",
      url: "",
      homepageUrl: "https://graphic.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "art" } }] },
    },
    {
      name: "Web-Development",
      description: "That's what I used to do for living.",
      url: "",
      homepageUrl: "https://web.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another" } }] },
    },
    {
      name: "3D-Print",
      description: "My experiences with 3D printing.",
      url: "",
      homepageUrl: "https://3dprint.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "art" } }] },
    },
    {
      name: "Sound",
      description: "My sound experiments.",
      url: "",
      homepageUrl: "https://sound.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "art" } }] },
    },
    {
      name: "Magic-Lantern",
      description: "Hacks for Canon cameras.",
      url: "",
      homepageUrl: "https://magiclantern.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another" } }] },
    },
    {
      name: "Newton-Laws",
      description: "Newton’s laws experiments.",
      url: "",
      homepageUrl: "https://newton-law.pravdomil.com",
      viewerHasStarred: false,
      isArchived: false,
      stargazers: { totalCount: 0 },
      repositoryTopics: { nodes: [{ topic: { name: "another" } }] },
    },
  ]
}
