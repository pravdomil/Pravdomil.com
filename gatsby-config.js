module.exports = {
  plugins: [
    "gatsby-plugin-react-helmet",
    "gatsby-plugin-less",
    {
      resolve: "gatsby-source-github-api",
      options: {
        token: process.env.GH_TOKEN,
        graphQLQuery: require("./src/data/query.js"),
        variables: {},
      },
    },
  ],
}
