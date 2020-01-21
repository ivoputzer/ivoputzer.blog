const { URL } = require('url')

const CleanCSS = require('clean-css')
const readingTime = require('eleventy-plugin-reading-time');
const moment = require('moment')

module.exports = eleventy => {
  eleventy.addPlugin(readingTime)

  eleventy.addLayoutAlias('page', 'page.njk')
  eleventy.addLayoutAlias('article', 'article.njk')

  eleventy.addPassthroughCopy({ '_static/': '/' })


  eleventy.addNunjucksShortcode('excerpt', (data) => {
    const [excerpt, _] = data.split('<hr>')
    return excerpt
  })

  eleventy.addNunjucksShortcode('body', (data) => {
    const [_, body] = data.split('<hr>')
    return body
  })

  eleventy.addFilter('date', (date, format) => {
    return moment(date).format(format)
  })

  eleventy.addNunjucksFilter('mincss', (code) => new CleanCSS({}).minify(code).styles)
  eleventy.addNunjucksFilter('absoluteUrl', (url, base) => {
    try {
      const absolute = new URL(url, base)
      return absolute.toString()
    } catch (e) {
      console.log('Trying to convert %o to be an absolute url with base %o and failed, returning: %o (invalid url)', url, base, url)
      return url
    }
  })

  return {
    passthroughFileCopy: true,
    dir: {
      includes: '_includes',
      layouts: '_layouts'
    }
  }
}

function excerptFrom ({ templateContent }) {
  if (!templateContent) {
    console.warn('Failed to extract excerpt: Document has no property `templateContent`.');
    return
  }

  return templateContent.substring(0, templateContent.indexOf('<hr>'))
}
