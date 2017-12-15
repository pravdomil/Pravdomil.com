import * as React from "react";
import { StatelessComponent } from "react";
import RepoList from "../components/RepoList";

const IndexPage: StatelessComponent<{ data: any }> = function({ data }) {
    const repos = data.githubData.data.viewer.repositories.nodes;
    
    return (
        <div>
            <RepoList repos={repos}/>
        </div>
    );
};

declare const graphql: any;
export const query = graphql`
    query Repos {
        githubData {
            data {
                viewer {
                    repositories {
                        nodes {
                            name
                            shortDescriptionHTML

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
`;

export default IndexPage;
