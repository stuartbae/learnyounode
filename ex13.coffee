http = require 'http'
url  = require 'url'

parsetime = (time) ->
    hour:   time.getHours()
    minute: time.getMinutes()
    second: time.getSeconds()

unixtime = (time) ->
    unixtime: time.getTime()

server = http.createServer (req, res) ->
    res.end('send me a POST\n') if req.method is 'POST'

    reqUrl = url.parse(req.url, true)
    time = new Date(reqUrl.query.iso)
    if reqUrl.pathname is '/api/parsetime'
        result = parsetime(time)
    if reqUrl.pathname is '/api/unixtime'
        result = unixtime(time)

    if result
        res.writeHead 200, { 'content-type' : 'application/json' }
        res.end(JSON.stringify result )
    else
        res.writeHead(404)
        res.end()
server.listen(process.argv[2])

