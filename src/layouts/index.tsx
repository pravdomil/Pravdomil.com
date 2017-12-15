import * as React from "react";
import { StatelessComponent } from "react";
import "../style.less";
import { Helmet } from "react-helmet";

const Header: StatelessComponent = () => (
    <header>
        <Link to="/">Pravdomil.com</Link>
    </header>
);

const Layout: StatelessComponent = ({ children }) => (
    <main>
        <Helmet title="Pravdomil.com"/>
        <Header/>
        <div>
            { (children as any)() }
        </div>
        <Footer/>
    </main>
);

const Footer: StatelessComponent = () => (
    <footer>
        <div>
            <div className="links">
                <a href="https://github.com/search?q=user%3Apravdomil&s=stars&type=Repositories">Sorted by stars</a>
                <a href="https://github.com/pravdomil/pravdomil.com">Source on GitHub</a>
                <a href="https://gatsbyjs.org">Made with Gatsby</a>
                <br/>
                <a href="https://travis-ci.org">Build by Travis</a>
                <a href="https://cloudflare.com">Cached by CloudFlare</a>
            </div>
        </div>
    </footer>
);

export default Layout;
