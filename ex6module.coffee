fs = require 'fs'
path = require 'path'
module.exports = (dir, ext, callback) ->
    fs.readdir dir, (err, files) ->
        return callback(err) if err
        callback null, files.filter (file) ->
            path.extname(file) is ('.' + ext)
