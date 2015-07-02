fs = require('fs-extra-promise')

module.exports = (outputDir, post) ->
  outFile = "#{outputDir}/#{post.permalink}/index.html"
  return fs.outputFile(outFile, post)
