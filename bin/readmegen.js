const Glob = require("glob")

main()

async function main() {
  const links = await editLinks()
  const readme = `<div align="center">

# Pravdomil.com

</div>

## Files to edit
${links}
`

  console.log(readme)
}

async function editLinks() {
  const editLink = "https://github.com/pravdomil/pravdomil.com/edit/master/"

  const files = await glob("src/**", { nodir: true })
  const links = files.reduce((acc, f) => {
    const link = editLink + f
    const name = f.replace("src/", "")
    const category = firstUpperCase(name.split("/")[0])
    if (!acc[category]) {
      acc[category] = []
    }
    acc[category].push(`- [${name}](${link})`)
    return acc
  }, {})

  return Object.entries(links)
    .map(([category, links]) => "## " + category + "\n" + links.join("\n") + "\n")
    .join("\n")
}

function glob(pattern, options) {
  return new Promise((resolve, reject) => {
    const g = new Glob(pattern, options)
    g.once("end", resolve)
    g.once("error", reject)
  })
}

function firstUpperCase(string) {
  return string[0].toUpperCase() + string.slice(1)
}
