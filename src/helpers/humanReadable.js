export function humanReadable(input: string) {
    const output = input.replace(/^wp-/, "").replace(/-/g, " ");
    return output[0].toLocaleUpperCase() + output.substr(1);
}
