
import React, { Component } from 'react'
import Layout from '../components/Layout.js';
import PostIndex from '../components/PostIndex'
import fetch from "isomorphic-unfetch";
import { Config } from '../config';

export default class PostIndexPage extends Component {
  //getInitialProps Next JS
  static async getInitialProps() {
    const postsRes = await fetch(`${Config.apiUrl}/wp-json/wp/v2/posts`);
    const posts = await postsRes.json();
    return {
      posts
    };
  }

  render() {
    const { posts } = this.props;
    return (
      <Layout index={false}>

        <h1>Post Index</h1>
        <PostIndex limit={20}/>
        {/* <ul>
        {posts.map(post => (
          <li>
            {post.title.rendered}
          </li>
        ))}
        </ul> */}
      </Layout>
    )
  }
}
