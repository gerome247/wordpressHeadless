import React, { Component } from 'react';
import fetch from 'isomorphic-unfetch';
import { Config } from '../config';


export default class MainNav extends Component {
    state = {
        links: []
    }

    //getInitialProps Next JS
    async componentWillMount() {
      const menuRes = await fetch(`${Config.apiUrl}/wp-json/menus/v1/menus/main-nav`);
      const menu = await menuRes.json();
      this.setState({
        links: menu.items
      });
    }

    render() {
        const { links } = this.state;
        return (
        (<nav>
            {links.map(link => {
                // Save for later
                return <a>{link.title}</a>
            })}
        </nav>)
    )
  }
}
