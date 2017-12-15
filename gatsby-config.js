module.exports = {
    plugins: [
        "gatsby-plugin-typescript",
        "gatsby-plugin-react-helmet",
        "gatsby-plugin-less",
        {
            resolve: "gatsby-source-github-api",
            options: {
                token: process.env.GITHUB_TOKEN,
                graphQLQuery: require("./src/helpers/query.js"),
                variables: {}
            }
        },
    ],
};
