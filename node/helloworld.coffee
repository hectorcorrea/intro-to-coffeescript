# A very simple web server that only knows how to return "hello world"
http = require "http"
port = 8000
serverUrl = "127.0.0.1"

console.log "Starting web server at #{serverUrl}:#{port}"

server = http.createServer (req, res) ->

  now = new Date()
  console.log "Request received at #{now}"
  
  res.writeHead 200, {'Content-type': 'text/html'}
  res.end "Hello World"

server.listen port, serverUrl

