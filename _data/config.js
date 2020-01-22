const pkg = require('../package')

module.exports = {
  build: new Date(),
  repository: pkg.repository.url,
  gravatar: '//gravatar.com/avatar/5d34a6bf73323076e6c8ddfd10831c90',
  url: pkg.homepage,
  title: '@ivoputzer\'s blog',
  meta: {
    lang: 'en',
    image: {
      src: '/whoami/0.jpg',
      alt: 'Ivo von Putzer Reibegg'
    },
    author: 'Ivo von Putzer Reibegg',
    description: '@ivoputzer’s blog about software development, project ideas, real-life stories, events, cryptocurrency and whatever else programming.',
    robots: ['index', 'follow']
  },
  google: {
    analytics: 'UA-156130355-1'
  },
  github: {
    user: 'ivoputzer',
    url: 'https://github.com/ivoputzer'
  },
  twitter: {
    user: 'ivoputzer',
    url: 'https://twitter.com/ivoputzer'
  },
  npm: {
    user: 'ivoputzer',
    url: 'https://www.npmjs.com/~ivoputzer'
  },
  instagram: {
    user: 'ivoputzer',
    url: 'https://www.instagram.com/ivoputzer'
  },
  linkedin: {
    user: 'ivoputzer',
    url: 'https://www.linkedin.com/in/ivoputzer'
  },
  telegram: {
    user: 'ivoputzer',
    url: 'https://t.me/ivoputzer'
  },
  stackoverflow: {
    user: 'ivo',
    url: 'https://stackoverflow.com/u/1086697'
  },
  codepen: {
    user: 'ivoputzer',
    url: 'https://codepen.io/ivoputzer'
  },
  brave: {
    site: 'https://ivoputzer.blog',
    code: 'ivo485',
    referral: 'https://brave.com/ivo485'
  },
  coinbase: {
    referral: 'https://www.coinbase.com/join/reibeg_4'
  }
}
