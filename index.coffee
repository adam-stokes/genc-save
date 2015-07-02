Promise = require('bluebird')
fs = require('fs-extra-promise')

module.exports.singles = (outputDir, posts) ->
  for post in posts
    outFile = "#{outputDir}/#{post.permalink}/index.html"
    fs.outputFileSync(outFile, post)
  return Promise.all(posts)

module.exports.feeds = (outputDir, feedFile, posts) ->
  outFile = "#{outputDir}/#{feedFile}"
  fs.outputFileSync(outFile, posts)
  return Promise.all(posts)
