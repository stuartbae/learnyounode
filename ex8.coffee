http = require 'http'
http.get process.argv[2], (response) ->
    data = ''
    response.setEncoding 'utf8'
    response.on 'data', (stream) ->
        data += stream
    response.on 'end', () ->
        console.log data.length
        console.log data
