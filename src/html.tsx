import * as React from "react";
import { StatelessComponent } from "react";

const HTML: StatelessComponent<any> = (props) => {
    return (
        <html {...props.htmlAttributes}>
        <head>
            <meta charSet="utf-8"/>
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
