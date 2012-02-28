# source: Getting started with node.js and CoffeeScript
# http://geekiriki.blogspot.com/2010/07/getting-started-with-nodejs-and.html
#
server = require('http').createServer (request, response) ->
	response.writeHead 200, {'Content-Type': 'text/plain'}
	response.end 'Hello World from CoffeeScript (and node.js)'

port = 8124
server.listen port
console.log 'Server running at http://0.0.0.0:' + port