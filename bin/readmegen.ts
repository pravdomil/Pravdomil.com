import { Glob } from "glob";

main();

async function main() {
    const links = await editLinks();
    const readme = `
# Pravdomil.com
## Files to edit
${links}`;
    
    console.log(readme);
}

async function editLinks() {
    const editLink = "https://github.com/pravdomil/pravdomil.com/edit/master/";
    
    const files = await glob("src/**", { nodir: true });
    const links = files.map(f => {
        const link = editLink + f;
        const name = f.replace("src/", "");
        return `- [${name}](${link})`;
    });
    
    return links.join("\n");
}

function glob(pattern, options?: any): Promise<string[]> {
    return new Promise((resolve, reject) => {
        const g = new Glob(pattern, options);
        g.once("end", resolve);
        g.once("error", reject);
    });
}
