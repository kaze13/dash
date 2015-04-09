fs = require('fs')
xml2js = require('xml2js')

class DocsetInfo
  fromPlist : (filePath) ->
    infoFileData = null
    try
      infoFileData = fs.readFileSync(filePath)
    catch error
      console.err(error)

    xml2js.parseString(infoFileData, (err, result) ->
      console.log(result)

    )
