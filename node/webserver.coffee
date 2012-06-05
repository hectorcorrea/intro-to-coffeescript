# A very basic web server in CoffeeScript with node.js
#
# Serves any HTML/JS/CSS/TXT/JPG if found on the current folder.
#
# Original JavaScript code stolen from: 
# Node.js for Front-End Developers by Garann Means (p. 9-10) 

http = require "http" 
path = require "path"  
fs = require "fs"

port = 8000
serverUrl = "127.0.0.1"

processRequest = (req, res) ->

  now = new Date()

  filename = if req.url is "/" then "/index.html" else req.url
  ext = path.extname filename
  localPath = __dirname
  validExtensions = {
    ".html" : "text/html",      
    ".js": "application/javascript", 
    ".css": "text/css",
    ".txt": "text/plain",
    ".jpg": "image/jpeg",
    ".gif": "image/gif",
    ".png": "image/png"
  }
  isValidExt = validExtensions[ext]

  if isValidExt
    localPath += filename
    path.exists localPath, (exists) ->
      if exists
        console.log "Serving file: #{localPath}"
        getFile localPath, res, ext
      else
        console.log "File not found: #{localPath}"
        res.writeHead 404
        res.end()
  else
    console.log "Invalid file extension detected: #{ext}"

getFile = (localPath, res, mimeType) -> 
  fs.readFile localPath, (err, contents) ->
    if !err
      res.setHeader "Content-Length", contents.length
      res.setHeader "Content-Type", mimeType
      res.statusCode = 200
      res.end contents
    else
      res.writeHead 500
      res.end()

console.log "Starting web server at #{serverUrl}:#{port}"
http.createServer(processRequest).listen port, serverUrl

