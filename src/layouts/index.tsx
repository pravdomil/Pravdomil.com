import * as React from "react";
import { StatelessComponent } from "react";
import Link from "gatsby-link";

import "./index.css";
import { Helmet } from "react-helmet";

const headerStyle = {
    padding: "3rem 0",
};

const Header: StatelessComponent = () => (
  <div style={headerStyle}>
      <Link to="/">Pravdomil.com</Link>
      {"   "}
      <Link to="/about">about</Link>
  </div>
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
