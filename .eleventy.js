module.exports = eleventy => {
  eleventy.addLayoutAlias('page', 'page.njk')
  eleventy.addLayoutAlias('article', 'article.njk')

  eleventy.addPassthroughCopy('src/data')

  return {
    passthroughFileCopy: true,
    dir: {
      input: 'src',
      output: 'web',
      includes: '_includes',
      layouts: '_layouts'
    }
  }
}
