Promise = require('bluebird')
fs = require('fs-extra-promise')

module.exports = (outputDir, posts) ->
  for post in posts
    outFile = "#{outputDir}/#{post.permalink}/index.html"
    fs.outputFileSync(outFile, post)
  return Promise.all(posts)
