fs = require('fs-extra-promise')
hb = require('handlebars')

module.exports.single = (outputDir, template, post) ->
  compiled = hb.compile(template)
  outFile = "#{outputDir}/#{post.permalink}/index.html"
  return fs.outputFile(outFile, compiled(post))

module.exports.collection = (outputDir, template, feedFile, posts) ->
  compiled = hb.compile(template)
  outFile = "#{outputDir}/#{feedFile}"
  return fs.outputFile(outFile, compiled(posts))
