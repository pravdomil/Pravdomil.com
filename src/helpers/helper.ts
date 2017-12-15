export function humanReadable(input: string) {
    const output = input.replace(/-/g, " ");
    return output[0].toLocaleUpperCase() + output.substr(1);
}
