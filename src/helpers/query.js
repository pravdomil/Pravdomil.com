module.exports = `
query {
    viewer {
        repositories(isFork: false, privacy: PUBLIC, first: 100) {
            nodes {
                name
                shortDescriptionHTML
                
                url
                homepageUrl
                
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
`;
