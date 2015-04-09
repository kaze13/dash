class Extractor
  constructor: (parent) ->

  extract:(filePath, destination, root) ->

  error:(filePath, message) ->

  completed:(filePath) ->

  progress:(filePath, extracted, total) ->



class ExtractInfo
  extractor:null
  archiveHandle:null
  filePath:null
  totalBytes:null
  extractedBytes:null
