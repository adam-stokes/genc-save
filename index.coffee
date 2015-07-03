fs = require('fs-extra-promise')

module.exports.single = (outputDir, template, post) ->
  outFile = "#{outputDir}/#{post.permalink}/index.html"
  return fs.outputFile(outFile, template(post))

module.exports.collection = (outputDir, template, feedFile, posts) ->
  outFile = "#{outputDir}/#{feedFile}"
  return fs.outputFile(outFile, template(posts))
