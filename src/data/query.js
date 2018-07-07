module.exports = `
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
