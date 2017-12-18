import * as React from "react";
import { StatelessComponent } from "react";

let stylesStr;
if (process.env.NODE_ENV === "production") {
    try {
        stylesStr = require("!raw-loader!../public/styles.css");
    } catch (e) {
        console.log(e);
    }
}

const HTML: StatelessComponent<any> = (props) => {
    return (
        <html {...props.htmlAttributes}>
        <head>
            <meta charSet="utf-8"/>
            <style id="gatsby-inlined-css" dangerouslySetInnerHTML={{ __html: stylesStr }}/>
            {props.headComponents}
        </head>
        <body {...props.bodyAttributes}>
            {props.preBodyComponents}
            <div id="___gatsby" dangerouslySetInnerHTML={{ __html: props.body }}/>
            {props.postBodyComponents}
        </body>
        </html>
    );
};

module.exports = HTML;
