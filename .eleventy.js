module.exports = eleventy => {
  eleventy.addPassthroughCopy('.nojekyll')
  eleventy.addPassthroughCopy('./style.css')
  eleventy.addPassthroughCopy('./img')

  return {
    passthroughFileCopy: true
  }

}
