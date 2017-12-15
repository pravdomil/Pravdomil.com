import * as React from "react";
import { StatelessComponent } from "react";
import Link from "gatsby-link";

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
    </main>
);
);

export default Layout;
