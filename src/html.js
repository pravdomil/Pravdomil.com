import * as React from "react"

let stylesStr
if (process.env.NODE_ENV === "production") {
  try {
    stylesStr = require("!raw-loader!../public/styles.css")
  } catch (e) {
    console.log(e)
  }
}

export default function Html(props) {
  return (
    <html {...props.htmlAttributes}>
    <head>
      <meta charSet="utf-8" />
      <style id="gatsby-inlined-css" dangerouslySetInnerHTML={{ __html: stylesStr }} />
      {props.headComponents}
    </head>
    <body {...props.bodyAttributes}>
    {props.preBodyComponents}
    <div id="___gatsby" dangerouslySetInnerHTML={{ __html: props.body }} />
    {props.postBodyComponents}
    </body>
    </html>
  )
}
