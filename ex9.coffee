http = require 'http'
urls = process.argv[2..4]
contents = []
count = 0
urls.map (url) ->
    http.get url, (res) ->
        res.setEncoding 'utf8'
        content = ''
        res.on 'data', (stream) ->
            content += stream
        res.on 'end', () ->
            # console.log content
            contents[urls.indexOf url] = content
            count++
            # console.log count
            if count is 3
                # console.log contents.length
                console.log content for content in contents

