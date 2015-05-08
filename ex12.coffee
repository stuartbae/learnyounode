http = require 'http'
map  = require 'through2-map'
server = http.createServer (req, res) ->
    res.end('send me a POST\n') if req.method isnt 'POST'
    req.pipe map (stream) ->
        stream.toString().toUpperCase()
    .pipe res

server.listen(process.argv[2])




