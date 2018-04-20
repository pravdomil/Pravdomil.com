import * as React from "react"
import { Helmet } from "react-helmet"
import Spacer from "../components/Spacer"
import "../style.less"

export default function Layout({ children }) {
  return (
    <main>
      <Helmet title="Pravdomil.com" />
      <Helmet meta={[{ name: "viewport", content: "width=device-width" }]} />
      <Helmet script={[{ src: require("file!rembased/js/rembased_class") }]} />

      <Header />
      <div>{children()}</div>
      <Footer />
    </main>
  )
}

function Header() {
  return (
    <header>
      <div>
        <Spacer height={9} />

        <h2>
          <a href="/">Pravdomil</a>
        </h2>
        <p>
          <span>all my projects on single page</span>
          <br />
          <a href="https://github.com/search?q=user%3Apravdomil&s=stars&type=Repositories">
            <small>sorted by github stars</small>
          </a>
        </p>

        <Spacer height={3} />

        <div className="links">
          <a href="mailto:info@pravdomil.com">
            <i className="fa fa-envelope" />
          </a>
          <a href="https://twitter.com/pravdomil">
            <i className="fa fa-twitter" />
          </a>
          <a href="https://github.com/pravdomil">
            <i className="fa fa-github" />
          </a>
          <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=Donation%20pravdomil.com">
            <i className="fa fa-paypal" />
          </a>
          <a href="https://stackoverflow.com/users/3748498/pravdomil">
            <i className="fa fa-stack-overflow" />
          </a>
          <a href="https://youtube.com/pravdomil">
            <i className="fa fa-youtube-play" />
          </a>
        </div>
      </div>
    </header>
  )
}

function Footer() {
  return (
    <footer>
      <Spacer height={16} />
      <div>
        <div className="links">
          <a href="https://github.com/pravdomil/pravdomil.com#readme">Edit this page</a>
          <a href="https://gatsbyjs.org">Made with Gatsby</a>
          <a href="https://travis-ci.org/pravdomil/pravdomil.com">Build by Travis</a>
          <a href="https://cloudflare.com">Cached by CloudFlare</a>
        </div>
      </div>
      <Spacer height={1} />
    </footer>
  )
}
