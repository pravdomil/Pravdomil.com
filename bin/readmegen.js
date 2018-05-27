const { readFile, writeFile } = require("fs").promises
const Glob = require("glob")

main()

async function main() {
  try {
    const files = await getFiles()
    await replaceInReadme("files", files)
  } catch (e) {
    console.log("error", e instanceof Error ? e.message : e || "")
  }
}

async function getFiles() {
  const editLink = "https://github.com/pravdomil/pravdomil.com/edit/master/"

  const files = await glob("src/**", { nodir: true })
  const links = files.reduce((acc, file) => {
    const link = editLink + file
    const [_, categoryOrig, name] = file.match(/src\/([^/]*)\/(.*)/)
    const category = firstUpperCase(categoryOrig)
    if (!acc[category]) {
      acc[category] = []
    }
    acc[category].push(`- [${name}](${link})`)
    return acc
  }, {})

  return Object.entries(links)
    .map(([category, links]) => "### " + category + "\n" + links.join("\n") + "\n")
    .join("\n")
}

//
// Helpers
//

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

async function replaceInReadme(section, content) {
  try {
    const readme = await readFile("README.md", "utf8")
    const regex = new RegExp(
      "(<!-- " + section + "_start -->).*(<!-- " + section + "_end -->)",
      "s",
    )
    const newReadme = readme.replace(
      regex,
      (string, start, end) => start + "\n" + content + "\n" + end,
    )
    await writeFile("README.md", newReadme)
  } catch {
    throw new Error("Error while replacing readme")
  }
}
