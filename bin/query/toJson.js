require("fs").writeFileSync(
  __dirname + "/repos.json",
  JSON.stringify({ query: require("fs").readFileSync(__dirname + "/repos.graphql", "utf-8") })
)
