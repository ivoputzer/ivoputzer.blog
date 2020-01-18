const CleanCSS = require('clean-css')
const ReadingTime = require('eleventy-plugin-reading-time');

module.exports = eleventy => {
  eleventy.addLayoutAlias('page', 'page.njk')
  eleventy.addLayoutAlias('article', 'article.njk')

  eleventy.addPlugin(ReadingTime)
  eleventy.addPassthroughCopy({ '_static/': '/' })
  eleventy.addFilter('mincss', code => new CleanCSS({}).minify(code).styles)
  eleventy.addShortcode('excerpt', excerpt)

  return {
    passthroughFileCopy: true,
    dir: {
      includes: '_includes',
      layouts: '_layouts'
    }
  }
}

function excerpt ({ templateContent }) {
  if (!templateContent) {
    console.warn('Failed to extract excerpt: Document has no property `templateContent`.');
    return
  }

  return templateContent.substring(
    templateContent.indexOf('</h1>') + 5,
    templateContent.indexOf('<hr>')
  ).trim()
}
