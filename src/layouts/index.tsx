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
        <a href="https://github.com/pravdomil/pravdomil.com">edit this page</a>
    </footer>
);

export default Layout;
