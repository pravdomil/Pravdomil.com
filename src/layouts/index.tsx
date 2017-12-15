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

const pageStyle = {
    margin: "0 auto",
    maxWidth: 960,
    padding: "1rem",
};

const Layout: StatelessComponent = ({ children }) => (
  <div style={pageStyle}>
    <Helmet title="Pravdomil.com"/>
    <Header/>
    <div>
      { (children as any)() }
    </div>
  </div>
);

export default Layout;
