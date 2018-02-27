import * as React from "react";
import { StatelessComponent } from "react";
import "../style.less";
import { Helmet } from "react-helmet";
import Spacer from "../components/Spacer";

const Header: StatelessComponent = () => (
    <header>
        <div>
            <Spacer height={9}/>
            
            <h2>Pravdomil</h2>
            <p>
                <span>
                    all my projects on one page
                </span>
                <br/>
                <a href="https://github.com/search?q=user%3Apravdomil&s=stars&type=Repositories">
                    <small>sorted by github stars</small>
                </a>
            </p>
            
            <Spacer height={3}/>
            
            <div className="links">
                <a href="mailto:info@pravdomil.com">
                    <i className="fa fa-envelope"/>
                </a>
                <a href="https://twitter.com/pravdomil">
                    <i className="fa fa-twitter"/>
                </a>
                <a href="https://github.com/pravdomil">
                    <i className="fa fa-github"/>
                </a>
                <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BCL2X3AFQBAP2&item_name=donation">
                    <i className="fa fa-paypal"/>
                </a>
                <a href="https://youtube.com/pravdomil">
                    <i className="fa fa-youtube-play"/>
                </a>
            </div>
        </div>
    </header>
);

const Layout: StatelessComponent = ({ children }) => (
    <main>
        <Helmet title="Pravdomil.com"/>
        <Helmet meta={[{ name: "viewport", content: "width=device-width" }]}/>
        <Helmet script={[{ src: require("file!rembased/js/rembased_class") }]}/>
        
        <Header/>
        <div>
            {(children as any)()}
        </div>
        <Footer/>
    </main>
);

const Footer: StatelessComponent = () => (
    <footer>
        <Spacer height={16}/>
        <div>
            <div className="links">
                <a href="https://github.com/pravdomil/pravdomil.com#readme">Edit this page</a>
                <a href="https://gatsbyjs.org">Made with Gatsby</a>
                <a href="https://travis-ci.org/pravdomil/pravdomil.com">Build by Travis</a>
                <a href="https://cloudflare.com">Cached by CloudFlare</a>
            </div>
        </div>
        <Spacer height={1}/>
    </footer>
);

export default Layout;
