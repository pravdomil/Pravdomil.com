export function humanReadable(input) {
    const output = input.replace(/^wp-/, "").replace(/-/g, " ");
    return output[0].toLocaleUpperCase() + output.substr(1);
}
